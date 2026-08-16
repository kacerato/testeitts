package com.android.dx.ssa.back;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

public class LivenessAnalyzer {
    private SsaBasicBlock blockN;
    private final InterferenceGraph interference;
    private final BitSet liveOutBlocks;
    private NextFunction nextFunction;
    private final int regV;
    private final SsaMethod ssaMeth;
    private int statementIndex;
    private final BitSet visitedBlocks;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction;

        static {
            int[] iArr = new int[NextFunction.values().length];
            $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction = iArr;
            try {
                iArr[NextFunction.LIVE_IN_AT_STATEMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[NextFunction.LIVE_OUT_AT_STATEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[NextFunction.LIVE_OUT_AT_BLOCK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum NextFunction {
        LIVE_IN_AT_STATEMENT,
        LIVE_OUT_AT_STATEMENT,
        LIVE_OUT_AT_BLOCK,
        DONE
    }

    private LivenessAnalyzer(SsaMethod ssaMethod, int i10, InterferenceGraph interferenceGraph) {
        int size = ssaMethod.getBlocks().size();
        this.ssaMeth = ssaMethod;
        this.regV = i10;
        this.visitedBlocks = new BitSet(size);
        this.liveOutBlocks = new BitSet(size);
        this.interference = interferenceGraph;
    }

    private static void coInterferePhis(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        Iterator<SsaBasicBlock> it = ssaMethod.getBlocks().iterator();
        while (it.hasNext()) {
            List<SsaInsn> phiInsns = it.next().getPhiInsns();
            int size = phiInsns.size();
            for (int i10 = 0; i10 < size; i10++) {
                for (int i11 = 0; i11 < size; i11++) {
                    if (i10 != i11) {
                        interferenceGraph.add(phiInsns.get(i10).getResult().getReg(), phiInsns.get(i11).getResult().getReg());
                    }
                }
            }
        }
    }

    public static InterferenceGraph constructInterferenceGraph(SsaMethod ssaMethod) {
        int regCount = ssaMethod.getRegCount();
        InterferenceGraph interferenceGraph = new InterferenceGraph(regCount);
        for (int i10 = 0; i10 < regCount; i10++) {
            new LivenessAnalyzer(ssaMethod, i10, interferenceGraph).run();
        }
        coInterferePhis(ssaMethod, interferenceGraph);
        return interferenceGraph;
    }

    private void handleTailRecursion() {
        while (true) {
            NextFunction nextFunction = this.nextFunction;
            NextFunction nextFunction2 = NextFunction.DONE;
            if (nextFunction == nextFunction2) {
                return;
            }
            int i10 = AnonymousClass1.$SwitchMap$com$android$dx$ssa$back$LivenessAnalyzer$NextFunction[nextFunction.ordinal()];
            if (i10 == 1) {
                this.nextFunction = nextFunction2;
                liveInAtStatement();
            } else if (i10 == 2) {
                this.nextFunction = nextFunction2;
                liveOutAtStatement();
            } else if (i10 == 3) {
                this.nextFunction = nextFunction2;
                liveOutAtBlock();
            }
        }
    }

    private void liveInAtStatement() {
        int i10 = this.statementIndex;
        if (i10 != 0) {
            this.statementIndex = i10 - 1;
            this.nextFunction = NextFunction.LIVE_OUT_AT_STATEMENT;
        } else {
            this.blockN.addLiveIn(this.regV);
            this.liveOutBlocks.or(this.blockN.getPredecessors());
        }
    }

    private void liveOutAtBlock() {
        if (this.visitedBlocks.get(this.blockN.getIndex())) {
            return;
        }
        this.visitedBlocks.set(this.blockN.getIndex());
        this.blockN.addLiveOut(this.regV);
        this.statementIndex = this.blockN.getInsns().size() - 1;
        this.nextFunction = NextFunction.LIVE_OUT_AT_STATEMENT;
    }

    private void liveOutAtStatement() {
        SsaInsn ssaInsn = this.blockN.getInsns().get(this.statementIndex);
        RegisterSpec result = ssaInsn.getResult();
        if (ssaInsn.isResultReg(this.regV)) {
            return;
        }
        if (result != null) {
            this.interference.add(this.regV, result.getReg());
        }
        this.nextFunction = NextFunction.LIVE_IN_AT_STATEMENT;
    }

    public void run() {
        for (SsaInsn ssaInsn : this.ssaMeth.getUseListForRegister(this.regV)) {
            this.nextFunction = NextFunction.DONE;
            if (ssaInsn instanceof PhiInsn) {
                Iterator<SsaBasicBlock> it = ((PhiInsn) ssaInsn).predBlocksForReg(this.regV, this.ssaMeth).iterator();
                while (it.hasNext()) {
                    this.blockN = it.next();
                    this.nextFunction = NextFunction.LIVE_OUT_AT_BLOCK;
                    handleTailRecursion();
                }
            } else {
                SsaBasicBlock block = ssaInsn.getBlock();
                this.blockN = block;
                int indexOf = block.getInsns().indexOf(ssaInsn);
                this.statementIndex = indexOf;
                if (indexOf < 0) {
                    throw new RuntimeException("insn not found in it's own block");
                }
                this.nextFunction = NextFunction.LIVE_IN_AT_STATEMENT;
                handleTailRecursion();
            }
        }
        while (true) {
            int nextSetBit = this.liveOutBlocks.nextSetBit(0);
            if (nextSetBit < 0) {
                return;
            }
            this.blockN = this.ssaMeth.getBlocks().get(nextSetBit);
            this.liveOutBlocks.clear(nextSetBit);
            this.nextFunction = NextFunction.LIVE_OUT_AT_BLOCK;
            handleTailRecursion();
        }
    }
}
