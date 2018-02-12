import * as React from 'react';

import { Link } from 'react-router';
import { url, submitForm } from '../../util';

import TestInformation from './TestInformation';
import Test2Preguntas from './Test2Preguntas';

// import '../../../public/js/materialize.js';
// import '../../../public/js/materialize.min.js';

import RadioInput from '../form/RadioInput';
import { IError, IRouterContext, ITest, IPregunta, IAlternativa } from '../../types';

interface ITestPageProps {
  params?: { testId?: string };
}

interface ITestPageState {
  test?: ITest;
}

export default class TestPage extends React.Component<ITestPageProps, ITestPageState> {

  constructor() {
    super();

    this.state = { };
  }

  componentDidMount() {
    const requestUrl = url('api/tests/millon');

    fetch(requestUrl)
        .then(response => response.json())
        .then(test => { console.log('test', test); this.setState({ test }); });
  }

  onChange(value) {
    console.log(value);
  }

  comparar( a, b ) { return a - b; }

  render() {
    const { test } = this.state;

    if (!test) {
      return <h2>No test loaded</h2>;
    }

    return (
      <span>
        <TestInformation test={test} />
        <Test2Preguntas params={test.preguntas}/>
      </span>
    );
  }
}