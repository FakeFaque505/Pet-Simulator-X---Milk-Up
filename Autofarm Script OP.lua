
local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v24, v25)
	local v26 = {};
	for v41 = 1, #v24 do
		v6(v26, v0(v4(v1(v2(v24, v41, v41 + 1)), v1(v2(v25, 1 + (v41 % #v25), 1 + (v41 % #v25) + 1))) % 256));
	end
	return v5(v26);
end
local v8 = tonumber;
local v9 = string.byte;
local v10 = string.char;
local v11 = string.sub;
local v12 = string.gsub;
local v13 = string.rep;
local v14 = table.concat;
local v15 = table.insert;
local v16 = math.ldexp;
local v17 = getfenv or function()
	return _ENV;
end;
local v18 = setmetatable;
local v19 = pcall;
local v20 = select;
local v21 = unpack or table.unpack;
local v22 = tonumber;
local function v23(v27, v28, ...)
	local v29 = 1;
	local v30;
	v27 = v12(v11(v27, 5), v7("\127\252", "\134\81\210\198\158\76\202"), function(v42)
		if (v9(v42, 2) == 79) then
			local v89 = 0;
			while true do
				if (0 == v89) then
					v30 = v8(v11(v42, 2 - 1, 1));
					return "";
				end
			end
		else
			local v90 = 0;
			local v91;
			while true do
				if (v90 == 0) then
					v91 = v10(v8(v42, 16));
					if v30 then
						local v121 = v13(v91, v30);
						v30 = nil;
						return v121;
					else
						return v91;
					end
					break;
				end
			end
		end
	end);
	local function v31(v43, v44, v45)
		if v45 then
			local v92 = 0;
			local v93;
			while true do
				if (v92 == 0) then
					v93 = (v43 / (2 ^ (v44 - 1))) % ((5 - 3) ^ (((v45 - 1) - (v44 - 1)) + 1));
					return v93 - (v93 % 1);
				end
			end
		else
			local v94 = 0;
			local v95;
			while true do
				if (v94 == 0) then
					v95 = (3 - 1) ^ (v44 - 1);
					return (((v43 % (v95 + v95)) >= v95) and 1) or (0 - 0);
				end
			end
		end
	end
	local function v32()
		local v46 = 0;
		local v47;
		while true do
			if (v46 == 1) then
				return v47;
			end
			if (v46 == 0) then
				v47 = v9(v27, v29, v29);
				v29 = v29 + (620 - (555 + 64));
				v46 = 1;
			end
		end
	end
	local function v33()
		local v48, v49 = v9(v27, v29, v29 + 2);
		v29 = v29 + 2;
		return (v49 * 256) + v48;
	end
	local function v34()
		local v50, v51, v52, v53 = v9(v27, v29, v29 + (934 - (857 + 74)));
		v29 = v29 + 4;
		return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50;
	end
	local function v35()
		local v54 = 0;
		local v55;
		local v56;
		local v57;
		local v58;
		local v59;
		local v60;
		while true do
			if (v54 == 3) then
				if (v59 == 0) then
					if (v58 == 0) then
						return v60 * 0;
					else
						v59 = 1;
						v57 = 0;
					end
				elseif (v59 == 2047) then
					return ((v58 == 0) and (v60 * (1 / 0))) or (v60 * NaN);
				end
				return v16(v60, v59 - 1023) * (v57 + (v58 / (2 ^ 52)));
			end
			if (0 == v54) then
				v55 = v34();
				v56 = v34();
				v54 = 1;
			end
			if (v54 == 2) then
				v59 = v31(v56, 21, 31);
				v60 = ((v31(v56, 32) == 1) and -1) or 1;
				v54 = 3;
			end
			if (v54 == 1) then
				v57 = 1;
				v58 = (v31(v56, 1, 588 - (367 + 201)) * (2 ^ 32)) + v55;
				v54 = 2;
			end
		end
	end
	local function v36(v61)
		local v62;
		if not v61 then
			v61 = v34();
			if (v61 == 0) then
				return "";
			end
		end
		v62 = v11(v27, v29, (v29 + v61) - 1);
		v29 = v29 + v61;
		local v63 = {};
		for v78 = 1, #v62 do
			v63[v78] = v10(v9(v11(v62, v78, v78)));
		end
		return v14(v63);
	end
	local v37 = v34;
	local function v38(...)
		return {...}, v20("#", ...);
	end
	local function v39()
		local v64 = {};
		local v65 = {};
		local v66 = {};
		local v67 = {v64,v65,nil,v66};
		local v68 = v34();
		local v69 = {};
		for v80 = 1, v68 do
			local v81 = 0;
			local v82;
			local v83;
			while true do
				if (v81 == 1) then
					if (v82 == 1) then
						v83 = v32() ~= 0;
					elseif (v82 == 2) then
						v83 = v35();
					elseif (v82 == 3) then
						v83 = v36();
					end
					v69[v80] = v83;
					break;
				end
				if (v81 == 0) then
					v82 = v32();
					v83 = nil;
					v81 = 1;
				end
			end
		end
		v67[3] = v32();
		for v84 = 1 + 0, v34() do
			local v85 = 0;
			local v86;
			while true do
				if (v85 == 0) then
					v86 = v32();
					if (v31(v86, 1, 1) == 0) then
						local v117 = 0;
						local v118;
						local v119;
						local v120;
						while true do
							if (v117 == 0) then
								v118 = v31(v86, 879 - (282 + 595), 3);
								v119 = v31(v86, 4, 1643 - (1523 + 114));
								v117 = 1;
							end
							if (2 == v117) then
								if (v31(v119, 1, 1) == (1 + 0)) then
									v120[2] = v69[v120[2]];
								end
								if (v31(v119, 2, 2) == 1) then
									v120[3] = v69[v120[3]];
								end
								v117 = 3;
							end
							if (v117 == 1) then
								v120 = {v33(),v33(),nil,nil};
								if (v118 == 0) then
									local v131 = 0;
									while true do
										if (0 == v131) then
											v120[3] = v33();
											v120[4] = v33();
											break;
										end
									end
								elseif (v118 == 1) then
									v120[3] = v34();
								elseif (v118 == 2) then
									v120[3] = v34() - (2 ^ 16);
								elseif (v118 == 3) then
									local v183 = 0;
									while true do
										if (v183 == 0) then
											v120[3] = v34() - (2 ^ 16);
											v120[4] = v33();
											break;
										end
									end
								end
								v117 = 2;
							end
							if (3 == v117) then
								if (v31(v119, 3 - 0, 3) == 1) then
									v120[4] = v69[v120[4]];
								end
								v64[v84] = v120;
								break;
							end
						end
					end
					break;
				end
			end
		end
		for v87 = 1, v34() do
			v65[v87 - 1] = v39();
		end
		return v67;
	end
	local function v40(v71, v72, v73)
		local v74 = 0;
		local v75;
		local v76;
		local v77;
		while true do
			if (v74 == 1) then
				v77 = v71[3];
				return function(...)
					local v100 = v75;
					local v101 = v76;
					local v102 = v77;
					local v103 = v38;
					local v104 = 1066 - (68 + 997);
					local v105 = -1;
					local v106 = {};
					local v107 = {...};
					local v108 = v20("#", ...) - 1;
					local v109 = {};
					local v110 = {};
					for v114 = 0, v108 do
						if (v114 >= v102) then
							v106[v114 - v102] = v107[v114 + 1];
						else
							v110[v114] = v107[v114 + (1271 - (226 + 1044))];
						end
					end
					local v111 = (v108 - v102) + 1;
					local v112;
					local v113;
					while true do
						v112 = v100[v104];
						v113 = v112[1];
						if (v113 <= (12 - 9)) then
							if (v113 <= 1) then
								if (v113 == 0) then
									v110[v112[2]] = v73[v112[120 - (32 + 85)]];
								else
									local v136;
									local v137, v138;
									local v139;
									local v140;
									v110[v112[2]] = v73[v112[3 + 0]];
									v104 = v104 + 1;
									v112 = v100[v104];
									v110[v112[2]][v112[3]] = v112[4];
									v104 = v104 + 1;
									v112 = v100[v104];
									v110[v112[1 + 1]] = v73[v112[3]];
									v104 = v104 + 1;
									v112 = v100[v104];
									v110[v112[2]][v112[3]] = v112[4];
									v104 = v104 + 1;
									v112 = v100[v104];
									v110[v112[2]] = v73[v112[960 - (892 + 65)]];
									v104 = v104 + 1;
									v112 = v100[v104];
									v110[v112[2]] = v73[v112[3]];
									v104 = v104 + 1;
									v112 = v100[v104];
									v140 = v112[2];
									v139 = v110[v112[3]];
									v110[v140 + 1] = v139;
									v110[v140] = v139[v112[4]];
									v104 = v104 + 1;
									v112 = v100[v104];
									v110[v112[2]] = v112[3];
									v104 = v104 + 1;
									v112 = v100[v104];
									v140 = v112[4 - 2];
									v137, v138 = v103(v110[v140](v21(v110, v140 + (1 - 0), v112[3])));
									v105 = (v138 + v140) - 1;
									v136 = 0;
									for v172 = v140, v105 do
										local v173 = 0;
										while true do
											if (v173 == 0) then
												v136 = v136 + 1;
												v110[v172] = v137[v136];
												break;
											end
										end
									end
									v104 = v104 + (1 - 0);
									v112 = v100[v104];
									v140 = v112[2];
									v110[v140] = v110[v140](v21(v110, v140 + (351 - (87 + 263)), v105));
								end
							elseif (v113 == 2) then
								v110[v112[2]] = v112[3];
							else
								local v158 = 0;
								local v159;
								local v160;
								local v161;
								local v162;
								while true do
									if (v158 == 2) then
										for v181 = v159, v105 do
											local v182 = 0;
											while true do
												if (v182 == 0) then
													v162 = v162 + 1;
													v110[v181] = v160[v162];
													break;
												end
											end
										end
										break;
									end
									if (v158 == 1) then
										v105 = (v161 + v159) - (1 + 0);
										v162 = 0;
										v158 = 2;
									end
									if (v158 == 0) then
										v159 = v112[2];
										v160, v161 = v103(v110[v159](v21(v110, v159 + 1, v112[183 - (67 + 113)])));
										v158 = 1;
									end
								end
							end
						elseif (v113 <= 5) then
							if (v113 > 4) then
								local v163 = v112[2];
								v110[v163] = v110[v163](v21(v110, v163 + 1, v105));
							else
								local v165 = v112[2];
								local v166 = v110[v112[3]];
								v110[v165 + 1] = v166;
								v110[v165] = v166[v112[9 - 5]];
							end
						elseif (v113 <= 6) then
							v110[v112[2]][v112[3]] = v112[4];
						elseif (v113 > (6 + 1)) then
							v110[v112[2]]();
						else
							do
								return;
							end
						end
						v104 = v104 + 1;
					end
				end;
			end
			if (v74 == 0) then
				v75 = v71[1];
				v76 = v71[2];
				v74 = 1;
			end
		end
	end
	return v40(v39(), {}, v28)(...);
end
v23(v7("\174\233\114\139\94\219\149\113\154\94\210\149\14\152\93\173\150\14\159\40\214\145\14\153\94\212\149\113\154\94\215\147\9\153\88\215\145\12\158\87\214\146\14\152\92\173\150\14\146\94\164\231\8\156\92\161\229\125\158\95\210\149\14\157\93\173\150\14\159\89\212\147\8\152\90\218\148\113\156\40\212\228\14\153\89\219\149\113\154\94\212\158\12\229\89\214\145\14\157\93\209\231\12\229\92\164\144\10\156\87\213\149\8\153\88\164\145\12\156\90\208\227\8\153\88\164\144\122\152\40\212\151\9\154\88\219\148\120\157\89\212\147\8\152\88\218\148\113\156\40\212\228\9\153\92\164\148\113\153\95\209\148\13\147\93\215\149\8\153\95\209\145\13\154\93\213\149\15\153\87\209\147\13\158\93\210\149\6\153\90\209\145\13\158\92\164\144\120\153\88\215\147\8\147\90\212\144\120\153\89\214\226\13\154\93\214\146\125\158\88\212\227\10\146\88\166\144\124\159\93\214\159\11\159\93\219\145\13\157\87\214\148\8\239\93\218\147\120\159\47\214\149\8\233\89\210\145\12\158\95\212\231\13\155\88\211\146\125\153\88\209\147\11\236\89\214\146\6\159\86\215\145\8\146\89\218\148\113\156\91\213\149\10\233\90\215\145\9\156\44\215\150\8\153\91\211\147\10\159\95\215\150\9\156\88\209\147\9\153\92\212\158\9\159\90\213\149\8\158\89\209\150\14\153\94\163\149\113\154\94\212\229\8\236\88\211\144\10\157\93\213\146\9\152\88\219\144\123\156\89\210\149\14\158\93\173\150\14\156\89\212\151\8\238\88\215\150\13\154\89\209\233\14\154\90\218\148\113\157\90\213\150\10\157\88\215\145\10\154\93\215\151\13\229\94\210\144\6\152\33\213\146\9\154\89\209\149\127\152\33\208\224\9\152\88\211\145\9\152\43\212\145\8\147\89\214\144\6\157\91\212\148\9\159\89\209\144\11\157\92\212\149\8\236\88\167\145\10\156\91\212\227\9\158\92\167\144\13\156\40\212\226\12\236\89\212\144\11\157\93\213\146\9\147\89\218\148\120\159\94\212\147\9\158\91\209\144\7\156\42\213\147\8\233\88\211\145\10\156\40\213\148\11\146\90\211\145\11\157\90\212\224\10\156\88\211\145\12\156\42\208\224\8\238\88\211\144\7\156\43\208\224\10\146\88\211\145\13\157\90\212\147\10\156\88\211\145\12\156\42\208\227\8\233\89\215\144\15\154\94\210\229\13\229\94\210\151\12\154\95\209\233\14\154\94\211\149\113\154\94\209\150\10\229\94\210\150\12\154\94\210\149\14\154\95\208\146\113\154\94\210\151\13\229\94\210\149\14\158\33\210\150\14\158\94\210\150\11\154\94\211\148\10\229\94\210\150\8\153\33\210\150\15\152\92\173\150\14\154\95\210\150\14\157\93\173\150\14\152\94\208\233\14\154\94\211\150\14\154\95\210\150\14\146\94\210\151\12\152\33\210\150\14\153\94\210\150\7\156\33\210\150\14\155\94\210\150\13\147\33\210\150\14\154\94\208\148\113\154\94\210\158\13\229\94\210\150\15\154\94\210\151\12\229\94\210\150\9\153\33\210\150\14\155\89\173\150\14", "\110\226\166\62\170"), v17(), ...);
