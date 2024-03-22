import React from 'react';
import NavigationBar from './components/NavigationBar';
import ImageUploadForm from './components/ImageUploadForm';
import DisplaySection from './components/DisplaySection';

const App = () => {
  return (
    <div>
      <NavigationBar />
      <ImageUploadForm />
      <DisplaySection />
    </div>
  );
};

export default App;
