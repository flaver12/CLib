#include "macros.hpp"
/*
    Community Lib - CLib

    Author: joko // Jonas

    Description:
    Get a Value from the Hashset

    Parameter(s):
    0: HashSet <Array> (Default: [[], []])
    1: Key <Any> (Default: "")
    2: Default Value <Anything> (Default: objNull)

    Returns:
    Value from Hashset <Anything>
*/

params [
    ["_hashSet", [[], []], [[]], 2],
    ["_key", "", []],
    "_default"
];

private _i = (_hashSet select HASH_KEYS) find _key;
if (_i == -1) exitWith {
    _default
};
(_hashSet select HASH_VALUES) select _i;
