const crudOperations = (Model) => {
    return {
        findAll: args =>
            Model
                .findAll({ where: args })
                .then((all) => {
                    const newAll = all.map(one => one.dataValues);
                    return newAll;
                }),

        create: args =>
            Model
                .create(args)
                .then(({ dataValues }) => dataValues),

        edit: ({ id, ...columnsToEdit }) =>
            Model
                .findOne({ where: { id } })
                .then(({ dataValues }) =>
                    Model
                        .update(columnsToEdit, { where: { id } })
                        .then(() => ({ ...dataValues, ...columnsToEdit }))),

        remove: ({ id }) =>
            Model
                .findOne({ where: { id } })
                .then(({ dataValues }) =>
                    Model
                        .destroy({ where: { id } })
                        .then(() => dataValues)),
    };
};

module.exports = crudOperations;
