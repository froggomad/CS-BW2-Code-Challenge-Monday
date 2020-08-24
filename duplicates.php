class Solution {
    /**
    * @param Integer[] $nums
    * @return Boolean
    */
    function containsDuplicate($nums) {
        $set = array_unique($nums);
        return count($set) < count($nums);
    }
}