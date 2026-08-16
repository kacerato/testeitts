package org.luaj.vm2.luajc;

import org.luaj.vm2.Lua;
import org.openjdk.tools.doclint.DocLint;

public class UpvalInfo {
    int nvars;

    ProtoInfo f102806pi;
    boolean rw;
    int slot;
    VarInfo[] var;

    public UpvalInfo(ProtoInfo protoInfo) {
        this.f102806pi = protoInfo;
        this.slot = 0;
        this.nvars = 1;
        this.var = new VarInfo[]{VarInfo.PARAM(0)};
        this.rw = false;
    }

    private void appendVar(VarInfo varInfo) {
        int i10 = this.nvars;
        if (i10 == 0) {
            this.var = new VarInfo[1];
        } else {
            int i11 = i10 + 1;
            VarInfo[] varInfoArr = this.var;
            if (i11 >= varInfoArr.length) {
                VarInfo[] varInfoArr2 = new VarInfo[(i10 * 2) + 1];
                this.var = varInfoArr2;
                System.arraycopy(varInfoArr, 0, varInfoArr2, 0, i10);
            }
        }
        VarInfo[] varInfoArr3 = this.var;
        int i12 = this.nvars;
        this.nvars = i12 + 1;
        varInfoArr3[i12] = varInfo;
    }

    private boolean includePosteriorVarsCheckLoops(VarInfo varInfo) {
        int length = this.f102806pi.blocklist.length;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            ProtoInfo protoInfo = this.f102806pi;
            BasicBlock basicBlock = protoInfo.blocklist[i10];
            VarInfo[] varInfoArr = protoInfo.vars[this.slot];
            int i11 = basicBlock.pc1;
            if (varInfoArr[i11] == varInfo) {
                BasicBlock[] basicBlockArr = basicBlock.next;
                int length2 = basicBlockArr != null ? basicBlockArr.length : 0;
                for (int i12 = 0; i12 < length2; i12++) {
                    VarInfo varInfo2 = this.f102806pi.vars[this.slot][basicBlock.next[i12].pc0];
                    if (varInfo2 != varInfo) {
                        z10 |= includeVarAndPosteriorVars(varInfo2);
                        if (varInfo2.isPhiVar()) {
                            includePriorVarsIgnoreLoops(varInfo2);
                        }
                    }
                }
            } else {
                while (true) {
                    i11--;
                    if (i11 >= basicBlock.pc0) {
                        VarInfo[] varInfoArr2 = this.f102806pi.vars[this.slot];
                        if (varInfoArr2[i11] == varInfo) {
                            z10 |= includeVarAndPosteriorVars(varInfoArr2[i11 + 1]);
                            break;
                        }
                    }
                }
            }
        }
        return z10;
    }

    private void includePriorVarsIgnoreLoops(VarInfo varInfo) {
        int length = this.f102806pi.blocklist.length;
        for (int i10 = 0; i10 < length; i10++) {
            ProtoInfo protoInfo = this.f102806pi;
            BasicBlock basicBlock = protoInfo.blocklist[i10];
            VarInfo[] varInfoArr = protoInfo.vars[this.slot];
            int i11 = basicBlock.pc0;
            if (varInfoArr[i11] == varInfo) {
                BasicBlock[] basicBlockArr = basicBlock.prev;
                int length2 = basicBlockArr != null ? basicBlockArr.length : 0;
                for (int i12 = 0; i12 < length2; i12++) {
                    VarInfo varInfo2 = this.f102806pi.vars[this.slot][basicBlock.prev[i12].pc1];
                    if (varInfo2 != varInfo) {
                        includeVarAndPosteriorVars(varInfo2);
                    }
                }
            }
            while (true) {
                i11++;
                if (i11 <= basicBlock.pc1) {
                    VarInfo[] varInfoArr2 = this.f102806pi.vars[this.slot];
                    if (varInfoArr2[i11] == varInfo) {
                        includeVarAndPosteriorVars(varInfoArr2[i11 - 1]);
                        break;
                    }
                }
            }
        }
    }

    private boolean includeVarAndPosteriorVars(VarInfo varInfo) {
        boolean z10 = false;
        if (varInfo != null && varInfo != VarInfo.INVALID) {
            if (varInfo.upvalue == this) {
                return true;
            }
            varInfo.upvalue = this;
            appendVar(varInfo);
            if (isLoopVariable(varInfo)) {
                return false;
            }
            z10 = includePosteriorVarsCheckLoops(varInfo);
            if (z10) {
                includePriorVarsIgnoreLoops(varInfo);
            }
        }
        return z10;
    }

    private boolean isLoopVariable(VarInfo varInfo) {
        int i10 = varInfo.f102807pc;
        if (i10 < 0) {
            return false;
        }
        int GET_OPCODE = Lua.GET_OPCODE(this.f102806pi.prototype.code[i10]);
        return GET_OPCODE == 32 || GET_OPCODE == 35;
    }

    private boolean testIsAllocUpvalue(VarInfo varInfo) {
        int i10 = varInfo.f102807pc;
        if (i10 < 0) {
            return true;
        }
        ProtoInfo protoInfo = this.f102806pi;
        BasicBlock basicBlock = protoInfo.blocks[i10];
        if (i10 > basicBlock.pc0) {
            return protoInfo.vars[this.slot][i10 - 1].upvalue != this;
        }
        BasicBlock[] basicBlockArr = basicBlock.prev;
        if (basicBlockArr == null) {
            VarInfo varInfo2 = protoInfo.params[this.slot];
            if (varInfo2 != null && varInfo2.upvalue != this) {
                return true;
            }
        } else {
            int length = basicBlockArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                VarInfo varInfo3 = this.f102806pi.vars[this.slot][basicBlock.prev[i11].pc1];
                if (varInfo3 != null && varInfo3.upvalue != this) {
                    return true;
                }
            }
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f102806pi.name);
        int i10 = 0;
        while (i10 < this.nvars) {
            stringBuffer.append(i10 > 0 ? DocLint.SEPARATOR : " ");
            stringBuffer.append(String.valueOf(this.var[i10]));
            i10++;
        }
        if (this.rw) {
            stringBuffer.append("(rw)");
        }
        return stringBuffer.toString();
    }

    public UpvalInfo(ProtoInfo protoInfo, int i10, int i11) {
        int i12;
        this.f102806pi = protoInfo;
        this.slot = i11;
        this.nvars = 0;
        this.var = null;
        includeVarAndPosteriorVars(protoInfo.vars[i11][i10]);
        int i13 = 0;
        while (true) {
            i12 = this.nvars;
            if (i13 >= i12) {
                break;
            }
            VarInfo varInfo = this.var[i13];
            varInfo.allocupvalue = testIsAllocUpvalue(varInfo);
            i13++;
        }
        this.rw = i12 > 1;
    }
}
