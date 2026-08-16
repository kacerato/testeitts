package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.iface.ClassFile;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.Method;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.ssa.Optimizer;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;

public class SsaDumper extends BlockDumper {
    private SsaDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        super(bArr, printStream, str, true, args);
    }

    public static void dump(byte[] bArr, PrintStream printStream, String str, Args args) {
        new SsaDumper(bArr, printStream, str, args).dump();
    }

    @Override
    public void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member) {
        if (!(member instanceof Method) || !shouldDumpMethod(str) || (member.getAccessFlags() & 1280) != 0) {
            return;
        }
        ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, (ClassFile) this.classFile, true, true);
        DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
        RopMethod convert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
        boolean isStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
        int computeParamWidth = BaseDumper.computeParamWidth(concreteMethod, isStatic);
        String str3 = this.args.ssaStep;
        SsaMethod debugNoRegisterAllocation = str3 == null ? Optimizer.debugNoRegisterAllocation(convert, computeParamWidth, isStatic, true, dexTranslationAdvice, EnumSet.allOf(Optimizer.OptionalStep.class)) : "edge-split".equals(str3) ? Optimizer.debugEdgeSplit(convert, computeParamWidth, isStatic, true, dexTranslationAdvice) : "phi-placement".equals(this.args.ssaStep) ? Optimizer.debugPhiPlacement(convert, computeParamWidth, isStatic, true, dexTranslationAdvice) : "renaming".equals(this.args.ssaStep) ? Optimizer.debugRenaming(convert, computeParamWidth, isStatic, true, dexTranslationAdvice) : "dead-code".equals(this.args.ssaStep) ? Optimizer.debugDeadCodeRemover(convert, computeParamWidth, isStatic, true, dexTranslationAdvice) : null;
        StringBuffer stringBuffer = new StringBuffer(2000);
        stringBuffer.append("first ");
        stringBuffer.append(Hex.u2(debugNoRegisterAllocation.blockIndexToRopLabel(debugNoRegisterAllocation.getEntryBlockIndex())));
        stringBuffer.append('\n');
        ArrayList arrayList = (ArrayList) debugNoRegisterAllocation.getBlocks().clone();
        Collections.sort(arrayList, SsaBasicBlock.LABEL_COMPARATOR);
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                this.suppressDump = false;
                setAt(byteArray, 0);
                parsed(byteArray, 0, byteArray.size(), stringBuffer.toString());
                this.suppressDump = true;
                return;
            }
            SsaBasicBlock ssaBasicBlock = (SsaBasicBlock) it.next();
            stringBuffer.append("block ");
            stringBuffer.append(Hex.u2(ssaBasicBlock.getRopLabel()));
            stringBuffer.append('\n');
            BitSet predecessors = ssaBasicBlock.getPredecessors();
            for (int nextSetBit = predecessors.nextSetBit(0); nextSetBit >= 0; nextSetBit = predecessors.nextSetBit(nextSetBit + 1)) {
                stringBuffer.append("  pred ");
                stringBuffer.append(Hex.u2(debugNoRegisterAllocation.blockIndexToRopLabel(nextSetBit)));
                stringBuffer.append('\n');
            }
            stringBuffer.append("  live in:" + ((Object) ssaBasicBlock.getLiveInRegs()));
            stringBuffer.append("\n");
            Iterator<SsaInsn> it2 = ssaBasicBlock.getInsns().iterator();
            while (it2.hasNext()) {
                SsaInsn next = it2.next();
                stringBuffer.append(GlideException.a.f59088e);
                stringBuffer.append(next.toHuman());
                stringBuffer.append('\n');
            }
            if (ssaBasicBlock.getSuccessors().cardinality() == 0) {
                stringBuffer.append("  returns\n");
            } else {
                int primarySuccessorRopLabel = ssaBasicBlock.getPrimarySuccessorRopLabel();
                IntList ropLabelSuccessorList = ssaBasicBlock.getRopLabelSuccessorList();
                int size = ropLabelSuccessorList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    stringBuffer.append("  next ");
                    stringBuffer.append(Hex.u2(ropLabelSuccessorList.get(i11)));
                    if (size != 1 && primarySuccessorRopLabel == ropLabelSuccessorList.get(i11)) {
                        stringBuffer.append(" *");
                    }
                    stringBuffer.append('\n');
                }
            }
            stringBuffer.append("  live out:" + ((Object) ssaBasicBlock.getLiveOutRegs()));
            stringBuffer.append("\n");
        }
    }
}
