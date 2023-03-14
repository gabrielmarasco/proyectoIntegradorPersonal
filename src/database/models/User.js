module.exports = (sequelize, dataTypes) => {
  let alias = 'User';
  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: dataTypes.STRING,
    },
    lastName: {
      type: dataTypes.STRING,
    },
    email: {
      type: dataTypes.STRING,
    },
    password: {
      type: dataTypes.STRING,
    },
    adress: {
      type: dataTypes.STRING,
    },
    img: {
      type: dataTypes.STRING,
    },
    type: {
      type: dataTypes.STRING,
    },
  };
  let config = {
    timestamps: true,
    paranoid: true,
    createdAt: 'create_time',
    updatedAt: 'update_time',
    deletedAt: 'delete_time',
  };
  const User = sequelize.define(alias, cols, config);

  return User;
};
