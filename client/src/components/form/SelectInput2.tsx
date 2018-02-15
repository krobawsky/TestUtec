import * as React from 'react';

import { IError, IInputChangeHandler, ISelectOption } from '../../types';

import FieldFeedbackPanel from './FieldFeedbackPanel';

export default ({object, error, name, label, onChange}: { object: any, error: IError, name: string, label: string, onChange: IInputChangeHandler }) => {

  const handleOnChange = value => {
    console.log('select on change', value);
    onChange(name, value, null);
  };

  const selectedValue = object[name] || '';
  const fieldError = error && error.fieldErrors[name];
  const valid = !fieldError && selectedValue !== '';

  const cssGroup = `form-group ${fieldError ? 'has-error' : ''}`;

  return (
    <div className={cssGroup}>
      <label className='col-sm-2 control-label'>{label}</label>

      <div className='col-sm-10'>
        <select className='form-control' onChange={handleOnChange}>
          <option value='' disabled selected>Seleccione los test</option>
          <option key='1' value='1'>Test 1</option>
          <option key='2' value='2'>Test 2</option>
          <option key='3' value='3'>Test 3</option>
        </select>
        <FieldFeedbackPanel valid={valid} fieldError={fieldError} />
      </div>
    </div>
  );
};
