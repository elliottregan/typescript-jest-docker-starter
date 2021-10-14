module.exports = {
  env: {
    jest: true,
  },
  extends: [
    '../.eslintrc.cjs',
  ],
  parserOptions: {
    project: './tsconfig.spec.json',
  },
};
