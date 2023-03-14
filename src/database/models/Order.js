module.exports = (sequelize, dataTypes) => {
  let alias = 'Order';

  let cols = {
    id: {
      type: dataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    userId: {
      type: dataTypes.INTEGER,
    },
    total: {
      type: dataTypes.FLOAT,
    },
    productId: {
      type: dataTypes.INTEGER,
    },
  };

  let config = {
    timestamps: true,
    paranoid: true,
    createdAt: 'create_time',
    updatedAt: 'update_time',
    deletedAt: 'delete_time',
  };

  const Order = sequelize.define(alias, cols, config);
  Order.associate = (models) => {
    Order.hasMany(models.Product, {
      foreignKey: 'productId',
    });
  };
  Order.associate = (models) => {
    Order.belongsTo(models.User, {
      foreignKey: 'userId',
    });
  };
  return Order;
};
