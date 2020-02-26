compute_NPV = function (value, time, discount)
{
    result = value/(1 + discount)^time
    return(result)
}
