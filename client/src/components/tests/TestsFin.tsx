import * as React from 'react';

import { IRouter, Link } from 'react-router';
import { url } from '../../util';

import { ITest } from '../../types';

interface ITetsPageState {
  tests: ITest[];
}

const renderRow = (test: ITest) => (
  <tr key={test.id}>
    <td>{test.name}</td>
    <td>{test.tipo}</td>
    <td>{test.preguntas.length}</td>
    <td>
      <a className='lighten-2' href={`/tests/${test.id}`}>
        Empezar prueba
      </a>
    </td>
  </tr>
);


export default class TestsPage extends React.Component<void, ITetsPageState> {

  constructor(props) {
    super(props);

    this.state = {
      tests: [],
    };
  }

  componentDidMount() {
    const requestUrl = url('api/tests');

    fetch(requestUrl)
      .then(response => response.json())
      .then(tests => { console.log('tests', tests); this.setState({ tests }); });
  }

  render() {
    const { tests } = this.state;

    if (!tests) {
      return <h2>Tests</h2>;
    }

    return (
      <span>
        <div className='center-align'>
          <br/><br/><br/><br/><br/>
          <div className='bz center-align'>
            <img class='materialboxed' width='450' src='https://www.utec.edu.pe/sites/default/files//logo_0.png'/>
          </div>
          <br/>
          <div class='col s12'>
            <h1>Test finalizado!</h1>
            <span className='dx'>Usted resolvió la prubea satisfactoriamente, gracias por su colaboración.</span>
            <br/>
          </div>
          <br/>
          <div class='row'>
            <div class='col s6'>
              <a className='waves-effect waves-light btn left'>Regresar al Inicio</a>
              <a className='waves-effect waves-light btn right'>Cerar Sesión</a>
            </div>
          </div>
        <div className='center-align'>
          </div>
        </div>
      </span>
    );
  }
}
