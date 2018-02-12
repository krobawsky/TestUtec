import * as React from 'react';

import { Link } from 'react-router';
import { IAlumno, IResultado } from '../../types';

const VisitsTable1 = ({alumnoId, resultado}: { alumnoId: number, resultado: IResultado }) => (
  <table className='table-condensed'>
    <thead>
      <tr>
        <th>Test</th>
      </tr>
    </thead>
  </table>
);

export default ({alumno}: { alumno: IAlumno }) => (

  <section>
    <h2>Seleccione el Test a evaluar...</h2>
    <table className='table table-striped'>
          <thead>
            <tr>
              <td>Nombre</td>
              <td>Descripción</td>
            </tr>
          </thead>
          <tbody>
            {alumno.resultados.map(resultado => (
              <tr key={resultado.id}>
                <td> <h5>{resultado.test} </h5></td><td> { resultado.descripcion } </td>
                <td>  <a href={`/student/${alumno.id}/test/${resultado.id}`} className='btn-floating btn-small waves-effect waves-light yellow'><i className='material-icons'>edit</i></a></td>
              </tr>
            ))}
          </tbody>
        </table>
  </section>
);
