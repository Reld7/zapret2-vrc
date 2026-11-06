function cond_clienthello_big(desync)
	local d = desync.reasm_data or desync.dis.payload
	if not d then return false end
	DLOG("clienthello len="..#d)
	return #d > (tonumber(desync.arg.len) or 1500)
end
