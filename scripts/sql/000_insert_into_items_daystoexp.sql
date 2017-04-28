UPDATE items
/* Age is a psql function that subtracts from the current date and returns that difference as an interval (10 days, 1 mon 3 days) */
/* The age function returns a negative number when calculating against a future date. Therefore, I multiplied by -1 to make these numbers positive.*/
SET days_to_exp = age(exp_date)*-1;
