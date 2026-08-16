package org.luaj.vm2.luajc;

import org.luaj.vm2.LocVars;
import org.luaj.vm2.Lua;
import org.luaj.vm2.Prototype;
import org.luaj.vm2.Upvaldesc;

public class JavaGen {
    public final byte[] bytecode;
    public final String classname;
    public final JavaGen[] inners;

    public JavaGen(Prototype prototype, String str, String str2, boolean z10) {
        this(new ProtoInfo(prototype, str), str, str2, z10);
    }

    private void loadLocalOrConstant(Prototype prototype, JavaBuilder javaBuilder, int i10, int i11) {
        if (i11 <= 255) {
            javaBuilder.loadLocal(i10, i11);
        } else {
            javaBuilder.loadConstant(prototype.f102764k[i11 & 255]);
        }
    }

    private void loadVarargResults(JavaBuilder javaBuilder, int i10, int i11, int i12) {
        if (i12 <= i11) {
            javaBuilder.loadVarresult();
            javaBuilder.subargs((i11 + 1) - i12);
        } else if (i12 == i11) {
            javaBuilder.loadVarresult();
        } else {
            javaBuilder.newVarargsVarresult(i10, i11, i12 - i11);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x020b, code lost:
    
        if (r10 != 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x020e, code lost:
    
        r5 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x020f, code lost:
    
        r4 = r9 + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x021d, code lost:
    
        if (r13 != 0) goto L127;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x005d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void scanInstructions(ProtoInfo protoInfo, String str, JavaBuilder javaBuilder) {
        int i10;
        int i11;
        boolean z10;
        Prototype prototype = protoInfo.prototype;
        int i12 = 0;
        int i13 = -1;
        while (true) {
            BasicBlock[] basicBlockArr = protoInfo.blocklist;
            if (i12 >= basicBlockArr.length) {
                return;
            }
            BasicBlock basicBlock = basicBlockArr[i12];
            for (int i14 = 0; i14 < prototype.maxstacksize; i14++) {
                int i15 = basicBlock.pc0;
                if (protoInfo.isUpvalueCreate(i15, i14) && protoInfo.vars[i14][i15].isPhiVar()) {
                    javaBuilder.convertToUpvalue(i15, i14);
                }
            }
            int i16 = basicBlock.pc0;
            while (i16 <= basicBlock.pc1) {
                int i17 = prototype.code[i16];
                int[] iArr = prototype.lineinfo;
                int i18 = i16 < iArr.length ? iArr[i16] : -1;
                int GET_OPCODE = Lua.GET_OPCODE(i17);
                int GETARG_A = Lua.GETARG_A(i17);
                int GETARG_B = Lua.GETARG_B(i17);
                int GETARG_Bx = Lua.GETARG_Bx(i17);
                int GETARG_sBx = Lua.GETARG_sBx(i17);
                int GETARG_C = Lua.GETARG_C(i17);
                switch (GET_OPCODE) {
                    case 0:
                        javaBuilder.loadLocal(i16, GETARG_B);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 1:
                        javaBuilder.loadConstant(prototype.f102764k[GETARG_Bx]);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 3:
                        javaBuilder.loadBoolean(GETARG_B != 0);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        if (GETARG_C != 0) {
                            javaBuilder.addBranch(i16, 1, i16 + 2);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        javaBuilder.loadNil();
                        while (GETARG_B >= 0) {
                            if (GETARG_B > 0) {
                                javaBuilder.dup();
                            }
                            javaBuilder.storeLocal(i16, GETARG_A);
                            GETARG_A++;
                            GETARG_B--;
                        }
                        break;
                    case 5:
                        javaBuilder.loadUpvalue(GETARG_B);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 6:
                        javaBuilder.loadUpvalue(GETARG_B);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.getTable();
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 7:
                        javaBuilder.loadLocal(i16, GETARG_B);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.getTable();
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 8:
                        javaBuilder.loadUpvalue(GETARG_A);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_B);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.setTable();
                        break;
                    case 9:
                        javaBuilder.storeUpvalue(i16, GETARG_B, GETARG_A);
                        break;
                    case 10:
                        javaBuilder.loadLocal(i16, GETARG_A);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_B);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.setTable();
                        break;
                    case 11:
                        javaBuilder.newTable(GETARG_B, GETARG_C);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 12:
                        javaBuilder.loadLocal(i16, GETARG_B);
                        javaBuilder.dup();
                        javaBuilder.storeLocal(i16, GETARG_A + 1);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.getTable();
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_B);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.binaryop(GET_OPCODE);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 19:
                    case 20:
                    case 21:
                        javaBuilder.loadLocal(i16, GETARG_B);
                        javaBuilder.unaryop(GET_OPCODE);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 22:
                        for (int i19 = GETARG_B; i19 <= GETARG_C; i19++) {
                            javaBuilder.loadLocal(i16, i19);
                        }
                        if (GETARG_C > GETARG_B + 1) {
                            javaBuilder.tobuffer();
                            while (true) {
                                GETARG_C--;
                                if (GETARG_C >= GETARG_B) {
                                    javaBuilder.concatbuffer();
                                } else {
                                    javaBuilder.tovalue();
                                }
                            }
                        } else {
                            javaBuilder.concatvalue();
                        }
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 23:
                        if (GETARG_A > 0) {
                            for (int i20 = GETARG_A - 1; i20 < protoInfo.openups.length; i20++) {
                                javaBuilder.closeUpvalue(i16, i20);
                            }
                        }
                        javaBuilder.addBranch(i16, 1, i16 + 1 + GETARG_sBx);
                        break;
                    case 24:
                    case 25:
                    case 26:
                        i10 = 2;
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_B);
                        loadLocalOrConstant(prototype, javaBuilder, i16, GETARG_C);
                        javaBuilder.compareop(GET_OPCODE);
                        break;
                    case 27:
                        i10 = 2;
                        javaBuilder.loadLocal(i16, GETARG_A);
                        javaBuilder.toBoolean();
                        break;
                    case 28:
                        javaBuilder.loadLocal(i16, GETARG_B);
                        javaBuilder.toBoolean();
                        javaBuilder.addBranch(i16, GETARG_C == 0 ? 2 : 3, i16 + 2);
                        javaBuilder.loadLocal(i16, GETARG_B);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        break;
                    case 29:
                        javaBuilder.loadLocal(i16, GETARG_A);
                        int i21 = GETARG_B - 1;
                        if (i21 == -1) {
                            loadVarargResults(javaBuilder, i16, GETARG_A + 1, i13);
                        } else if (i21 == 0 || i21 == 1 || i21 == 2 || i21 == 3) {
                            for (int i22 = 1; i22 < GETARG_B; i22++) {
                                javaBuilder.loadLocal(i16, GETARG_A + i22);
                            }
                            z10 = i21 >= 0 || GETARG_C < 1 || GETARG_C > 2;
                            if (z10) {
                                javaBuilder.call(i21);
                            } else {
                                javaBuilder.invoke(i21);
                            }
                            if (GETARG_C != 0) {
                                if (GETARG_C != 1) {
                                    if (GETARG_C != 2) {
                                        int i23 = 1;
                                        while (i23 < GETARG_C) {
                                            int i24 = i23 + 1;
                                            if (i24 < GETARG_C) {
                                                javaBuilder.dup();
                                            }
                                            javaBuilder.arg(i23);
                                            javaBuilder.storeLocal(i16, (i23 + GETARG_A) - 1);
                                            i23 = i24;
                                        }
                                        break;
                                    } else {
                                        if (z10) {
                                            javaBuilder.arg(1);
                                        }
                                        javaBuilder.storeLocal(i16, GETARG_A);
                                    }
                                }
                                javaBuilder.pop();
                            }
                            javaBuilder.storeVarresult();
                            i13 = GETARG_A;
                        } else {
                            javaBuilder.newVarargs(i16, GETARG_A + 1, i21);
                        }
                        i21 = -1;
                        if (i21 >= 0) {
                        }
                        if (z10) {
                        }
                        if (GETARG_C != 0) {
                        }
                        javaBuilder.storeVarresult();
                        i13 = GETARG_A;
                    case 30:
                        javaBuilder.loadLocal(i16, GETARG_A);
                        if (GETARG_B == 0) {
                            loadVarargResults(javaBuilder, i16, GETARG_A + 1, i13);
                        } else if (GETARG_B != 1) {
                            int i25 = GETARG_A + 1;
                            if (GETARG_B != 2) {
                                javaBuilder.newVarargs(i16, i25, GETARG_B - 1);
                            } else {
                                javaBuilder.loadLocal(i16, i25);
                            }
                        } else {
                            javaBuilder.loadNone();
                        }
                        javaBuilder.newTailcallVarargs();
                        javaBuilder.areturn();
                        break;
                    case 31:
                        if (GETARG_C != 1) {
                            if (GETARG_B == 0) {
                                loadVarargResults(javaBuilder, i16, GETARG_A, i13);
                            } else if (GETARG_B != 1) {
                                if (GETARG_B != 2) {
                                    javaBuilder.newVarargs(i16, GETARG_A, GETARG_B - 1);
                                } else {
                                    javaBuilder.loadLocal(i16, GETARG_A);
                                }
                            }
                            javaBuilder.areturn();
                            break;
                        }
                        javaBuilder.loadNone();
                        javaBuilder.areturn();
                    case 32:
                        javaBuilder.loadLocal(i16, GETARG_A);
                        int i26 = GETARG_A + 2;
                        javaBuilder.loadLocal(i16, i26);
                        javaBuilder.binaryop(13);
                        javaBuilder.dup();
                        javaBuilder.dup();
                        javaBuilder.storeLocal(i16, GETARG_A);
                        javaBuilder.storeLocal(i16, GETARG_A + 3);
                        javaBuilder.loadLocal(i16, GETARG_A + 1);
                        javaBuilder.loadLocal(i16, i26);
                        javaBuilder.testForLoop();
                        i11 = i16 + 1 + GETARG_sBx;
                        r5 = 2;
                        javaBuilder.addBranch(i16, r5, i11);
                        break;
                    case 33:
                        javaBuilder.loadLocal(i16, GETARG_A);
                        javaBuilder.loadLocal(i16, GETARG_A + 2);
                        javaBuilder.binaryop(14);
                        javaBuilder.storeLocal(i16, GETARG_A);
                        javaBuilder.addBranch(i16, 1, i16 + 1 + GETARG_sBx);
                        break;
                    case 34:
                        javaBuilder.loadLocal(i16, GETARG_A);
                        javaBuilder.loadLocal(i16, GETARG_A + 1);
                        int i27 = GETARG_A + 2;
                        javaBuilder.loadLocal(i16, i27);
                        javaBuilder.invoke(2);
                        for (int i28 = 1; i28 <= GETARG_C; i28++) {
                            if (i28 < GETARG_C) {
                                javaBuilder.dup();
                            }
                            javaBuilder.arg(i28);
                            javaBuilder.storeLocal(i16, i27 + i28);
                        }
                        break;
                    case 35:
                        javaBuilder.loadLocal(i16, GETARG_A + 1);
                        javaBuilder.dup();
                        javaBuilder.storeLocal(i16, GETARG_A);
                        javaBuilder.isNil();
                        i11 = i16 + 1 + GETARG_sBx;
                        javaBuilder.addBranch(i16, r5, i11);
                        break;
                    case 36:
                        int i29 = ((GETARG_C - 1) * 50) + 1;
                        javaBuilder.loadLocal(i16, GETARG_A);
                        int i30 = GETARG_A + 1;
                        if (GETARG_B == 0) {
                            int i31 = i13 - i30;
                            if (i31 > 0) {
                                javaBuilder.setlistStack(i16, i30, i29, i31);
                                i29 += i31;
                            }
                            javaBuilder.setlistVarargs(i29, i13);
                            break;
                        } else {
                            javaBuilder.setlistStack(i16, i30, i29, GETARG_B);
                            javaBuilder.pop();
                        }
                    case 37:
                        Prototype prototype2 = prototype.f102765p[GETARG_Bx];
                        int length = prototype2.upvalues.length;
                        String str2 = protoInfo.subprotos[GETARG_Bx].name;
                        javaBuilder.closureCreate(str2);
                        if (length > 0) {
                            javaBuilder.dup();
                        }
                        javaBuilder.storeLocal(i16, GETARG_A);
                        int i32 = 0;
                        while (i32 < length) {
                            int i33 = i32 + 1;
                            if (i33 < length) {
                                javaBuilder.dup();
                            }
                            Upvaldesc upvaldesc = prototype2.upvalues[i32];
                            boolean z11 = upvaldesc.instack;
                            short s10 = upvaldesc.idx;
                            if (z11) {
                                javaBuilder.closureInitUpvalueFromLocal(str2, i32, i16, s10);
                            } else {
                                javaBuilder.closureInitUpvalueFromUpvalue(str2, i32, s10);
                            }
                            i32 = i33;
                        }
                        break;
                    case 38:
                        if (GETARG_B == 0) {
                            javaBuilder.loadVarargs();
                            javaBuilder.storeVarresult();
                            i13 = GETARG_A;
                            break;
                        } else {
                            for (int i34 = 1; i34 < GETARG_B; i34++) {
                                javaBuilder.loadVarargs(i34);
                                javaBuilder.storeLocal(i16, GETARG_A);
                                GETARG_A++;
                            }
                        }
                }
                javaBuilder.onEndOfLuaInstruction(i16, i18);
                i16++;
            }
            i12++;
        }
    }

    private JavaGen(ProtoInfo protoInfo, String str, String str2, boolean z10) {
        this.classname = str;
        JavaBuilder javaBuilder = new JavaBuilder(protoInfo, str, str2);
        scanInstructions(protoInfo, str, javaBuilder);
        int i10 = 0;
        while (true) {
            LocVars[] locVarsArr = protoInfo.prototype.locvars;
            if (i10 >= locVarsArr.length) {
                break;
            }
            LocVars locVars = locVarsArr[i10];
            javaBuilder.setVarStartEnd(i10, locVars.startpc, locVars.endpc, locVars.varname.tojstring());
            i10++;
        }
        this.bytecode = javaBuilder.completeClass(z10);
        ProtoInfo[] protoInfoArr = protoInfo.subprotos;
        if (protoInfoArr == null) {
            this.inners = null;
            return;
        }
        int length = protoInfoArr.length;
        this.inners = new JavaGen[length];
        for (int i11 = 0; i11 < length; i11++) {
            JavaGen[] javaGenArr = this.inners;
            ProtoInfo protoInfo2 = protoInfo.subprotos[i11];
            javaGenArr[i11] = new JavaGen(protoInfo2, protoInfo2.name, str2, false);
        }
    }
}
