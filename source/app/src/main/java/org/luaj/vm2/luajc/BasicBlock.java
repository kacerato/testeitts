package org.luaj.vm2.luajc;

import java.util.Vector;
import org.luaj.vm2.Lua;
import org.luaj.vm2.Prototype;
import org.openjdk.tools.doclint.DocLint;

public class BasicBlock {
    boolean islive;
    BasicBlock[] next;
    int pc0;
    int pc1;
    BasicBlock[] prev;

    public static final class AllocAndXRefVisitor extends BranchVisitor {
        private final BasicBlock[] blocks;
        private final int[] nnext;
        private final int[] nprev;

        private AllocAndXRefVisitor(boolean[] zArr, int[] iArr, int[] iArr2, BasicBlock[] basicBlockArr) {
            super(zArr);
            this.nnext = iArr;
            this.nprev = iArr2;
            this.blocks = basicBlockArr;
        }

        @Override
        public void visitBranch(int i10, int i11) {
            BasicBlock[] basicBlockArr = this.blocks;
            BasicBlock basicBlock = basicBlockArr[i10];
            if (basicBlock.next == null) {
                basicBlock.next = new BasicBlock[this.nnext[i10]];
            }
            BasicBlock basicBlock2 = basicBlockArr[i11];
            if (basicBlock2.prev == null) {
                basicBlock2.prev = new BasicBlock[this.nprev[i11]];
            }
            BasicBlock[] basicBlockArr2 = basicBlock.next;
            int[] iArr = this.nnext;
            int i12 = iArr[i10] - 1;
            iArr[i10] = i12;
            basicBlockArr2[i12] = basicBlock2;
            BasicBlock[] basicBlockArr3 = basicBlockArr[i11].prev;
            int[] iArr2 = this.nprev;
            int i13 = iArr2[i11] - 1;
            iArr2[i11] = i13;
            basicBlockArr3[i13] = basicBlockArr[i10];
        }
    }

    public static abstract class BranchVisitor {
        final boolean[] isbeg;

        public BranchVisitor(boolean[] zArr) {
            this.isbeg = zArr;
        }

        public void visitBranch(int i10, int i11) {
        }

        public void visitReturn(int i10) {
        }
    }

    public static final class CountPrevNextVistor extends BranchVisitor {
        private final int[] nnext;
        private final int[] nprev;

        private CountPrevNextVistor(boolean[] zArr, int[] iArr, int[] iArr2) {
            super(zArr);
            this.nnext = iArr;
            this.nprev = iArr2;
        }

        @Override
        public void visitBranch(int i10, int i11) {
            int[] iArr = this.nnext;
            iArr[i10] = iArr[i10] + 1;
            int[] iArr2 = this.nprev;
            iArr2[i11] = iArr2[i11] + 1;
        }
    }

    public static final class MarkAndMergeVisitor extends BranchVisitor {
        private final boolean[] isend;

        private MarkAndMergeVisitor(boolean[] zArr, boolean[] zArr2) {
            super(zArr);
            this.isend = zArr2;
        }

        @Override
        public void visitBranch(int i10, int i11) {
            this.isend[i10] = true;
            this.isbeg[i11] = true;
        }

        @Override
        public void visitReturn(int i10) {
            this.isend[i10] = true;
        }
    }

    public BasicBlock(Prototype prototype, int i10) {
        this.pc1 = i10;
        this.pc0 = i10;
    }

    public static BasicBlock[] findBasicBlocks(Prototype prototype) {
        int i10;
        int length = prototype.code.length;
        boolean[] zArr = new boolean[length];
        boolean[] zArr2 = new boolean[length];
        int i11 = 0;
        zArr[0] = true;
        MarkAndMergeVisitor markAndMergeVisitor = new MarkAndMergeVisitor(zArr, zArr2);
        visitBranches(prototype, markAndMergeVisitor);
        visitBranches(prototype, markAndMergeVisitor);
        BasicBlock[] basicBlockArr = new BasicBlock[length];
        while (i11 < length) {
            zArr[i11] = true;
            BasicBlock basicBlock = new BasicBlock(prototype, i11);
            basicBlockArr[i11] = basicBlock;
            while (!zArr2[i11] && (i10 = i11 + 1) < length && !zArr[i10]) {
                basicBlock.pc1 = i10;
                basicBlockArr[i10] = basicBlock;
                i11 = i10;
            }
            i11++;
        }
        int[] iArr = new int[length];
        int[] iArr2 = new int[length];
        visitBranches(prototype, new CountPrevNextVistor(zArr, iArr, iArr2));
        visitBranches(prototype, new AllocAndXRefVisitor(zArr, iArr, iArr2, basicBlockArr));
        return basicBlockArr;
    }

    public static BasicBlock[] findLiveBlocks(BasicBlock[] basicBlockArr) {
        Vector vector = new Vector();
        int i10 = 0;
        vector.addElement(basicBlockArr[0]);
        while (!vector.isEmpty()) {
            BasicBlock basicBlock = (BasicBlock) vector.elementAt(0);
            vector.removeElementAt(0);
            if (!basicBlock.islive) {
                basicBlock.islive = true;
                BasicBlock[] basicBlockArr2 = basicBlock.next;
                int length = basicBlockArr2 != null ? basicBlockArr2.length : 0;
                for (int i11 = 0; i11 < length; i11++) {
                    BasicBlock basicBlock2 = basicBlock.next[i11];
                    if (!basicBlock2.islive) {
                        vector.addElement(basicBlock2);
                    }
                }
            }
        }
        Vector vector2 = new Vector();
        while (i10 < basicBlockArr.length) {
            BasicBlock basicBlock3 = basicBlockArr[i10];
            if (basicBlock3.islive) {
                vector2.addElement(basicBlock3);
            }
            i10 = basicBlockArr[i10].pc1 + 1;
        }
        BasicBlock[] basicBlockArr3 = new BasicBlock[vector2.size()];
        vector2.copyInto(basicBlockArr3);
        return basicBlockArr3;
    }

    private String str(BasicBlock[] basicBlockArr, int i10) {
        if (basicBlockArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(");
        int length = basicBlockArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 > 0) {
                stringBuffer.append(DocLint.SEPARATOR);
            }
            stringBuffer.append(String.valueOf((i10 == 1 ? basicBlockArr[i11].pc1 : basicBlockArr[i11].pc0) + 1));
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void visitBranches(Prototype prototype, BranchVisitor branchVisitor) {
        int i10;
        int[] iArr = prototype.code;
        int length = iArr.length;
        int i11 = 0;
        while (i11 < length) {
            int i12 = iArr[i11];
            int GET_OPCODE = Lua.GET_OPCODE(i12);
            if (GET_OPCODE != 3) {
                if (GET_OPCODE != 35) {
                    switch (GET_OPCODE) {
                        case 23:
                            i10 = Lua.GETARG_sBx(i12) + i11 + 1;
                            branchVisitor.visitBranch(i11, i10);
                            break;
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                            int i13 = i11 + 1;
                            if (Lua.GET_OPCODE(iArr[i13]) != 23) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("test not followed by jump at ");
                                stringBuffer.append(i11);
                                throw new IllegalArgumentException(stringBuffer.toString());
                            }
                            branchVisitor.visitBranch(i13, Lua.GETARG_sBx(iArr[i13]) + i13 + 1);
                            branchVisitor.visitBranch(i13, i11 + 2);
                            i11 = i13;
                            break;
                        default:
                            switch (GET_OPCODE) {
                                case 30:
                                case 31:
                                    branchVisitor.visitReturn(i11);
                                    continue;
                                case 32:
                                    break;
                                case 33:
                                    break;
                                default:
                                    i10 = i11 + 1;
                                    if (i10 < length) {
                                        if (!branchVisitor.isbeg[i10]) {
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                    break;
                            }
                            branchVisitor.visitBranch(i11, i10);
                            break;
                    }
                }
                branchVisitor.visitBranch(i11, Lua.GETARG_sBx(i12) + i11 + 1);
                i10 = i11 + 1;
                branchVisitor.visitBranch(i11, i10);
            } else {
                if (Lua.GETARG_C(i12) != 0) {
                    if (Lua.GET_OPCODE(iArr[i11 + 1]) == 23) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("OP_LOADBOOL followed by jump at ");
                        stringBuffer2.append(i11);
                        throw new IllegalArgumentException(stringBuffer2.toString());
                    }
                    i10 = i11 + 2;
                    branchVisitor.visitBranch(i11, i10);
                }
                i10 = i11 + 1;
                if (i10 < length) {
                }
            }
            i11++;
        }
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(this.pc0 + 1);
        stringBuffer2.append("-");
        stringBuffer2.append(this.pc1 + 1);
        String str2 = "";
        if (this.prev != null) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("  prv: ");
            stringBuffer3.append(str(this.prev, 1));
            str = stringBuffer3.toString();
        } else {
            str = "";
        }
        stringBuffer2.append(str);
        if (this.next != null) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("  nxt: ");
            stringBuffer4.append(str(this.next, 0));
            str2 = stringBuffer4.toString();
        }
        stringBuffer2.append(str2);
        stringBuffer2.append("\n");
        stringBuffer.append(stringBuffer2.toString());
        return stringBuffer.toString();
    }
}
