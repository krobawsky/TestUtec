import * as React from 'react';

import { Link } from 'react-router';
import { IGrupo } from '../../types';

export default ({grupo}: { grupo: IGrupo }) => (
  <section>
     <div className='center-align'>
     <div><a href='/grupo/list' className='waves-effect waves-teal btn-flat'><i className='material-icons'>arrow_back</i></a></div>
      <img className='circle responsive-img' src='https://www.almabay.com/common/marvel/images/default-male-avatar.png'/>
      <div className='divider'></div>
      <h4 className='center-align cyan-text text-darken-2'>{grupo.name}</h4>
      <div className='divider'></div>
      <br/>
    </div>
  </section>
);
