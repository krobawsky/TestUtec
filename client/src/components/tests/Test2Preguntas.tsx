import * as React from 'react';

import { Link } from 'react-router';
import { url, submitForm } from '../../util';

import { IError, IRouterContext, ITest, IPregunta, IPreguntaTipo, IAlternativa } from '../../types';
import RadioInput2 from '../form/RadioInput2';

interface IPregProps {
  params?: IPregunta[];
  resultsTotalProps?: {};
  resultsVProps?: {};
  resultsXProps?: {};
  resultsYProps?: {};
  resultsZProps?: {};
  results1Props?: {};
  results2Props?: {};
  results3Props?: {};
  results4Props?: {};
  results5Props?: {};
  results6AProps?: {};
  results6bProps?: {};
  results7Props?: {};
  results8AProps?: {};
  results8bProps?: {};
  resultsSProps?: {};
  resultsCProps?: {};
  resultsCCrops?: {};
  resultsAProps?: {};
  resultsHProps?: {};
  resultsNProps?: {};
  resultsDProps?: {};
  resultsBProps?: {};
  resultsTProps?: {};
  resultsSSProps?: {};
  resultsCCProps?: {};
  resultsPPProps?: {};
}

interface IResultState {
  editableAlter?: IAlternativa[];
  resultsTotal?: {};
  resultsV?: {};
  resultsX?: {};
  resultsY?: {};
  resultsZ?: {};
  results1?: {};
  results2?: {};
  results3?: {};
  results4?: {};
  results5?: {};
  results6A?: {};
  results6b?: {};
  results7?: {};
  results8A?: {};
  results8b?: {};
  resultsS?: {};
  resultsC?: {};
  resultsP?: {};
  resultsA?: {};
  resultsH?: {};
  resultsN?: {};
  resultsD?: {};
  resultsB?: {};
  resultsT?: {};
  resultsSS?: {};
  resultsCC?: {};
  resultsPP?: {};
  error?: IError;
  progress?: string;
}

interface IResultadoRequest {
  id?: number;
  test?: string;
  descripcion?: string;
  date?: string;
}

interface IValoresRequest {
  tipo?: string;
  value?: number;
  descripcion?: string;
}

export default class Pregunta extends React.Component<IPregProps, IResultState> {

  context: IRouterContext;

  static contextTypes = {
    router: React.PropTypes.object.isRequired
  };

  constructor(props) {
    super(props);

    this.state = {
      resultsTotal: Object.assign({}, props.resultsTotalProps),
      resultsV: Object.assign({}, props.resultsVProps),
      resultsX: Object.assign({}, props.resultsXProps),
      resultsY: Object.assign({}, props.resultsYProps),
      resultsZ: Object.assign({}, props.resultsZProps),
      results1: Object.assign({}, props.results1Props),
      results2: Object.assign({}, props.results2Props),
      results3: Object.assign({}, props.results3Props),
      results4: Object.assign({}, props.results4Props),
      results5: Object.assign({}, props.results5Props),
      results6A: Object.assign({}, props.results6AProps),
      results6b: Object.assign({}, props.results6bProps),
      results7: Object.assign({}, props.results7Props),
      results8A: Object.assign({}, props.results8AProps),
      results8b: Object.assign({}, props.results8bProps),
      resultsS: Object.assign({}, props.resultsSProps),
      resultsC: Object.assign({}, props.resultsCProps),
      resultsP: Object.assign({}, props.resultsCCrops),
      resultsA: Object.assign({}, props.resultsAProps),
      resultsH: Object.assign({}, props.resultsHProps),
      resultsN: Object.assign({}, props.resultsNProps),
      resultsD: Object.assign({}, props.resultsDProps),
      resultsB: Object.assign({}, props.resultsBProps),
      resultsT: Object.assign({}, props.resultsTProps),
      resultsSS: Object.assign({}, props.resultsSSProps),
      resultsCC: Object.assign({}, props.resultsCCProps),
      resultsPP: Object.assign({}, props.resultsPPProps),
      editableAlter: Object.assign({}, props.params ),
      progress: 'progress scale-transition scale-out'
    };

    this.onSubmit = this.onSubmit.bind(this);
    this.onInputChange = this.onInputChange.bind(this);
  }

  onInputChange(name: any, pos: string, question: string, value: string) {
    const { editableAlter, resultsTotal, resultsV, resultsX, resultsY, resultsZ, results1, results2, results3, results4, results5, results6A, results6b, results7, results8A,
      results8b, resultsS, resultsC, resultsP, resultsA, resultsH, resultsN, resultsD, resultsB, resultsT, resultsSS, resultsCC, resultsPP  } = this.state;
    // console.log( name );
    for (const propiedad in name) {
      if (name.hasOwnProperty(propiedad)) {
        // console.log('En la propiedad ' + propiedad + ' hay este valor: ' + JSON.stringify(name[propiedad].name));
        const tipo = JSON.parse(JSON.stringify(name[propiedad].name));
        console.log( tipo );

        const tipos = ['Esquizoide', 'Evitativo', 'Dependiente', 'Histriónico', 'Narcisita'];
        for (let i = 0; i < tipos.length; i++) {
          // console.log( tipos[i] );
          if ( tipo === 'Esquizoide' ) {
            const poss = [2, 13];
            for (let i = 0; i < poss.length; i++) {
              if (pos === 2) {
                const val = value * 3;
                const agregar = Object.assign({}, results1, {[question]: val });
                this.setState({ results1: agregar });
              }
            }
            
          } else if ( tipo === 'Evitativo' ) {
            console.log('check');
          } else if ( tipo === 'Dependiente' ) {
            console.log('check');
          }
        }
      }
    }
    console.log( results1 );
    const agregarTotal = Object.assign({}, resultsTotal, {[question]: +value });
    this.setState({ resultsTotal: agregarTotal });
  }

  onSubmit(event) {
    event.preventDefault();

    const { editableAlter, resultsTotal, resultsV, resultsX, resultsY, resultsZ, results1, results2, results3, results4, results5, results6A, results6b, results7, results8A,
      results8b, resultsS, resultsC, resultsP, resultsA, resultsH, resultsN, resultsD, resultsB, resultsT, resultsSS, resultsCC, resultsPP  } = this.state;

    if ( Object.getOwnPropertyNames(resultsTotal).sort().length < Object.getOwnPropertyNames(editableAlter).sort().length ) {
      alert( 'Debe contestar todas las preguntas!' );
    }
  }

  test  = () => {
    this.setState ({
      progress: 'progress scale-transition scale-in'
    });
  }

  render() {
    let params = this.props.params;
    const { editableAlter, error } = this.state;
    params.sort((a, b) => Number(a.posicion) - Number(b.posicion));

    return (
       <div>
        <div className='col-sm-12'>
            <form onSubmit={this.onSubmit}>
              <ul className='collection with-header'>
                <li className='collection-header'><h4 className='cyan-text text-darken-3'>Preguntas</h4></li>
                {params.map(pregunta => (
                  <li className='collection-item' key={pregunta.id}>
                    <div>
                      <br/>
                      <span className='title cyan-text text-darken-4'>{pregunta.posicion})  {pregunta.pregunta}</span>
                      <RadioInput2 object={editableAlter} error={error} name={pregunta.tipos} pos={pregunta.posicion} question={pregunta.pregunta} options={pregunta.alternativas} onChange={this.onInputChange} />
                      {pregunta.tipos.map(tipo => (
                        <li className='collection-item' key={tipo.id}>{tipo.name}</li>
                      ))}
                      <br/>
                    </div>
                  </li>
                ))}
                <li className='collection-item center-align'>
                  <div>
                    <br/>
                    <button className='btn waves-effect waves-teal btn-large' type='submit'>Finalizar test!<i className='material-icons right'>send</i></button>
                    <div className={this.state.progress}>
                      <div className='indeterminate'></div>
                    </div>
                  </div>
                </li>
              </ul>
            </form>
            <br/><br/><br/>
        </div>
      </div>
    );
  }
}