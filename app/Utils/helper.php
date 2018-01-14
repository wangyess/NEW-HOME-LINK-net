<?php
function err($msg, $status = 403)
{
    return response()->json(['success' => false, 'msg' => $msg], $status);
}

function suc($data, $status = 200)
{
    return response()->json(['success' => true, 'data' => $data], $status);
}