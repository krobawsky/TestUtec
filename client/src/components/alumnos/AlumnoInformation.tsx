import * as React from 'react';

import { Link , browserHistory } from 'react-router';
import { IAlumno } from '../../types';

export default ({alumno}: { alumno: IAlumno }) => (
  <section>
     <div className='center-align'>
     <div><a onClick={browserHistory.goBack} className='btn-floating btn-small waves-effect waves-light blue'><i className='material-icons'>arrow_back</i></a></div><br/>
      <img className='circle responsive-img' src='https://www.almabay.com/common/marvel/images/default-male-avatar.png'/>
      <div className='divider'></div>
      <h4 className='center-align cyan-text text-darken-2'>{alumno.firstName} {alumno.lastName}</h4>
      <div className='divider'></div>
      <br/>
      <h5 className='cyan-text'>Edad: <span className='cyan-text text-darken-2'>{alumno.edad}</span></h5>
      <h5 className='cyan-text'>Carrera: <span className='cyan-text text-darken-2'>{alumno.carrera}</span></h5>
      <h5 className='cyan-text'>Fec. Ingreso: <span className='cyan-text text-darken-2'>{alumno.ingreso}</span></h5>
    </div>
  </section>
);
