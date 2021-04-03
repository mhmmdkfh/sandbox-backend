exports.success = (response) => {
    const { msg , data } = response;
    return {
        succcess: true,
        message: msg ? msg : "successfull",
        data: data ? data : [],
    };
};

exports.fail = (response) => {
    const { msg , data } = response;
    return {
        succcess: false,
        message: msg ? msg : "failed",
        data: data ? data : [],
    };
};

