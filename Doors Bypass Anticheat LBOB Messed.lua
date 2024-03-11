--[[
 Messed with Lua Beautier and Lua Obfuscator - Ry

]]--
warn("Loading")
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
	v27 = v12(v11(v27, 5), v7("\100\102", "\22\74\72\193\35"), function(v42)
		if (v9(v42, 5 - 3) == 79) then
			local v95 = 0;
			while true do
				if (0 == v95) then
					v30 = v8(v11(v42, 1, 1));
					return "";
				end
			end
		else
			local v96 = v10(v8(v42, 16));
			if v30 then
				local v106 = 0;
				local v107;
				while true do
					if (v106 == 0) then
						v107 = v13(v96, v30);
						v30 = nil;
						v106 = 1;
					end
					if (v106 == 1) then
						return v107;
					end
				end
			else
				return v96;
			end
		end
	end);
	local function v31(v43, v44, v45)
		if v45 then
			local v97 = 0;
			local v98;
			while true do
				if (v97 == 0) then
					v98 = (v43 / (2 ^ (v44 - 1))) % (2 ^ (((v45 - 1) - (v44 - 1)) + 1));
					return v98 - (v98 % 1);
				end
			end
		else
			local v99 = 0;
			local v100;
			while true do
				if (0 == v99) then
					v100 = 2 ^ (v44 - 1);
					return (((v43 % (v100 + v100)) >= v100) and 1) or 0;
				end
			end
		end
	end
	local function v32()
		local v46 = 0;
		local v47;
		while true do
			if (v46 == 0) then
				v47 = v9(v27, v29, v29);
				v29 = v29 + 1;
				v46 = 1;
			end
			if (v46 == 1) then
				return v47;
			end
		end
	end
	local function v33()
		local v48 = 0;
		local v49;
		local v50;
		while true do
			if (v48 == 0) then
				v49, v50 = v9(v27, v29, v29 + 2);
				v29 = v29 + (5 - 3);
				v48 = 1;
			end
			if (v48 == 1) then
				return (v50 * 256) + v49;
			end
		end
	end
	local function v34()
		local v51 = 0;
		local v52;
		local v53;
		local v54;
		local v55;
		while true do
			if (v51 == 0) then
				v52, v53, v54, v55 = v9(v27, v29, v29 + 3);
				v29 = v29 + 4;
				v51 = 1;
			end
			if (v51 == 1) then
				return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52;
			end
		end
	end
	local function v35()
		local v56 = 0;
		local v57;
		local v58;
		local v59;
		local v60;
		local v61;
		local v62;
		while true do
			if (3 == v56) then
				if (v61 == 0) then
					if (v60 == (619 - (555 + 64))) then
						return v62 * 0;
					else
						v61 = 1;
						v59 = 0;
					end
				elseif (v61 == 2047) then
					return ((v60 == 0) and (v62 * (1 / 0))) or (v62 * NaN);
				end
				return v16(v62, v61 - 1023) * (v59 + (v60 / (2 ^ 52)));
			end
			if (0 == v56) then
				v57 = v34();
				v58 = v34();
				v56 = 1;
			end
			if (v56 == 2) then
				v61 = v31(v58, 21, 31);
				v62 = ((v31(v58, 32) == 1) and -(2 - 1)) or 1;
				v56 = 3;
			end
			if (1 == v56) then
				v59 = 1 - 0;
				v60 = (v31(v58, 1, 20) * (2 ^ 32)) + v57;
				v56 = 2;
			end
		end
	end
	local function v36(v63)
		local v64;
		if not v63 then
			local v101 = 0;
			while true do
				if (v101 == 0) then
					v63 = v34();
					if (v63 == 0) then
						return "";
					end
					break;
				end
			end
		end
		v64 = v11(v27, v29, (v29 + v63) - 1);
		v29 = v29 + v63;
		local v65 = {};
		for v79 = 1, #v64 do
			v65[v79] = v10(v9(v11(v64, v79, v79)));
		end
		return v14(v65);
	end
	local v37 = v34;
	local function v38(...)
		return {...}, v20("#", ...);
	end
	local function v39()
		local v66 = 0;
		local v67;
		local v68;
		local v69;
		local v70;
		local v71;
		local v72;
		while true do
			if (2 == v66) then
				for v108 = 1, v34() do
					local v109 = 0;
					local v110;
					while true do
						if (v109 == 0) then
							v110 = v32();
							if (v31(v110, 928 - (214 + 713), 1 + 0) == 0) then
								local v122 = 0;
								local v123;
								local v124;
								local v125;
								while true do
									if (v122 == 1) then
										v125 = {v33(),v33(),nil,nil};
										if (v123 == (1637 - (1523 + 114))) then
											local v127 = 0;
											while true do
												if (0 == v127) then
													v125[3] = v33();
													v125[4] = v33();
													break;
												end
											end
										elseif (v123 == 1) then
											v125[3] = v34();
										elseif (v123 == (2 + 0)) then
											v125[3] = v34() - (2 ^ 16);
										elseif (v123 == 3) then
											local v1075 = 0;
											while true do
												if (v1075 == 0) then
													v125[3] = v34() - (2 ^ 16);
													v125[4] = v33();
													break;
												end
											end
										end
										v122 = 2;
									end
									if (v122 == 2) then
										if (v31(v124, 1, 1) == (1 - 0)) then
											v125[1067 - (68 + 997)] = v72[v125[2]];
										end
										if (v31(v124, 2, 2) == 1) then
											v125[3] = v72[v125[3]];
										end
										v122 = 3;
									end
									if (3 == v122) then
										if (v31(v124, 3, 3) == 1) then
											v125[4] = v72[v125[4]];
										end
										v67[v108] = v125;
										break;
									end
									if (0 == v122) then
										v123 = v31(v110, 1 + 1, 3);
										v124 = v31(v110, 4, 6);
										v122 = 1;
									end
								end
							end
							break;
						end
					end
				end
				for v111 = 1, v34() do
					v68[v111 - 1] = v39();
				end
				return v70;
			end
			if (v66 == 0) then
				v67 = {};
				v68 = {};
				v69 = {};
				v70 = {v67,v68,nil,v69};
				v66 = 1;
			end
			if (v66 == 1) then
				v71 = v34();
				v72 = {};
				for v113 = 1, v71 do
					local v114 = 0;
					local v115;
					local v116;
					while true do
						if (v114 == 1) then
							if (v115 == 1) then
								v116 = v32() ~= 0;
							elseif (v115 == (570 - (367 + 201))) then
								v116 = v35();
							elseif (v115 == 3) then
								v116 = v36();
							end
							v72[v113] = v116;
							break;
						end
						if (v114 == 0) then
							v115 = v32();
							v116 = nil;
							v114 = 1;
						end
					end
				end
				v70[3] = v32();
				v66 = 2;
			end
		end
	end
	local function v40(v73, v74, v75)
		local v76 = v73[1];
		local v77 = v73[2];
		local v78 = v73[3];
		return function(...)
			local v81 = v76;
			local v82 = v77;
			local v83 = v78;
			local v84 = v38;
			local v85 = 1;
			local v86 = -(1271 - (226 + 1044));
			local v87 = {};
			local v88 = {...};
			local v89 = v20("#", ...) - (4 - 3);
			local v90 = {};
			local v91 = {};
			for v102 = 0, v89 do
				if (v102 >= v83) then
					v87[v102 - v83] = v88[v102 + 1];
				else
					v91[v102] = v88[v102 + 1];
				end
			end
			local v92 = (v89 - v83) + 1;
			local v93;
			local v94;
			while true do
				v93 = v81[v85];
				v94 = v93[1];
				if (v94 <= 31) then
					if (v94 <= 15) then
						if (v94 <= (124 - (32 + 85))) then
							if (v94 <= 3) then
								if (v94 <= 1) then
									if (v94 == 0) then
										v91[v93[2]] = v93[3];
									else
										local v136 = v93[2];
										do
											return v91[v136](v21(v91, v136 + 1, v93[3]));
										end
									end
								elseif (v94 > 2) then
									local v137 = v93[2];
									do
										return v21(v91, v137, v86);
									end
								else
									local v138 = 0;
									local v139;
									local v140;
									local v141;
									while true do
										if (v138 == 2) then
											if (v140 > 0) then
												if (v141 <= v91[v139 + 1]) then
													v85 = v93[3 + 0];
													v91[v139 + 3] = v141;
												end
											elseif (v141 >= v91[v139 + 1]) then
												local v1078 = 0;
												while true do
													if (0 == v1078) then
														v85 = v93[3];
														v91[v139 + 3] = v141;
														break;
													end
												end
											end
											break;
										end
										if (1 == v138) then
											v141 = v91[v139] + v140;
											v91[v139] = v141;
											v138 = 2;
										end
										if (0 == v138) then
											v139 = v93[2];
											v140 = v91[v139 + 2];
											v138 = 1;
										end
									end
								end
							elseif (v94 <= 5) then
								if (v94 > (1 + 3)) then
									local v142 = 0;
									local v143;
									while true do
										if (1 == v142) then
											v91[v93[959 - (892 + 65)]] = v75[v93[3]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v142 = 2;
										end
										if (v142 == 2) then
											v85 = v85 + 1;
											v93 = v81[v85];
											v143 = v93[2];
											v91[v143](v21(v91, v143 + 1, v93[3]));
											v142 = 3;
										end
										if (v142 == 3) then
											v85 = v85 + 1;
											v93 = v81[v85];
											v85 = v93[3];
											break;
										end
										if (v142 == 0) then
											v143 = nil;
											v91[v93[2]] = v91[v93[3]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v142 = 1;
										end
									end
								else
									v91[v93[2]] = v93[3] * v91[v93[4]];
								end
							elseif (v94 == 6) then
								v91[v93[2]] = v40(v82[v93[3]], nil, v75);
							else
								local v146 = 0;
								local v147;
								local v148;
								local v149;
								local v150;
								local v151;
								while true do
									if (v146 == 6) then
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[955 - (802 + 150)]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[7 - 4]][v93[6 - 2]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[3 + 1]];
										v146 = 7;
									end
									if (v146 == 8) then
										v93 = v81[v85];
										v91[v93[2]] = v75[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v146 = 9;
									end
									if (v146 == 3) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + (181 - (67 + 113));
										v93 = v81[v85];
										v151 = v93[2];
										v148, v149 = v84(v91[v151](v21(v91, v151 + 1 + 0, v93[3])));
										v86 = (v149 + v151) - (2 - 1);
										v146 = 4;
									end
									if (v146 == 2) then
										v91[v151 + 1] = v150;
										v91[v151] = v150[v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[3 - 1]] = v93[353 - (87 + 263)];
										v146 = 3;
									end
									if (v146 == 5) then
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v85 = v85 + 1;
										v146 = 6;
									end
									if (v146 == 9) then
										v85 = v85 + (2 - 1);
										v93 = v81[v85];
										v151 = v93[2];
										v150 = v91[v93[2 + 1]];
										v91[v151 + 1] = v150;
										v91[v151] = v150[v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v146 = 10;
									end
									if (v146 == 4) then
										v147 = 0;
										for v1007 = v151, v86 do
											local v1008 = 0;
											while true do
												if (v1008 == 0) then
													v147 = v147 + 1;
													v91[v1007] = v148[v147];
													break;
												end
											end
										end
										v85 = v85 + 1 + 0;
										v93 = v81[v85];
										v151 = v93[7 - 5];
										v91[v151] = v91[v151](v21(v91, v151 + 1, v86));
										v85 = v85 + 1;
										v93 = v81[v85];
										v146 = 5;
									end
									if (v146 == 10) then
										v151 = v93[2];
										v91[v151](v91[v151 + 1]);
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v93 = v81[v85];
										v85 = v93[3];
										break;
									end
									if (0 == v146) then
										v147 = nil;
										v148, v149 = nil;
										v150 = nil;
										v151 = nil;
										v151 = v93[2];
										v91[v151] = v91[v151]();
										v85 = v85 + 1;
										v93 = v81[v85];
										v146 = 1;
									end
									if (1 == v146) then
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v75[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v151 = v93[4 - 2];
										v150 = v91[v93[5 - 2]];
										v146 = 2;
									end
									if (v146 == 7) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v151 = v93[2];
										v91[v151] = v91[v151](v91[v151 + 1]);
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + (998 - (915 + 82));
										v146 = 8;
									end
								end
							end
						elseif (v94 <= 11) then
							if (v94 <= (11 - 2)) then
								if (v94 > 8) then
									if v91[v93[1189 - (1069 + 118)]] then
										v85 = v85 + 1;
									else
										v85 = v93[3];
									end
								else
									local v152;
									v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[6 - 3];
									v85 = v85 + (1 - 0);
									v93 = v81[v85];
									v152 = v93[2];
									v91[v152] = v91[v152](v21(v91, v152 + 1, v93[3]));
								end
							elseif (v94 > 10) then
								local v162 = 0;
								local v163;
								while true do
									if (v162 == 0) then
										v163 = nil;
										v91[v93[2]][v91[v93[1 + 2]]] = v91[v93[6 - 2]];
										v85 = v85 + 1 + 0;
										v162 = 1;
									end
									if (v162 == 3) then
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v162 = 4;
									end
									if (2 == v162) then
										v93 = v81[v85];
										v91[v93[793 - (368 + 423)]] = v93[3];
										v85 = v85 + 1;
										v162 = 3;
									end
									if (v162 == 4) then
										v93 = v81[v85];
										v163 = v93[2];
										v91[v163] = v91[v163](v21(v91, v163 + 1, v93[3]));
										break;
									end
									if (v162 == 1) then
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v162 = 2;
									end
								end
							else
								local v164 = 0;
								local v165;
								while true do
									if (v164 == 0) then
										v165 = nil;
										v91[v93[2]][v91[v93[9 - 6]]] = v91[v93[22 - (10 + 8)]];
										v85 = v85 + (3 - 2);
										v164 = 1;
									end
									if (v164 == 4) then
										v93 = v81[v85];
										v165 = v93[2];
										v91[v165] = v91[v165](v21(v91, v165 + (443 - (416 + 26)), v93[3]));
										break;
									end
									if (2 == v164) then
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v164 = 3;
									end
									if (1 == v164) then
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v164 = 2;
									end
									if (v164 == 3) then
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v164 = 4;
									end
								end
							end
						elseif (v94 <= 13) then
							if (v94 > 12) then
								v91[v93[2]] = v91[v93[3]] % v91[v93[4]];
							else
								local v167 = 0;
								local v168;
								local v169;
								local v170;
								local v171;
								local v172;
								while true do
									if (v167 == 7) then
										v85 = v85 + (1139 - (116 + 1022));
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[8 - 6]] = v93[3];
										v85 = v85 + 1 + 0;
										v93 = v81[v85];
										v172 = v93[2];
										v169, v170 = v84(v91[v172](v21(v91, v172 + 1, v93[10 - 7])));
										v167 = 8;
									end
									if (v167 == 2) then
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v85 = v85 + 1;
										v93 = v81[v85];
										v172 = v93[2];
										v167 = 3;
									end
									if (v167 == 6) then
										v91[v93[2]] = v75[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v172 = v93[2];
										v171 = v91[v93[3]];
										v91[v172 + 1] = v171;
										v91[v172] = v171[v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v167 = 7;
									end
									if (v167 == 0) then
										v168 = nil;
										v169, v170 = nil;
										v171 = nil;
										v172 = nil;
										v172 = v93[2];
										v91[v172] = v91[v172]();
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[6 - 4]] = v91[v93[3]][v93[2 + 2]];
										v85 = v85 + 1;
										v167 = 1;
									end
									if (5 == v167) then
										v91[v93[2]] = v75[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v172 = v93[774 - (201 + 571)];
										v91[v172] = v91[v172]();
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v167 = 6;
									end
									if (9 == v167) then
										v85 = v85 + (860 - (814 + 45));
										v93 = v81[v85];
										v172 = v93[2];
										v91[v172] = v91[v172](v91[v172 + 1]);
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + (2 - 1);
										v93 = v81[v85];
										v91[v93[2]] = v93[3];
										v167 = 10;
									end
									if (4 == v167) then
										v91[v93[2]] = v91[v93[3 + 0]][v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v172 = v93[2];
										v91[v172] = v91[v172](v91[v172 + 1]);
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v167 = 5;
									end
									if (8 == v167) then
										v86 = (v170 + v172) - 1;
										v168 = 0;
										for v1009 = v172, v86 do
											v168 = v168 + 1;
											v91[v1009] = v169[v168];
										end
										v85 = v85 + (3 - 2);
										v93 = v81[v85];
										v172 = v93[2];
										v91[v172] = v91[v172](v21(v91, v172 + 1, v86));
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]][v93[4]];
										v167 = 9;
									end
									if (v167 == 3) then
										v169, v170 = v84(v91[v172](v21(v91, v172 + 1, v93[3])));
										v86 = (v170 + v172) - 1;
										v168 = 0;
										for v1012 = v172, v86 do
											local v1013 = 0;
											while true do
												if (v1013 == 0) then
													v168 = v168 + 1;
													v91[v1012] = v169[v168];
													break;
												end
											end
										end
										v85 = v85 + 1;
										v93 = v81[v85];
										v172 = v93[1488 - (998 + 488)];
										v91[v172] = v91[v172](v21(v91, v172 + 1, v86));
										v85 = v85 + 1 + 0;
										v93 = v81[v85];
										v167 = 4;
									end
									if (v167 == 10) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v85 = v93[1 + 2];
										break;
									end
									if (v167 == 1) then
										v93 = v81[v85];
										v91[v93[2]] = v75[v93[4 - 1]];
										v85 = v85 + (439 - (145 + 293));
										v93 = v81[v85];
										v172 = v93[2];
										v171 = v91[v93[3]];
										v91[v172 + (431 - (44 + 386))] = v171;
										v91[v172] = v171[v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v167 = 2;
									end
								end
							end
						elseif (v94 == 14) then
							v91[v93[2]] = v75[v93[3]];
						else
							v91[v93[2]] = v91[v93[3]] - v91[v93[4]];
						end
					elseif (v94 <= 23) then
						if (v94 <= 19) then
							if (v94 <= 17) then
								if (v94 > 16) then
									local v176 = 0;
									local v177;
									local v178;
									local v179;
									while true do
										if (v176 == 0) then
											v177 = v82[v93[3]];
											v178 = nil;
											v176 = 1;
										end
										if (v176 == 1) then
											v179 = {};
											v178 = v18({}, {[v7("\19\70\237\86\40\124\252", "\56\76\25\132")]=function(v1014, v1015)
												local v1016 = 0;
												local v1017;
												while true do
													if (v1016 == 0) then
														v1017 = v179[v1015];
														return v1017[1][v1017[2]];
													end
												end
											end,[v7("\97\254\165\35\216\87\207\175\35\215", "\175\62\161\203\70")]=function(v1018, v1019, v1020)
												local v1021 = 0;
												local v1022;
												while true do
													if (v1021 == 0) then
														v1022 = v179[v1019];
														v1022[1][v1022[2]] = v1020;
														break;
													end
												end
											end});
											v176 = 2;
										end
										if (v176 == 2) then
											for v1023 = 1, v93[4] do
												local v1024 = 0;
												local v1025;
												while true do
													if (1 == v1024) then
														if (v1025[1] == 33) then
															v179[v1023 - 1] = {v91,v1025[3]};
														else
															v179[v1023 - 1] = {v74,v1025[3]};
														end
														v90[#v90 + 1] = v179;
														break;
													end
													if (v1024 == 0) then
														v85 = v85 + 1;
														v1025 = v81[v85];
														v1024 = 1;
													end
												end
											end
											v91[v93[2]] = v40(v177, v178, v75);
											break;
										end
									end
								else
									local v180 = 0;
									local v181;
									local v182;
									while true do
										if (v180 == 1) then
											for v1026 = v181 + 1, v93[4] do
												v182 = v182 .. v91[v1026];
											end
											v91[v93[2]] = v182;
											break;
										end
										if (v180 == 0) then
											v181 = v93[3];
											v182 = v91[v181];
											v180 = 1;
										end
									end
								end
							elseif (v94 > (903 - (261 + 624))) then
								v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
							else
								local v185 = v93[2];
								local v186, v187 = v84(v91[v185](v91[v185 + 1]));
								v86 = (v187 + v185) - 1;
								local v188 = 0;
								for v330 = v185, v86 do
									local v331 = 0;
									while true do
										if (0 == v331) then
											v188 = v188 + 1;
											v91[v330] = v186[v188];
											break;
										end
									end
								end
							end
						elseif (v94 <= 21) then
							if (v94 > 20) then
								v91[v93[2]] = v93[3] + v91[v93[4]];
							else
								local v190 = 0;
								local v191;
								local v192;
								local v193;
								local v194;
								while true do
									if (2 == v190) then
										for v1029 = v191, v86 do
											local v1030 = 0;
											while true do
												if (v1030 == 0) then
													v194 = v194 + 1;
													v91[v1029] = v192[v194];
													break;
												end
											end
										end
										break;
									end
									if (v190 == 0) then
										v191 = v93[2];
										v192, v193 = v84(v91[v191](v21(v91, v191 + 1, v93[4 - 1])));
										v190 = 1;
									end
									if (1 == v190) then
										v86 = (v193 + v191) - 1;
										v194 = 0;
										v190 = 2;
									end
								end
							end
						elseif (v94 == 22) then
							local v195 = 0;
							local v196;
							while true do
								if (v195 == 0) then
									v196 = v93[2];
									v91[v196] = v91[v196](v91[v196 + 1]);
									break;
								end
							end
						else
							v91[v93[2]] = v91[v93[3]] + v93[1084 - (1020 + 60)];
						end
					elseif (v94 <= (1450 - (630 + 793))) then
						if (v94 <= (84 - 59)) then
							if (v94 == 24) then
								v91[v93[2]] = v91[v93[3]][v93[4]];
							else
								v85 = v93[3];
							end
						elseif (v94 > 26) then
							local v201 = 0;
							local v202;
							local v203;
							local v204;
							while true do
								if (v201 == 11) then
									v203 = v91[v93[3]];
									v91[v204 + (2 - 1)] = v203;
									v91[v204] = v203[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v91[v204 + 1]);
									v85 = v85 + (1818 - (1703 + 114));
									v93 = v81[v85];
									v91[v93[2]][v91[v93[704 - (376 + 325)]]] = v91[v93[4]];
									v201 = 12;
								end
								if (v201 == 21) then
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									break;
								end
								if (v201 == 16) then
									v91[v93[2]] = v93[8 - 5];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[1 + 1]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v201 = 17;
								end
								if (v201 == 19) then
									v85 = v85 + 1 + 0;
									v93 = v81[v85];
									v203 = v93[3];
									v202 = v91[v203];
									for v1031 = v203 + 1, v93[4] do
										v202 = v202 .. v91[v1031];
									end
									v91[v93[2]] = v202;
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v91[v204 + 1]);
									v201 = 20;
								end
								if (2 == v201) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[1749 - (760 + 987)]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									v201 = 3;
								end
								if (v201 == 10) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[4 - 2]] = v91[v93[1416 - (447 + 966)]] - v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v91[v204 + 1]);
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v201 = 11;
								end
								if (v201 == 0) then
									v202 = nil;
									v203 = nil;
									v204 = nil;
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + (4 - 3);
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v201 = 1;
								end
								if (9 == v201) then
									v85 = v85 + (1056 - (87 + 968));
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + (4 - 3), v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3 + 0] * v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]] * v93[4];
									v201 = 10;
								end
								if (v201 == 12) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + (1 - 0);
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v201 = 13;
								end
								if (v201 == 4) then
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1 + 0, v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v201 = 5;
								end
								if (v201 == 3) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[1915 - (1789 + 124)]] = v74[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[768 - (745 + 21)]] = v93[3];
									v85 = v85 + 1;
									v201 = 4;
								end
								if (v201 == 6) then
									v93 = v81[v85];
									v91[v93[2]] = v75[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[5 - 3]] = v75[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v201 = 7;
								end
								if (v201 == 20) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v201 = 21;
								end
								if (v201 == 13) then
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]][v91[v93[3]]] = v93[4];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v201 = 14;
								end
								if (v201 == 8) then
									v91[v93[2]] = v75[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1 + 0;
									v93 = v81[v85];
									v91[v93[2 + 0]] = v93[3];
									v201 = 9;
								end
								if (v201 == 18) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + (377 - (85 + 291)), v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v75[v93[3]];
									v85 = v85 + (1266 - (243 + 1022));
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[14 - 10]];
									v201 = 19;
								end
								if (v201 == 5) then
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									v85 = v85 + 1;
									v201 = 6;
								end
								if (v201 == 14) then
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									v85 = v85 + 1;
									v201 = 15;
								end
								if (v201 == 7) then
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204]();
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[11 - 8]][v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v201 = 8;
								end
								if (v201 == 17) then
									v91[v93[2]] = v75[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[4 - 2]] = v74[v93[17 - (9 + 5)]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v201 = 18;
								end
								if (v201 == 1) then
									v85 = v85 + 1 + 0;
									v93 = v81[v85];
									v204 = v93[2];
									v91[v204] = v91[v204](v21(v91, v204 + 1, v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = {};
									v85 = v85 + (3 - 2);
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v201 = 2;
								end
								if (v201 == 15) then
									v93 = v81[v85];
									v91[v93[2]] = {};
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v201 = 16;
								end
							end
						else
							local v205 = 0;
							local v206;
							local v207;
							local v208;
							while true do
								if (0 == v205) then
									v206 = v93[1182 - (1123 + 57)];
									v207 = v91[v206];
									v205 = 1;
								end
								if (v205 == 1) then
									v208 = v91[v206 + 2 + 0];
									if (v208 > 0) then
										if (v207 > v91[v206 + 1]) then
											v85 = v93[3];
										else
											v91[v206 + 3] = v207;
										end
									elseif (v207 < v91[v206 + (255 - (163 + 91))]) then
										v85 = v93[3];
									else
										v91[v206 + (1933 - (1869 + 61))] = v207;
									end
									break;
								end
							end
						end
					elseif (v94 <= 29) then
						if (v94 == 28) then
							local v209;
							local v210, v211;
							local v212;
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v212 = v93[2];
							v91[v212] = v91[v212](v21(v91, v212 + 1, v93[3]));
							v85 = v85 + 1 + 0;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v212 = v93[2];
							v210, v211 = v84(v91[v212](v21(v91, v212 + 1, v93[3])));
							v86 = (v211 + v212) - 1;
							v209 = 0;
							for v332 = v212, v86 do
								local v333 = 0;
								while true do
									if (v333 == 0) then
										v209 = v209 + 1;
										v91[v332] = v210[v209];
										break;
									end
								end
							end
							v85 = v85 + 1;
							v93 = v81[v85];
							v212 = v93[2];
							v91[v212] = v91[v212](v21(v91, v212 + 1, v86));
							v85 = v85 + 1;
							v93 = v81[v85];
							if (v91[v93[2]] == v93[4]) then
								v85 = v85 + 1;
							else
								v85 = v93[3];
							end
						else
							local v218 = 0;
							local v219;
							while true do
								if (v218 == 0) then
									v219 = v93[2];
									v91[v219] = v91[v219]();
									break;
								end
							end
						end
					elseif (v94 > 30) then
						local v220 = 0;
						local v221;
						local v222;
						local v223;
						local v224;
						local v225;
						while true do
							if (v220 == 17) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225](v91[v225 + 1]);
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v220 = 18;
							end
							if (v220 == 5) then
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v75[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225]();
								v220 = 6;
							end
							if (18 == v220) then
								v91[v93[838 - (660 + 176)]] = v91[v93[3]][v93[1 + 3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								break;
							end
							if (v220 == 12) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225]();
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v220 = 13;
							end
							if (v220 == 7) then
								v224 = v91[v93[3]];
								v91[v225 + 1] = v224;
								v91[v225] = v224[v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v74[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[690 - (198 + 490)]] = v93[3];
								v220 = 8;
							end
							if (v220 == 16) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[1 + 1]] = v91[v93[3]][v93[4]];
								v220 = 17;
							end
							if (v220 == 15) then
								v225 = v93[2];
								v222, v223 = v84(v91[v225](v21(v91, v225 + 1, v93[3])));
								v86 = (v223 + v225) - 1;
								v221 = 0;
								for v1034 = v225, v86 do
									local v1035 = 0;
									while true do
										if (v1035 == 0) then
											v221 = v221 + 1;
											v91[v1034] = v222[v221];
											break;
										end
									end
								end
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225](v21(v91, v225 + 1, v86));
								v220 = 16;
							end
							if (v220 == 13) then
								v91[v93[2]] = v75[v93[3]];
								v85 = v85 + (1263 - (1091 + 171));
								v93 = v81[v85];
								v225 = v93[1 + 1];
								v224 = v91[v93[3]];
								v91[v225 + 1] = v224;
								v91[v225] = v224[v93[4]];
								v85 = v85 + (3 - 2);
								v93 = v81[v85];
								v220 = 14;
							end
							if (0 == v220) then
								v221 = nil;
								v222, v223 = nil;
								v224 = nil;
								v225 = nil;
								v91[v93[6 - 4]][v91[v93[3]]] = v91[v93[4]];
								v85 = v85 + (1 - 0);
								v93 = v81[v85];
								v91[v93[2]] = v74[v93[3]];
								v85 = v85 + 1;
								v220 = 1;
							end
							if (v220 == 14) then
								v91[v93[6 - 4]] = v74[v93[377 - (123 + 251)]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[9 - 7]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[700 - (208 + 490)]] = v93[3];
								v85 = v85 + 1 + 0;
								v93 = v81[v85];
								v220 = 15;
							end
							if (v220 == 4) then
								v91[v93[2]][v91[v93[3]]] = v93[4];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[720 - (15 + 703)]][v91[v93[3]]] = v91[v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[1 + 1];
								v91[v225] = v91[v225](v21(v91, v225 + 1, v93[441 - (262 + 176)]));
								v85 = v85 + 1;
								v220 = 5;
							end
							if (v220 == 10) then
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225](v91[v225 + 1]);
								v220 = 11;
							end
							if (v220 == 11) then
								v85 = v85 + (1 - 0);
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v75[v93[3]];
								v220 = 12;
							end
							if (v220 == 8) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + (4 - 3);
								v93 = v81[v85];
								v225 = v93[2];
								v222, v223 = v84(v91[v225](v21(v91, v225 + 1, v93[6 - 3])));
								v86 = (v223 + v225) - (1207 - (696 + 510));
								v221 = 0;
								v220 = 9;
							end
							if (v220 == 3) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[1476 - (1329 + 145)]] = v93[3];
								v85 = v85 + (972 - (140 + 831));
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225](v21(v91, v225 + (1851 - (1409 + 441)), v93[3]));
								v85 = v85 + 1;
								v93 = v81[v85];
								v220 = 4;
							end
							if (v220 == 1) then
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225](v21(v91, v225 + 1, v93[3]));
								v220 = 2;
							end
							if (v220 == 2) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = {};
								v85 = v85 + 1 + 0;
								v93 = v81[v85];
								v91[v93[2 - 0]] = v74[v93[3]];
								v85 = v85 + 1 + 0;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v220 = 3;
							end
							if (v220 == 6) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v75[v93[3]];
								v85 = v85 + (1722 - (345 + 1376));
								v93 = v81[v85];
								v225 = v93[2];
								v220 = 7;
							end
							if (v220 == 9) then
								for v1036 = v225, v86 do
									v221 = v221 + 1;
									v91[v1036] = v222[v221];
								end
								v85 = v85 + 1;
								v93 = v81[v85];
								v225 = v93[2];
								v91[v225] = v91[v225](v21(v91, v225 + 1, v86));
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v220 = 10;
							end
						end
					else
						for v334 = v93[2], v93[3] do
							v91[v334] = nil;
						end
					end
				elseif (v94 <= 47) then
					if (v94 <= 39) then
						if (v94 <= 35) then
							if (v94 <= 33) then
								if (v94 > 32) then
									v91[v93[2]] = v91[v93[3]];
								else
									local v228 = 0;
									local v229;
									local v230;
									local v231;
									local v232;
									local v233;
									while true do
										if (v228 == 9) then
											v91[v93[2]] = v93[3];
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v230, v231 = v84(v91[v233](v21(v91, v233 + 1, v93[3])));
											v86 = (v231 + v233) - 1;
											v229 = 0;
											for v1039 = v233, v86 do
												local v1040 = 0;
												while true do
													if (v1040 == 0) then
														v229 = v229 + 1;
														v91[v1039] = v230[v229];
														break;
													end
												end
											end
											v85 = v85 + 1;
											v228 = 10;
										end
										if (v228 == 1) then
											v85 = v85 + (203 - (14 + 188));
											v93 = v81[v85];
											v91[v93[2]] = v75[v93[3]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v232 = v91[v93[3]];
											v91[v233 + 1] = v232;
											v91[v233] = v232[v93[679 - (534 + 141)]];
											v228 = 2;
										end
										if (v228 == 5) then
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v91[v233] = v91[v233](v91[v233 + 1]);
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v228 = 6;
										end
										if (v228 == 8) then
											v91[v233] = v232[v93[4]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v74[v93[2 + 1]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v93[3];
											v85 = v85 + (397 - (115 + 281));
											v93 = v81[v85];
											v228 = 9;
										end
										if (v228 == 3) then
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v230, v231 = v84(v91[v233](v21(v91, v233 + 1, v93[3])));
											v86 = (v231 + v233) - 1;
											v229 = 0;
											for v1041 = v233, v86 do
												v229 = v229 + 1;
												v91[v1041] = v230[v229];
											end
											v85 = v85 + 1 + 0;
											v93 = v81[v85];
											v228 = 4;
										end
										if (v228 == 2) then
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v74[v93[3]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v93[3];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v93[3];
											v228 = 3;
										end
										if (v228 == 11) then
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v91[v233] = v91[v233](v91[v233 + 1]);
											v85 = v85 + 1;
											v93 = v81[v85];
											v228 = 12;
										end
										if (v228 == 10) then
											v93 = v81[v85];
											v233 = v93[2];
											v91[v233] = v91[v233](v21(v91, v233 + 1, v86));
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[4 - 2]] = v91[v93[3]][v93[4]];
											v85 = v85 + 1 + 0;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[9 - 5]];
											v228 = 11;
										end
										if (v228 == 0) then
											v229 = nil;
											v230, v231 = nil;
											v232 = nil;
											v233 = nil;
											v233 = v93[2];
											v91[v233] = v91[v233]();
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v228 = 1;
										end
										if (4 == v228) then
											v233 = v93[2 + 0];
											v91[v233] = v91[v233](v21(v91, v233 + 1 + 0, v86));
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v85 = v85 + (1 - 0);
											v228 = 5;
										end
										if (v228 == 6) then
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v75[v93[3]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v91[v233] = v91[v233]();
											v85 = v85 + (1 - 0);
											v93 = v81[v85];
											v228 = 7;
										end
										if (v228 == 12) then
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v91[v93[2]] = v93[3];
											break;
										end
										if (7 == v228) then
											v91[v93[2]] = v91[v93[3]][v93[4]];
											v85 = v85 + (2 - 1);
											v93 = v81[v85];
											v91[v93[2]] = v75[v93[3]];
											v85 = v85 + 1;
											v93 = v81[v85];
											v233 = v93[2];
											v232 = v91[v93[3]];
											v91[v233 + 1 + 0] = v232;
											v228 = 8;
										end
									end
								end
							elseif (v94 > 34) then
								local v234 = 0;
								local v235;
								local v236;
								while true do
									if (v234 == 0) then
										v235 = v93[2];
										v236 = v91[v235];
										v234 = 1;
									end
									if (1 == v234) then
										for v1044 = v235 + 1, v93[3] do
											v15(v236, v91[v1044]);
										end
										break;
									end
								end
							else
								v91[v93[2]] = v91[v93[10 - 7]] % v93[4];
							end
						elseif (v94 <= 37) then
							if (v94 > 36) then
								local v238 = 0;
								local v239;
								while true do
									if (v238 == 0) then
										v239 = v93[2];
										v91[v239](v21(v91, v239 + 1, v93[3]));
										break;
									end
								end
							else
								local v240;
								local v241, v242;
								local v243;
								local v244;
								v244 = v93[2];
								v243 = v91[v93[3]];
								v91[v244 + 1] = v243;
								v91[v244] = v243[v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v74[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v244 = v93[2];
								v241, v242 = v84(v91[v244](v21(v91, v244 + 1, v93[3])));
								v86 = (v242 + v244) - (868 - (550 + 317));
								v240 = 0;
								for v336 = v244, v86 do
									local v337 = 0;
									while true do
										if (v337 == 0) then
											v240 = v240 + 1;
											v91[v336] = v241[v240];
											break;
										end
									end
								end
								v85 = v85 + 1;
								v93 = v81[v85];
								v244 = v93[2];
								v91[v244] = v91[v244](v21(v91, v244 + 1, v86));
								v85 = v85 + 1;
								v93 = v81[v85];
								v244 = v93[2];
								v243 = v91[v93[3]];
								v91[v244 + (1 - 0)] = v243;
								v91[v244] = v243[v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v244 = v93[2];
								v91[v244](v91[v244 + (1 - 0)]);
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v85 = v93[3];
							end
						elseif (v94 == 38) then
							local v255 = 0;
							local v256;
							while true do
								if (v255 == 0) then
									v256 = v93[2];
									v91[v256](v21(v91, v256 + (2 - 1), v86));
									break;
								end
							end
						else
							local v257 = 0;
							local v258;
							local v259;
							local v260;
							local v261;
							local v262;
							while true do
								if (v257 == 10) then
									v91[v262](v21(v91, v262 + 1, v86));
									v85 = v85 + (1 - 0);
									v93 = v81[v85];
									v91[v93[2]] = v93[11 - 8];
									v85 = v85 + 1;
									v93 = v81[v85];
									v257 = 11;
								end
								if (v257 == 9) then
									v86 = (v260 + v262) - 1;
									v258 = 0;
									for v1047 = v262, v86 do
										v258 = v258 + 1;
										v91[v1047] = v259[v258];
									end
									v85 = v85 + 1;
									v93 = v81[v85];
									v262 = v93[2];
									v257 = 10;
								end
								if (v257 == 8) then
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v262 = v93[2];
									v259, v260 = v84(v91[v262](v91[v262 + 1]));
									v257 = 9;
								end
								if (v257 == 6) then
									for v1050 = v262, v86 do
										v258 = v258 + 1;
										v91[v1050] = v259[v258];
									end
									v85 = v85 + (3 - 2);
									v93 = v81[v85];
									v262 = v93[2];
									v91[v262] = v91[v262](v21(v91, v262 + 1, v86));
									v85 = v85 + 1;
									v257 = 7;
								end
								if (v257 == 11) then
									v85 = v93[3];
									break;
								end
								if (v257 == 3) then
									v261 = v91[v93[3]];
									v91[v262 + 1] = v261;
									v91[v262] = v261[v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v257 = 4;
								end
								if (v257 == 2) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v75[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v262 = v93[1667 - (970 + 695)];
									v257 = 3;
								end
								if (7 == v257) then
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v257 = 8;
								end
								if (v257 == 5) then
									v85 = v85 + (1991 - (582 + 1408));
									v93 = v81[v85];
									v262 = v93[2];
									v259, v260 = v84(v91[v262](v21(v91, v262 + 1, v93[3])));
									v86 = (v260 + v262) - 1;
									v258 = 0;
									v257 = 6;
								end
								if (v257 == 4) then
									v85 = v85 + (1 - 0);
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v257 = 5;
								end
								if (v257 == 1) then
									v93 = v81[v85];
									v262 = v93[287 - (134 + 151)];
									v91[v262] = v91[v262]();
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v257 = 2;
								end
								if (v257 == 0) then
									v258 = nil;
									v259, v260 = nil;
									v261 = nil;
									v262 = nil;
									v91[v93[2]] = v75[v93[3]];
									v85 = v85 + 1;
									v257 = 1;
								end
							end
						end
					elseif (v94 <= 43) then
						if (v94 <= 41) then
							if (v94 == 40) then
								local v263 = 0;
								local v264;
								local v265;
								local v266;
								local v267;
								while true do
									if (v263 == 14) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]] % v93[2 + 2];
										v85 = v85 + 1;
										v93 = v81[v85];
										v267 = v93[2];
										v263 = 15;
									end
									if (v263 == 10) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v93[3] + v91[v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[1639 - (1373 + 263)]] + v93[4];
										v263 = 11;
									end
									if (v263 == 3) then
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + (1 - 0);
										v93 = v81[v85];
										v263 = 4;
									end
									if (v263 == 6) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[783 - (162 + 618)]];
										v263 = 7;
									end
									if (v263 == 9) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = #v91[v93[4 - 1]];
										v85 = v85 + 1 + 0;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]] % v91[v93[4]];
										v263 = 10;
									end
									if (v263 == 15) then
										v265, v266 = v84(v91[v267](v91[v267 + 1]));
										v86 = (v266 + v267) - 1;
										v264 = 0;
										for v1053 = v267, v86 do
											local v1054 = 0;
											while true do
												if (v1054 == 0) then
													v264 = v264 + 1;
													v91[v1053] = v265[v264];
													break;
												end
											end
										end
										v85 = v85 + 1;
										v93 = v81[v85];
										v263 = 16;
									end
									if (2 == v263) then
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + (1825 - (1195 + 629));
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v263 = 3;
									end
									if (v263 == 7) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2 + 0]] = #v91[v93[2 + 1]];
										v263 = 8;
									end
									if (v263 == 13) then
										v264 = 0;
										for v1055 = v267, v86 do
											local v1056 = 0;
											while true do
												if (v1056 == 0) then
													v264 = v264 + 1;
													v91[v1055] = v265[v264];
													break;
												end
											end
										end
										v85 = v85 + 1;
										v93 = v81[v85];
										v267 = v93[2];
										v91[v267] = v91[v267](v21(v91, v267 + 1, v86));
										v263 = 14;
									end
									if (v263 == 5) then
										v264 = 0;
										for v1057 = v267, v86 do
											v264 = v264 + 1;
											v91[v1057] = v265[v264];
										end
										v85 = v85 + 1;
										v93 = v81[v85];
										v267 = v93[2];
										v91[v267] = v91[v267](v21(v91, v267 + 1, v86));
										v263 = 6;
									end
									if (v263 == 16) then
										v267 = v93[2];
										v91[v267](v21(v91, v267 + 1, v86));
										break;
									end
									if (v263 == 11) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v267 = v93[2];
										v265, v266 = v84(v91[v267](v21(v91, v267 + 1, v93[3])));
										v86 = (v266 + v267) - 1;
										v264 = 1000 - (451 + 549);
										v263 = 12;
									end
									if (v263 == 1) then
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v74[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v263 = 2;
									end
									if (v263 == 12) then
										for v1060 = v267, v86 do
											local v1061 = 0;
											while true do
												if (v1061 == 0) then
													v264 = v264 + 1;
													v91[v1060] = v265[v264];
													break;
												end
											end
										end
										v85 = v85 + 1;
										v93 = v81[v85];
										v267 = v93[2];
										v265, v266 = v84(v91[v267](v21(v91, v267 + 1, v86)));
										v86 = (v266 + v267) - 1;
										v263 = 13;
									end
									if (v263 == 8) then
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v91[v93[6 - 3]] % v91[v93[4]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v91[v93[2]] = v93[3] + v91[v93[4]];
										v263 = 9;
									end
									if (v263 == 4) then
										v91[v93[2]] = v91[v93[3]] + v93[4];
										v85 = v85 + 1;
										v93 = v81[v85];
										v267 = v93[2];
										v265, v266 = v84(v91[v267](v21(v91, v267 + (242 - (187 + 54)), v93[3])));
										v86 = (v266 + v267) - 1;
										v263 = 5;
									end
									if (v263 == 0) then
										v264 = nil;
										v265, v266 = nil;
										v267 = nil;
										v91[v93[2]] = v91[v93[3]];
										v85 = v85 + 1;
										v93 = v81[v85];
										v263 = 1;
									end
								end
							else
								local v268 = 0;
								local v269;
								local v270;
								local v271;
								while true do
									if (v268 == 0) then
										v269 = v93[2];
										v270 = v91[v269];
										v268 = 1;
									end
									if (v268 == 1) then
										v271 = v93[3];
										for v1062 = 1, v271 do
											v270[v1062] = v91[v269 + v1062];
										end
										break;
									end
								end
							end
						elseif (v94 > 42) then
							if (v91[v93[2 - 0]] == v93[4]) then
								v85 = v85 + 1;
							else
								v85 = v93[4 - 1];
							end
						else
							v91[v93[2]] = v74[v93[3]];
						end
					elseif (v94 <= 45) then
						if (v94 > 44) then
							v91[v93[2]] = {};
						else
							local v275 = 0;
							local v276;
							local v277;
							while true do
								if (v275 == 0) then
									v276 = v93[2];
									v277 = v91[v93[3]];
									v275 = 1;
								end
								if (v275 == 1) then
									v91[v276 + 1] = v277;
									v91[v276] = v277[v93[4]];
									break;
								end
							end
						end
					elseif (v94 == 46) then
						local v278 = 0;
						while true do
							if (v278 == 0) then
								v91[v93[2]] = v75[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[1388 - (746 + 638)]];
								v278 = 1;
							end
							if (v278 == 3) then
								v91[v93[2]] = v75[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[2 + 1]][v93[4]];
								v278 = 4;
							end
							if (v278 == 4) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2 - 0]] = v75[v93[3]];
								v85 = v85 + 1;
								v278 = 5;
							end
							if (v278 == 1) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v75[v93[3]];
								v85 = v85 + 1;
								v278 = 2;
							end
							if (v278 == 5) then
								v93 = v81[v85];
								if not v91[v93[2]] then
									v85 = v85 + 1;
								else
									v85 = v93[3];
								end
								break;
							end
							if (v278 == 2) then
								v93 = v81[v85];
								v91[v93[2]] = v91[v93[3]][v93[4]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v278 = 3;
							end
						end
					else
						local v279 = 0;
						local v280;
						while true do
							if (v279 == 0) then
								v280 = v93[2];
								v91[v280] = v91[v280](v21(v91, v280 + 1, v93[3]));
								break;
							end
						end
					end
				elseif (v94 <= (396 - (218 + 123))) then
					if (v94 <= 51) then
						if (v94 <= 49) then
							if (v94 > 48) then
								local v281 = 0;
								local v282;
								while true do
									if (v281 == 0) then
										v282 = v93[2];
										v91[v282] = v91[v282](v21(v91, v282 + 1, v86));
										break;
									end
								end
							else
								local v283 = 0;
								local v284;
								while true do
									if (v283 == 0) then
										v284 = v93[2];
										v91[v284](v91[v284 + 1]);
										break;
									end
								end
							end
						elseif (v94 == 50) then
							v91[v93[2]] = v91[v93[3]] * v93[4];
						else
							local v286 = 0;
							local v287;
							local v288;
							while true do
								if (v286 == 1) then
									for v1065 = v287 + 1, v86 do
										v15(v288, v91[v1065]);
									end
									break;
								end
								if (v286 == 0) then
									v287 = v93[1583 - (1535 + 46)];
									v288 = v91[v287];
									v286 = 1;
								end
							end
						end
					elseif (v94 <= 53) then
						if (v94 == 52) then
							local v289 = 0;
							local v290;
							while true do
								if (v289 == 7) then
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v289 = 8;
								end
								if (0 == v289) then
									v290 = nil;
									v91[v93[2 + 0]] = v91[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v289 = 1;
								end
								if (v289 == 10) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]][v93[4]];
									v85 = v85 + 1;
									v289 = 11;
								end
								if (v289 == 1) then
									v91[v93[2]] = {};
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[1 + 2]];
									v289 = 2;
								end
								if (v289 == 9) then
									v91[v290] = v91[v290](v21(v91, v290 + (1 - 0), v93[3]));
									v85 = v85 + (1468 - (899 + 568));
									v93 = v81[v85];
									v91[v93[2]] = v75[v93[3]];
									v289 = 10;
								end
								if (v289 == 3) then
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1 + 0;
									v93 = v81[v85];
									v289 = 4;
								end
								if (6 == v289) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v289 = 7;
								end
								if (v289 == 8) then
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v93 = v81[v85];
									v290 = v93[2];
									v289 = 9;
								end
								if (v289 == 11) then
									v93 = v81[v85];
									if v91[v93[2]] then
										v85 = v85 + 1;
									else
										v85 = v93[3];
									end
									break;
								end
								if (v289 == 2) then
									v85 = v85 + (561 - (306 + 254));
									v93 = v81[v85];
									v91[v93[2]] = v93[3];
									v85 = v85 + 1;
									v289 = 3;
								end
								if (v289 == 4) then
									v290 = v93[2];
									v91[v290] = v91[v290](v21(v91, v290 + 1, v93[3]));
									v85 = v85 + 1;
									v93 = v81[v85];
									v289 = 5;
								end
								if (5 == v289) then
									v91[v93[2]] = {};
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
									v289 = 6;
								end
							end
						elseif not v91[v93[2 + 0]] then
							v85 = v85 + 1;
						else
							v85 = v93[3];
						end
					elseif (v94 > 54) then
						local v291 = 0;
						local v292;
						local v293;
						local v294;
						while true do
							if (v291 == 4) then
								v293 = v91[v294];
								v292 = v91[v294 + 2];
								if (v292 > 0) then
									if (v293 > v91[v294 + 1]) then
										v85 = v93[3];
									else
										v91[v294 + 3] = v293;
									end
								elseif (v293 < v91[v294 + 1]) then
									v85 = v93[3];
								else
									v91[v294 + 3] = v293;
								end
								break;
							end
							if (v291 == 1) then
								v85 = v85 + 1;
								v93 = v81[v85];
								v91[v93[2]] = v93[3];
								v85 = v85 + 1;
								v291 = 2;
							end
							if (v291 == 3) then
								v91[v93[4 - 2]] = v93[3];
								v85 = v85 + 1;
								v93 = v81[v85];
								v294 = v93[605 - (268 + 335)];
								v291 = 4;
							end
							if (v291 == 2) then
								v93 = v81[v85];
								v91[v93[2]] = #v91[v93[3]];
								v85 = v85 + 1;
								v93 = v81[v85];
								v291 = 3;
							end
							if (v291 == 0) then
								v292 = nil;
								v293 = nil;
								v294 = nil;
								v91[v93[2]] = {};
								v291 = 1;
							end
						end
					else
						do
							return v91[v93[2]]();
						end
					end
				elseif (v94 <= 59) then
					if (v94 <= 57) then
						if (v94 > 56) then
							local v295;
							local v296;
							local v297;
							v91[v93[292 - (60 + 230)]] = v74[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + (573 - (426 + 146));
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v297 = v93[2];
							v91[v297] = v91[v297](v21(v91, v297 + 1, v93[3]));
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = {};
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]][v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = {};
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v74[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v297 = v93[2];
							v91[v297] = v91[v297](v21(v91, v297 + 1, v93[3]));
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]][v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v297 = v93[2];
							v91[v297] = v91[v297]();
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]][v91[v93[3]]] = v91[v93[1 + 3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[1458 - (282 + 1174)]] = {};
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]][v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]][v93[4]];
							v85 = v85 + (812 - (569 + 242));
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]][v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = {};
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v74[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + (2 - 1);
							v93 = v81[v85];
							v297 = v93[2];
							v91[v297] = v91[v297](v21(v91, v297 + 1 + 0, v93[1027 - (706 + 318)]));
							v85 = v85 + (1252 - (721 + 530));
							v93 = v81[v85];
							v91[v93[2]] = {};
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v74[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v297 = v93[2];
							v91[v297] = v91[v297](v21(v91, v297 + (1272 - (945 + 326)), v93[3]));
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[4 - 2]] = v74[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v93 = v81[v85];
							v297 = v93[2];
							v91[v297] = v91[v297](v21(v91, v297 + 1, v93[3 + 0]));
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[702 - (271 + 429)]][v91[v93[3]]] = v91[v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2 + 0]] = {};
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v91[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v297 = v93[1502 - (1408 + 92)];
							v296 = v91[v297];
							v295 = v93[3];
							for v338 = 1, v295 do
								v296[v338] = v91[v297 + v338];
							end
						else
							local v315 = 0;
							local v316;
							local v317;
							local v318;
							local v319;
							local v320;
							while true do
								if (v315 == 0) then
									v316 = nil;
									v317 = nil;
									v318, v319 = nil;
									v320 = nil;
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v315 = 1;
								end
								if (1 == v315) then
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[3]];
									v85 = v85 + 1;
									v315 = 2;
								end
								if (v315 == 4) then
									v93 = v81[v85];
									v320 = v93[2];
									v318, v319 = v84(v91[v320](v21(v91, v320 + 1, v93[3])));
									v86 = (v319 + v320) - 1;
									v317 = 0;
									for v1066 = v320, v86 do
										local v1067 = 0;
										while true do
											if (v1067 == 0) then
												v317 = v317 + 1;
												v91[v1066] = v318[v317];
												break;
											end
										end
									end
									v315 = 5;
								end
								if (v315 == 2) then
									v93 = v81[v85];
									v91[v93[2]] = {};
									v85 = v85 + 1;
									v93 = v81[v85];
									v91[v93[2]] = v74[v93[1089 - (461 + 625)]];
									v85 = v85 + 1;
									v315 = 3;
								end
								if (v315 == 3) then
									v93 = v81[v85];
									v91[v93[2]] = v91[v93[3]];
									v85 = v85 + 1;
									v93 = v81[v85];
									for v1068 = v93[2], v93[3] do
										v91[v1068] = nil;
									end
									v85 = v85 + 1;
									v315 = 4;
								end
								if (v315 == 5) then
									v85 = v85 + 1;
									v93 = v81[v85];
									v320 = v93[2];
									v316 = v91[v320];
									for v1070 = v320 + 1, v86 do
										v15(v316, v91[v1070]);
									end
									break;
								end
							end
						end
					elseif (v94 > 58) then
						do
							return;
						end
					else
						v91[v93[2]][v91[v93[3]]] = v93[4];
					end
				elseif (v94 <= 61) then
					if (v94 == 60) then
						v91[v93[2]] = #v91[v93[3]];
					else
						local v324 = v93[2];
						local v325, v326 = v84(v91[v324](v21(v91, v324 + 1, v86)));
						v86 = (v326 + v324) - (1289 - (993 + 295));
						local v327 = 0;
						for v341 = v324, v86 do
							local v342 = 0;
							while true do
								if (v342 == 0) then
									v327 = v327 + 1;
									v91[v341] = v325[v327];
									break;
								end
							end
						end
					end
				elseif (v94 == 62) then
					if (v93[2] == v91[v93[4]]) then
						v85 = v85 + 1;
					else
						v85 = v93[1 + 2];
					end
				else
					local v328 = 0;
					local v329;
					while true do
						if (v328 == 3) then
							v93 = v81[v85];
							v329 = v93[2];
							v91[v329] = v91[v329](v21(v91, v329 + 1, v93[3]));
							break;
						end
						if (v328 == 0) then
							v329 = nil;
							v91[v93[2]][v91[v93[3]]] = v91[v93[4]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v328 = 1;
						end
						if (2 == v328) then
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v85 = v85 + 1;
							v328 = 3;
						end
						if (v328 == 1) then
							v91[v93[2]] = v74[v93[3]];
							v85 = v85 + 1;
							v93 = v81[v85];
							v91[v93[2]] = v93[3];
							v328 = 2;
						end
					end
				end
				v85 = v85 + 1;
			end
		end;
	end
	return v40(v39(), {}, v28)(...);
end
v23("LOL!0D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O006D6174636803083O00746F6E756D62657203053O007063612O6C00243O00122E3O00013O00206O000200122O000100013O00202O00010001000300122O000200013O00202O00020002000400122O000300053O00062O0003000A000100010004193O000A000100120E000300063O00201800040003000700120E000500083O00201800050005000900120E000600083O00201800060006000A00061100073O000100062O00213O00064O00218O00213O00044O00213O00014O00213O00024O00213O00053O00120E000800013O00201800080008000B00120E0009000C3O00120E000A000D3O000611000B0001000100052O00213O00074O00213O00094O00213O00084O00213O000A4O00213O000B4O0021000C000B4O0036000C00014O0003000C6O003B3O00013O00023O00023O00026O00F03F026O00704002264O003700025O00122O000300016O00045O00122O000500013O00042O0003002100012O002A00076O0028000800026O000900016O000A00026O000B00036O000C00046O000D8O000E00063O00202O000F000600014O000C000F6O000B3O00024O000C00036O000D00046O000E00016O000F00016O000F0006000F00102O000F0001000F4O001000016O00100006001000102O00100001001000202O0010001000014O000D00106O000C8O000A3O000200202O000A000A00024O0009000A6O00073O00010004020003000500012O002A000300054O0021000400024O0001000300044O000300036O003B3O00017O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001C3O0006115O000100012O002A8O0038000100016O000200026O000300026O00048O000500036O00068O000700076O000500076O00043O000100201800040004000100121C000500026O00030005000200122O000400036O000200046O00013O000200262O00010018000100040004193O001800012O002100016O002D00026O0001000100024O000300015O0004193O001B00012O002A000100044O0036000100014O000300016O003B3O00013O00013O00033O0003043O007461736B03053O00737061776E026O00F03F010A3O0006093O000800013O0004193O0008000100120E000100013O00201800010001000200061100023O000100012O002A8O00300001000200010004193O0009000100201800013O00032O003B3O00013O00013O00783O00028O00026O00F03F027O0040026O00084003043O00696E697403073O0067657472656E7603073O007265717569726503043O0067616D65030A3O0047657453657276696365030C3O00DB49CF33CC417BB5F941D82503083O00DE9826BD569C201803093O00576F726B737061636503083O005061636B6167657303153O00526F626C6F78412O705549426C6F78436F6E666967030C3O0065F345A2B57C45F756A0806E03063O001D269C37C7E503063O005549426C6F78030C3O005E733AAD4D7D2BA37C7B2DBB03043O00C81D1C4803053O00526F616374026O00104003053O006D6F756E7403073O00436F7265477569030D3O00637265617465456C656D656E7403053O00E9C82D15BA03063O00149ABC5479DF030A3O009E2F93C4BE58EC84368403073O00BFED4CE1A1DB3603093O00776F726B7370616365030D3O0043752O72656E7443616D657261030C3O0056696577706F727453697A6503073O00566563746F72322O033O006E6577026O009E40025O00E0904003113O00375F34503748B4335F3E71205DA1335C2303073O00C05A305035452903193O00E33EB209E023B105FD3F8819E32E9805E028AE09E33FB50FFD03043O0060934BDC03063O002E0726DC16BF03073O00B76A624AB962DA03093O001BAFCC3529C2DF231C03083O005779CAAB5C4786BE03083O004461746554696D6503173O0066726F6D556E697854696D657374616D704D692O6C69732O033O006E6F7703133O00556E697854696D657374616D704D692O6C697303043O006D61746803063O0072616E646F6D026O001840026O004E40025O00408F4003093O00546F49736F44617465031A3O003BC42D8B3DC83A893DC40D8B2ACE39863DE02F9C20D72D9C2CC503043O00E849A14C2O01030D3O00B9D846680AAFDC505C10B8DC5103053O007EDBB9223D030D3O0001CB4D617F70F6D303FB4D776C03083O00876CAE3E121E179303083O00746F737472696E67031D3O0093F13AC717A727D4F6CD2FDF1DAD27C2B2A9678B28A232C4B3C00E8B4503083O00A7D6894AAB78CE5303073O00506C6163654944030E3O009FF52050EB8688E43B4BF9B38EF403063O00C7EB90523D98031C3O000419B4261218B03F1E31AC220313B5220913AA0A0402B03D0602BC2F03043O004B6776D903143O00D4416004B60CD3727F06B43FC4407902B80AC25003063O007EA7341074D9031A3O00DA2B2183A010EAC93A25A1B71AF3DD2034A1B70DF5DE2F3485B003073O009CA84E40E0D479030E3O000BE1A2C112FA86CF0BE2A7CF04E503043O00AE678EC5030E3O005124503A2452DF4321762O365BEC03073O009836483F58453E2O033O00C0CBFE03043O003CB4A48E030C3O007B51172C17EC11535F022C3403073O0072383E6549478D03053O005374796C6503063O005468656D657303093O004461726B5468656D65030C3O009BE6C9C188E8D8CFB9EEDED703043O00A4D889BB03053O00466F6E747303063O00476F7468616D030A3O00F5F33881A3EC1DDBE53403073O006BB28651D2C69E030A3O00436C656172452O726F7203073O001B0190C38D2D0703053O00CA586EE2A603093O00526F626C6F7847756903073O004D6F64756C657303063O004C7561412O70030A3O00436F6D706F6E656E7473030A3O004D6F6465726174696F6E03103O004D6F6465726174696F6E50726F6D707403073O00506C6179657273030B3O004C6F63616C506C6179657203043O004B69636B030C3O00E00090F2FAC20C89F6CDC61C03053O00AAA36FE29703103O00526F626C6F78412O704C6F63616C6573030C3O004C6F63616C697A6174696F6E030C3O00323FA03D7E362A1A31B53D5D03073O00497150D2582E5703143O004C6F63616C697A6174696F6E50726F766964657203093O00B22FDF17E28F0BD81B03053O0087E14CAD72030C3O0016E2BBB1A0B4BD1BF9B1BFA203073O00C77A8DD8D0CCDD03043O006D6F636B03083O0050726F766964657203053O00BEC909FC7D03063O0096CDBD70901803053O00118CBA410103083O007045E4DF2C64E87103043O00F21009C703073O00E6B47F67B3D61C007C012O00124O00014O001E0001000A3O00262B3O0006000100020004193O000600012O001E000400063O00124O00033O00262B3O000A000100030004193O000A00012O001E000700093O00124O00043O00262B3O000F000100010004193O000F000100122O000100014O001E000200033O00124O00023O00262B3O0002000100040004193O000200012O001E000A000A3O00262B00010047000100010004193O0047000100122O000B00013O00262B000B0029000100020004193O00290001002018000C00020005001227000D00066O000D0001000200202O000D000D000700122O000E00083O00202O000E000E00094O00105O00122O0011000A3O00122O0012000B6O001000126O000E3O000200202O000E000E000C00202O000E000E000D00202O000E000E000E4O000D000E6O000C3O000100122O000100023O00044O0047000100262B000B0015000100010004193O0015000100120E000C00064O000C000C0001000200202O000C000C000700122O000D00083O00202O000D000D00094O000F5O00122O0010000F3O00122O001100106O000F00116O000D3O000200202O000D000D00114O000C000200024O0002000C3O00122O000C00066O000C0001000200202O000C000C000700122O000D00083O00202O000D000D00094O000F5O00122O001000123O00122O001100136O000F00116O000D3O000200202O000D000D00144O000C000200024O0003000C3O00122O000B00023O00044O0015000100262B0001004F000100150004193O004F0001002018000B000300162O0005000C000A3O00122O000D00083O00202O000D000D00174O000B000D000100044O007B2O0100262B000100F7000100030004193O00F70001002018000B000300182O0034000C00046O000D3O00094O000E5O00122O000F00193O00122O0010001A6O000E001000024O000F8O000D000E000F4O000E5O00122O000F001B3O00122O0010001C6O000E0010000200122O000F001D3O00202O000F000F001E00062O000F006700013O0004193O0067000100120E000F001D3O002018000F000F001E002018000F000F001F000635000F006C000100010004193O006C000100120E000F00203O002018000F000F002100122O001000223O00122O001100234O002F000F001100022O0013000D000E000F2O001B000E5O00122O000F00243O00122O001000256O000E001000024O000F3O00054O00105O00122O001100263O00122O001200276O0010001200024O00115O00122O001200283O00122O001300296O0011001300024O000F001000114O00105O00122O0011002A3O00122O0012002B6O00100012000200122O0011002C3O00202O00110011002D00122O0012002C3O00202O00120012002E4O00120001000200202O00120012002F00122O001300303O00202O00130013003100122O001400023O00122O001500326O00130015000200102O00130033001300202O0013001300344O0012001200134O00110002000200202O0011001100354O0011000200024O000F001000114O00105O00122O001100363O00122O001200376O00100012000200202O000F001000384O00105O00122O001100393O00122O0012003A6O0010001200024O00118O000F001000114O00105O00122O0011003B3O00122O0012003C6O00100012000200122O0011003D6O00125O00122O0013003E3O00122O0014003F6O00120014000200122O001300083O00202O0013001300404O0012001200134O0011000200024O000F001000114O000D000E000F4O000E5O00122O000F00413O00122O001000426O000E00100002000206000F6O000B000D000E000F4O000E5O00122O000F00433O00122O001000446O000E00100002000206000F00014O000B000D000E000F4O000E5O00122O000F00453O00122O001000466O000E00100002000206000F00024O000B000D000E000F4O000E5O00122O000F00473O00122O001000486O000E00100002000206000F00034O000B000D000E000F4O000E5O00122O000F00493O00122O0010004A6O000E00100002000206000F00044O001F000D000E000F4O000E5O00122O000F004B3O00122O0010004C6O000E001000024O000F3O00014O00105O00122O0011004D3O00122O0012004E6O00100012000200202O000F001000014O000D000E000F4O000B000D00024O0005000B3O00122O000B00066O000B0001000200202O000B000B000700122O000C00083O00202O000C000C00094O000E5O00122O000F004F3O00122O001000506O000E00106O000C3O000200202O000C000C000C00202O000C000C000D00202O000C000C00514O000B0002000200202O000B000B005200202O0006000B005300122O000B00066O000B0001000200202O000B000B000700122O000C00083O00202O000C000C00094O000E5O00122O000F00543O00122O001000556O000E00106O000C3O000200202O000C000C000C00202O000C000C000D00202O000C000C00514O000B0002000200202O000B000B005600202O0007000B005700122O000100043O00262B000100222O0100020004193O00222O0100122O000B00013O00262B000B00072O0100020004193O00072O0100120E000C00083O002024000C000C00094O000E5O00122O000F00583O00122O001000596O000E00106O000C3O000200202O000C000C005A4O000C0002000100122O000100033O00044O00222O01000E3E000100FA0001000B0004193O00FA000100120E000C00064O0007000C0001000200202O000C000C000700122O000D00083O00202O000D000D00094O000F5O00122O0010005B3O00122O0011005C6O000F00116O000D3O000200202O000D000D005D00202O000D000D005E00202O000D000D005F00202O000D000D006000202O000D000D006100202O000D000D00624O000C000200024O0004000C3O00122O000C00083O00202O000C000C006300202O000C000C006400202O000C000C00654O000C0002000100122O000B00023O00044O00FA000100262B00010012000100040004193O0012000100122O000B00013O00262B000B00462O0100010004193O00462O0100120E000C00064O0020000C0001000200202O000C000C000700122O000D00083O00202O000D000D00094O000F5O00122O001000663O00122O001100676O000F00116O000D3O000200202O000D000D000C00202O000D000D000D00202O000D000D00684O000C0002000200202O0008000C006900122O000C00066O000C0001000200202O000C000C000700122O000D00083O00202O000D000D00094O000F5O00122O0010006A3O00122O0011006B6O000F00116O000D3O000200202O000D000D000C00202O000D000D000D00202O000D000D00694O000C0002000200202O0009000C006C00122O000B00023O00262B000B00252O0100020004193O00252O01002018000C000300182O0039000D5O00122O000E006D3O00122O000F006E6O000D000F00024O000E5O00202O000F000300184O001000096O00113O00014O00125O00122O0013006F3O00122O001400706O00120014000200202O0013000800714O0013000100024O0011001200134O00125O00202O00130003001800202O00140002005100202O0014001400724O00153O00014O00165O00122O001700733O00122O001800746O0016001800024O00173O00024O00185O00122O001900753O00122O001A00766O0018001A00024O0017001800064O00185O00122O001900773O00122O001A00786O0018001A00024O0017001800074O0015001600174O001600016O001700056O0016000100012O0014001300164O003300123O00012O0014000F00124O0031000C3O00022O0021000A000C3O00122O000100153O0004193O001200010004193O00252O010004193O001200010004193O007B2O010004193O000200012O003B3O00013O00053O00023O0003043O0067616D6503083O0053687574646F776E00043O00120E3O00013O00202C5O00022O00303O000200012O003B3O00017O00023O0003043O0067616D6503083O0053687574646F776E00043O00120E3O00013O00202C5O00022O00303O000200012O003B3O00017O00023O0003043O0067616D6503083O0053687574646F776E00043O00120E3O00013O00202C5O00022O00303O000200012O003B3O00017O00023O0003043O0067616D6503083O0053687574646F776E00043O00120E3O00013O00202C5O00022O00303O000200012O003B3O00019O003O00023O0004195O00012O003B3O00017O00", v17(), ...);
