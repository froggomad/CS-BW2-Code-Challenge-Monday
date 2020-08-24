/**
 * @param {number[]} nums
 * @return {boolean}
 */
var containsDuplicate = function(nums) {
    var numSet = new Set(nums)    
    return numSet.size < nums.length
};