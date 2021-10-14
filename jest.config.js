export default {
  rootDir: './',
  roots: [
    '<rootDir>/src',
    '<rootDir>/spec',
  ],
  testMatch: [
    '**/?(*.)+(spec).+(ts|tsx|js)',
  ],
  transform: {
    '^.+\\.(ts|tsx)$': 'ts-jest',
  },
};
