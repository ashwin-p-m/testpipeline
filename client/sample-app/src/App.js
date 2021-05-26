import React from 'react';
import Button from '@material-ui/core/Button';
import axios from 'axios';

function App() {

  const [ response, setResponse ] = React.useState('');

  const onClickHandle = () => {

    axios.get('/api')
      .then(res => {
        setResponse(`Response from Server: ${ res.data }`);
      })
      .catch(err => {
        setResponse('No response from server: either not running or not discoverable');
      });

  };

  return (
    <div style={ { margin: '100px' } }>
      <Button
        color="primary"
        variant="contained"
        onClick={ onClickHandle }
      >
        Click Me
      </Button>
      <p style={ {
        margin: '40px',
        fontSize: '40px'
      } }>{ response }</p>
    </div>
  );
}

export default App;
