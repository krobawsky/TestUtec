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

  onInputChange(name: any, pos: number, question: string, value: any) {
    const { editableAlter, resultsTotal, resultsV, resultsX, resultsY, resultsZ, results1, results2, results3, results4, results5, results6A, results6b, results7, results8A, results8b, resultsS, resultsC, resultsP, resultsA, resultsH, resultsN, resultsD, resultsB, resultsT, resultsSS, resultsCC, resultsPP  } = this.state;
    // console.log( name );
    for (const propiedad in name) {
      if (name.hasOwnProperty(propiedad)) {
        // console.log('En la propiedad ' + propiedad + ' hay este valor: ' + JSON.stringify(name[propiedad].name));
        const tipo = JSON.parse(JSON.stringify(name[propiedad].name));
        console.log( tipo );

        const tipos = ['Esquizoide', 'Evitativo', 'Dependiente', 'Histriónico', 'Narcisita'];
        if ( tipo === tipos[0] ) {
          const poss3 = [2, 13, 19, 34, 81, 143, 161];
          const poss2 = [10, 33, 47, 83, 106, 124, 150, 20, 48];
          const poss1 = [16, 22, 25, 46, 53, 85, 108, 141, 142, 159, 160, 14, 28, 60, 78, 95, 103, 111, 125];
          for (let e of poss3) {
            if (pos === e) {
              const val = value * 3;
              const agregar = Object.assign({}, results1, {[question]: val });
              this.setState({ results1: agregar });
            }
          }
          for (let e of poss2) {
            if (pos === e) {
              const val = value * 2;
              const agregar = Object.assign({}, results1, {[question]: val });
              this.setState({ results1: agregar });
            }
          }
          for (let e of poss1) {
            if (pos === e) {
              const val = value * 1;
              const agregar = Object.assign({}, results1, {[question]: val });
              this.setState({ results1: agregar });
            }
          }
        }
        if ( tipo === tipos[1]  ) {
          const poss3 = [3, 8, 49, 63, 77, 120, 141, 158];
          const poss2 = [19, 23, 25, 27, 32, 47, 56, 57, 83, 102, 110, 115, 118, 150, 150, 171];
          const poss1 = [2, 34, 45, 81, 85, 106, 109, 113, 133, 139, 147, 160, 14, 21, 28, 125, 163];
          for (let e of poss3) {
            if (pos === e) {
              const val = value * 3;
              const agregar = Object.assign({}, results2, {[question]: val });
              this.setState({ results2: agregar });
            }
          }
          for (let e of poss2) {
            if (pos === e) {
              const val = value * 2;
              const agregar = Object.assign({}, results2, {[question]: val });
              this.setState({ results2: agregar });
            }
          }
          for (let e of poss1) {
            if (pos === e) {
              const val = value * 1;
              const agregar = Object.assign({}, results2, {[question]: val });
              this.setState({ results2: agregar });
            }
          }
        }
        if ( tipo === tipos[2] ) {
          const poss3 = [10, 31, 42, 78, 108, 133, 145, 159, 173];
          const poss2 = [34, 57, 60, 77, 81, 97, 4];
          const poss1 = [49, 54, 75, 110, 125, 149, 168, 7, 12, 21, 28, 40, 41, 43, 74, 91, 92, 101, 147, 162, 163];
          for (let e of poss3) {
            if (pos === e) {
              const val = value * 3;
              const agregar = Object.assign({}, results3, {[question]: val });
              this.setState({ results3: agregar });
            }
          }
          for (let e of poss2) {
            if (pos === e) {
              const val = value * 2;
              const agregar = Object.assign({}, results3, {[question]: val });
              this.setState({ results3: agregar });
            }
          }
          for (let e of poss1) {
            if (pos === e) {
              const val = value * 1;
              const agregar = Object.assign({}, results3, {[question]: val });
              this.setState({ results3: agregar });
            }
          }
        }
        if ( tipo === tipos[3] ) {
          const poss3 = [14, 20, 28, 48, 60, 86, 111, 125, 137, 170];
          const poss2 = [9, 42, 43, 66, 103, 133, 166, 51, 158];
          const poss1 = [7, 37, 40, 41, 56, 89, 91, 95, 128, 130, 142, 162, 171, 172, 173, 3, 19, 39, 51, 77, 126];
          for (let e of poss3) {
            if (pos === e) {
              const val = value * 3;
              const agregar = Object.assign({}, results4, {[question]: val });
              this.setState({ results4: agregar });
            }
          }
          for (let e of poss2) {
            if (pos === e) {
              const val = value * 2;
              const agregar = Object.assign({}, results4, {[question]: val });
              this.setState({ results4: agregar });
            }
          }
          for (let e of poss1) {
            if (pos === e) {
              const val = value * 1;
              const agregar = Object.assign({}, results4, {[question]: val });
              this.setState({ results4: agregar });
            }
          }
        }
        if ( tipo === tipos[4] ) {
          const poss3 = [1, 6, 15, 37, 89, 91, 129, 131, 142, 166];
          const poss2 = [4, 14, 16, 41, 86, 103, 111, 125, 137, 165, 170, 171, 172, 42, 149, 158];
          const poss1 = [2, 12, 22, 28, 32, 43, 55, 60, 80, 85, 126, 1329, 130, 134, 135, 143, 146, 163, 81, 31, 45, 51, 78, 106];
          for (let e of poss3) {
            if (pos === e) {
              const val = value * 3;
              const agregar = Object.assign({}, results5, {[question]: val });
              this.setState({ results5: agregar });
            }
          }
          for (let e of poss2) {
            if (pos === e) {
              const val = value * 2;
              const agregar = Object.assign({}, results5, {[question]: val });
              this.setState({ results5: agregar });
            }
          }
          for (let e of poss1) {
            if (pos === e) {
              const val = value * 1;
              const agregar = Object.assign({}, results5, {[question]: val });
              this.setState({ results5: agregar });
            }
          }
        }
      }
    }
    const agregarTotal = Object.assign({}, resultsTotal, {[question]: +value });
    this.setState({ resultsTotal: agregarTotal });
  }

  onSubmit(event) {
    event.preventDefault();

    const { editableAlter, resultsTotal, resultsV, resultsX, resultsY, resultsZ, results1, results2, results3, results4, results5, results6A, results6b, results7, results8A,
      results8b, resultsS, resultsC, resultsP, resultsA, resultsH, resultsN, resultsD, resultsB, resultsT, resultsSS, resultsCC, resultsPP  } = this.state;

    if ( Object.getOwnPropertyNames(resultsTotal).sort().length < Object.getOwnPropertyNames(editableAlter).sort().length ) {
      // alert( 'Debe contestar todas las preguntas!' );
      console.log( results1 );
      console.log( results2 );
      console.log( results3 );
      const total1 = Object.values(results1).reduce((a, b) => a + b); // Total
      const total2 = Object.values(results2).reduce((a, b) => a + b); // Total
      const total3 = Object.values(results3).reduce((a, b) => a + b); // Total
      console.log( 'Total 1: ' + total1 );
      console.log( 'Total 2: ' + total2 );
      console.log( 'Total 3: ' + total3 );

    } else {
      this.test();
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