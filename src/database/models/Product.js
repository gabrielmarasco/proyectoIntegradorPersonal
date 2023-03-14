module.exports = (sequelize, dataTypes) => {
  let alias = 'Product';

  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    brand: {
      type: dataTypes.STRING,
    },
    model: {
      type: dataTypes.STRING,
    },
    year: {
      type: dataTypes.INTEGER,
    },
    category: {
      type: dataTypes.STRING,
    },
    description: {
      type: dataTypes.STRING,
    },
    price: {
      type: dataTypes.INTEGER,
    },
    imgProduct: {
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

  const Product = sequelize.define(alias, cols, config);
  return Product;
};
