import React from 'react';
import { Admin, Resource } from 'react-admin';
import jsonServerProvider from 'ra-data-json-server';
import FunctionsIcon from '@material-ui/icons/Code';

const dataProvider = jsonServerProvider('http://jsonplaceholder.typicode.com');

const App = () => (
    <Admin dataProvider={dataProvider}>
        <Resource name="functions" icon={FunctionsIcon} />
    </Admin>
);

export default App;
