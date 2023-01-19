import { initializeApp } from "firebase/app";
import { getFirestore } from 'firebase/firestore';

const firebaseConfig = {
  apiKey: "AIzaSyCgCIQXUftTcQmJsVDVaty-YUZmExR-n18",
  authDomain: "todo-react-2e5e1.firebaseapp.com",
  projectId: "todo-react-2e5e1",
  storageBucket: "todo-react-2e5e1.appspot.com",
  messagingSenderId: "272029421357",
  appId: "1:272029421357:web:388027eeae5e58ea11cda4",
  measurementId: "G-VJ8EK76T8Z",
};

// Initialize Firebase
const firebaseApp = initializeApp(firebaseConfig);
const db = getFirestore(firebaseApp);

export { db };