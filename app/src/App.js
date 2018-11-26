import React from 'react';
import { Admin, Resource } from 'react-admin';
import jsonServerProvider from 'ra-data-json-server';
import FunctionsIcon from '@material-ui/icons/Code';
{/*
  import { Admin, Resource, EditGuesser } from 'react-admin';
  import { PostList } from './posts';
  import { UserList } from './users';
*/}
{/*
  import PostIcon from '@material-ui/icons/Code';
  import UserIcon from '@material-ui/icons/Group';
*/}

{/*
  Zeta API Custom Data Provider
*/}
const dataProvider = jsonServerProvider('http://jsonplaceholder.typicode.com');

{/*
  Testing data provider
  Example: const dataProvider = (type, resource, params) => new Promise();
*/}

const App = () => (
    <Admin dataProvider={dataProvider}>
        <Resource name="functions" icon={FunctionsIcon} />
{/*
  <Resource name="functions" list={PostList} icon={PostIcon} />
  <Resource name="users" list={UserList} icon={UserIcon} />
*/}
    </Admin>
);

export default App;
