package com.android.dx.cf.code;

import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Bits;
import com.android.dx.util.IntList;
import java.util.ArrayList;

public final class BasicBlocker implements BytecodeArray.Visitor {
    private final int[] blockSet;
    private final ByteCatchList[] catchLists;
    private final int[] liveSet;
    private final ConcreteMethod method;
    private int previousOffset;
    private final IntList[] targetLists;
    private final int[] workSet;

    private BasicBlocker(ConcreteMethod concreteMethod) {
        if (concreteMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.method = concreteMethod;
        int size = concreteMethod.getCode().size() + 1;
        this.workSet = Bits.makeBitSet(size);
        this.liveSet = Bits.makeBitSet(size);
        this.blockSet = Bits.makeBitSet(size);
        this.targetLists = new IntList[size];
        this.catchLists = new ByteCatchList[size];
        this.previousOffset = -1;
    }

    private void addWorkIfNecessary(int i10, boolean z10) {
        if (!Bits.get(this.liveSet, i10)) {
            Bits.set(this.workSet, i10);
        }
        if (z10) {
            Bits.set(this.blockSet, i10);
        }
    }

    private void doit() {
        BytecodeArray code = this.method.getCode();
        ByteCatchList catches = this.method.getCatches();
        int size = catches.size();
        Bits.set(this.workSet, 0);
        Bits.set(this.blockSet, 0);
        while (!Bits.isEmpty(this.workSet)) {
            try {
                code.processWorkSet(this.workSet, this);
                for (int i10 = 0; i10 < size; i10++) {
                    ByteCatchList.Item item = catches.get(i10);
                    int startPc = item.getStartPc();
                    int endPc = item.getEndPc();
                    if (Bits.anyInRange(this.liveSet, startPc, endPc)) {
                        Bits.set(this.blockSet, startPc);
                        Bits.set(this.blockSet, endPc);
                        addWorkIfNecessary(item.getHandlerPc(), true);
                    }
                }
            } catch (IllegalArgumentException e10) {
                throw new SimException("flow of control falls off end of method", e10);
            }
        }
    }

    private ByteBlockList getBlockList() {
        ByteCatchList byteCatchList;
        IntList intList;
        ByteBlock[] byteBlockArr = new ByteBlock[this.method.getCode().size()];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int findFirst = Bits.findFirst(this.blockSet, i10 + 1);
            if (findFirst < 0) {
                break;
            }
            if (Bits.get(this.liveSet, i10)) {
                int i12 = findFirst - 1;
                IntList intList2 = null;
                while (true) {
                    if (i12 < i10) {
                        i12 = -1;
                        break;
                    }
                    intList2 = this.targetLists[i12];
                    if (intList2 != null) {
                        break;
                    }
                    i12--;
                }
                if (intList2 == null) {
                    intList = IntList.makeImmutable(findFirst);
                    byteCatchList = ByteCatchList.EMPTY;
                } else {
                    ByteCatchList byteCatchList2 = this.catchLists[i12];
                    if (byteCatchList2 == null) {
                        byteCatchList2 = ByteCatchList.EMPTY;
                    }
                    byteCatchList = byteCatchList2;
                    intList = intList2;
                }
                byteBlockArr[i11] = new ByteBlock(i10, i10, findFirst, intList, byteCatchList);
                i11++;
            }
            i10 = findFirst;
        }
        ByteBlockList byteBlockList = new ByteBlockList(i11);
        for (int i13 = 0; i13 < i11; i13++) {
            byteBlockList.set(i13, byteBlockArr[i13]);
        }
        return byteBlockList;
    }

    public static ByteBlockList identifyBlocks(ConcreteMethod concreteMethod) {
        BasicBlocker basicBlocker = new BasicBlocker(concreteMethod);
        basicBlocker.doit();
        return basicBlocker.getBlockList();
    }

    private void visitCommon(int i10, int i11, boolean z10) {
        Bits.set(this.liveSet, i10);
        if (z10) {
            addWorkIfNecessary(i10 + i11, false);
        } else {
            Bits.set(this.blockSet, i10 + i11);
        }
    }

    private void visitThrowing(int i10, int i11, boolean z10) {
        int i12 = i11 + i10;
        if (z10) {
            addWorkIfNecessary(i12, true);
        }
        ByteCatchList listFor = this.method.getCatches().listFor(i10);
        this.catchLists[i10] = listFor;
        IntList[] intListArr = this.targetLists;
        if (!z10) {
            i12 = -1;
        }
        intListArr[i10] = listFor.toTargetList(i12);
    }

    @Override
    public int getPreviousOffset() {
        return this.previousOffset;
    }

    @Override
    public void setPreviousOffset(int i10) {
        this.previousOffset = i10;
    }

    @Override
    public void visitBranch(int i10, int i11, int i12, int i13) {
        if (i10 != 167) {
            if (i10 == 168) {
                addWorkIfNecessary(i11, true);
            }
            int i14 = i11 + i12;
            visitCommon(i11, i12, true);
            addWorkIfNecessary(i14, true);
            this.targetLists[i11] = IntList.makeImmutable(i14, i13);
        } else {
            visitCommon(i11, i12, false);
            this.targetLists[i11] = IntList.makeImmutable(i13);
        }
        addWorkIfNecessary(i13, true);
    }

    @Override
    public void visitConstant(int i10, int i11, int i12, Constant constant, int i13) {
        visitCommon(i11, i12, true);
        if ((constant instanceof CstMemberRef) || (constant instanceof CstType) || (constant instanceof CstString)) {
            visitThrowing(i11, i12, true);
        }
    }

    @Override
    public void visitInvalid(int i10, int i11, int i12) {
        visitCommon(i11, i12, true);
    }

    @Override
    public void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14) {
        if (i10 != 169) {
            visitCommon(i11, i12, true);
        } else {
            visitCommon(i11, i12, false);
            this.targetLists[i11] = IntList.EMPTY;
        }
    }

    @Override
    public void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList) {
        visitCommon(i10, i11, true);
        visitThrowing(i10, i11, true);
    }

    @Override
    public void visitNoArgs(int i10, int i11, int i12, Type type) {
        if (i10 == 108 || i10 == 112) {
            visitCommon(i11, i12, true);
            if (type == Type.INT || type == Type.LONG) {
                visitThrowing(i11, i12, true);
                return;
            }
            return;
        }
        if (i10 == 172 || i10 == 177) {
            visitCommon(i11, i12, false);
            this.targetLists[i11] = IntList.EMPTY;
            return;
        }
        if (i10 != 190) {
            if (i10 == 191) {
                visitCommon(i11, i12, false);
                visitThrowing(i11, i12, false);
                return;
            } else if (i10 != 194 && i10 != 195) {
                switch (i10) {
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                        break;
                    default:
                        switch (i10) {
                            case 79:
                            case 80:
                            case 81:
                            case 82:
                            case 83:
                            case 84:
                            case 85:
                            case 86:
                                break;
                            default:
                                visitCommon(i11, i12, true);
                                return;
                        }
                }
            }
        }
        visitCommon(i11, i12, true);
        visitThrowing(i11, i12, true);
    }

    @Override
    public void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13) {
        visitCommon(i11, i12, false);
        addWorkIfNecessary(switchList.getDefaultTarget(), true);
        int size = switchList.size();
        for (int i14 = 0; i14 < size; i14++) {
            addWorkIfNecessary(switchList.getTarget(i14), true);
        }
        this.targetLists[i11] = switchList.getTargets();
    }
}
