import * as React from 'react';

export default () => (
<div>
<a className='btn-floating btn-large blue button-collapse' data-activates='slide-out'>
<i className='material-icons'>menu</i>
</a>
<ul id='slide-out' className='side-nav'>
<li><div className='user-view'>
<div className='background'>
</div>
<a href='#!user'><img src='/'/></a>
<a href='#!name'><span className='black-text name'>Nombre psicologo</span></a>
<a href='#!email'><span className='black-text email'>correo@gmail.com</span></a>
</div></li>
<li><a href='/' title='Enviar'><i className='material-icons'>send</i>Enviar</a></li>
<li><a href='/grupos' title='Grupos'><i className='material-icons'>group_add</i>Añadir grupos</a></li>
<li><a className='subheader'>Resultados</a></li>
<li><div className='divider'></div></li>
<li><a href='/alumnos/list' title='Alumnos'><i className='material-icons'>person</i>Alumnos</a></li>
<li><a href='/grupo/list' title='Grupos'><i className='material-icons'>group</i>Grupos</a></li>
</ul>
<br/>
    <div className='row'>
        <div className='col s12 m6 offset-m3'>
          <div className='card blue-grey darken-1'>
            <div className='card-content white-text'>
              <span className='card-title'>Enviar Test</span>
                  <div className='row'>
                  <form className='col s12'>
                    <div className='row'>
                      <div className='col s12'>
                        Para:
                        <div className='input-field col12'>
                        <input id='email' type='email' className='validate'/>
                        <label htmlFor='email' data-error='wrong' data-success='right'>Ingrese correo del alumno </label>
                         </div>
                      </div>
                   </div>
                  <div className='row'>
                    <div className='col s12'> Test:
                      <div className='row'>
                        <div className='col s12'>
                        <div className='input-field col s12'>
                          <select multiple>
                          <option value='' disabled selected>Seleccione los test</option>
                          <option value='1'>Test 1</option>
                          <option value='2'>Test 2</option>
                          <option value='3'>Test 3</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div className='row'>
                      <div className='col s12'>
                        Asunto:
                        <div className='input-field inline'>
                        <input id='asunto' type='text' />
                        <label htmlFor='asunto' data-error='wrong' data-success='right'>Asunto</label>
                         </div>
                      </div>
                   </div>
                  </form>
            </div>
        <div className='right'>
        <button className='btn waves-effect waves-light' type='submit' name='action'>Enviar
        <i className='material-icons right'>send</i>
        </button>
        </div>
        <br/>
            </div>
          </div>
        </div>
     </div>
</div>
);

