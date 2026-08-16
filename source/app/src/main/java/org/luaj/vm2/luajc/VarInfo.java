package org.luaj.vm2.luajc;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class VarInfo {
    public static VarInfo INVALID = new VarInfo(-1, -1);
    public boolean allocupvalue;
    public boolean isreferenced;

    public final int f102807pc;
    public final int slot;
    public UpvalInfo upvalue;

    public static final class NilVarInfo extends VarInfo {
        private NilVarInfo(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public String toString() {
            return "nil";
        }
    }

    public static final class ParamVarInfo extends VarInfo {
        private ParamVarInfo(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.slot);
            stringBuffer.append(".p");
            return stringBuffer.toString();
        }
    }

    public static final class PhiVarInfo extends VarInfo {

        private final ProtoInfo f102808pi;
        VarInfo[] values;

        private PhiVarInfo(ProtoInfo protoInfo, int i10, int i11) {
            super(i10, i11);
            this.f102808pi = protoInfo;
        }

        @Override
        public void collectUniqueValues(Set set, Set set2) {
            ProtoInfo protoInfo = this.f102808pi;
            BasicBlock[] basicBlockArr = protoInfo.blocks;
            int i10 = this.f102807pc;
            BasicBlock basicBlock = basicBlockArr[i10];
            if (i10 == 0) {
                set2.add(protoInfo.params[this.slot]);
            }
            BasicBlock[] basicBlockArr2 = basicBlock.prev;
            int length = basicBlockArr2 != null ? basicBlockArr2.length : 0;
            for (int i11 = 0; i11 < length; i11++) {
                BasicBlock basicBlock2 = basicBlock.prev[i11];
                if (!set.contains(basicBlock2)) {
                    set.add(basicBlock2);
                    VarInfo varInfo = this.f102808pi.vars[this.slot][basicBlock2.pc1];
                    if (varInfo != null) {
                        varInfo.collectUniqueValues(set, set2);
                    }
                }
            }
        }

        @Override
        public boolean isPhiVar() {
            return true;
        }

        @Override
        public VarInfo resolvePhiVariableValues() {
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            collectUniqueValues(hashSet, hashSet2);
            if (hashSet2.contains(VarInfo.INVALID)) {
                return VarInfo.INVALID;
            }
            int size = hashSet2.size();
            Iterator<E> it = hashSet2.iterator();
            if (size == 1) {
                VarInfo varInfo = (VarInfo) it.next();
                varInfo.isreferenced |= this.isreferenced;
                return varInfo;
            }
            this.values = new VarInfo[size];
            for (int i10 = 0; i10 < size; i10++) {
                this.values[i10] = (VarInfo) it.next();
                this.values[i10].isreferenced |= this.isreferenced;
            }
            return null;
        }

        @Override
        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(super.toString());
            stringBuffer.append("={");
            VarInfo[] varInfoArr = this.values;
            int length = varInfoArr != null ? varInfoArr.length : 0;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(DocLint.SEPARATOR);
                }
                stringBuffer.append(String.valueOf(this.values[i10]));
            }
            stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
            return stringBuffer.toString();
        }
    }

    public VarInfo(int i10, int i11) {
        this.slot = i10;
        this.f102807pc = i11;
    }

    public static VarInfo NIL(int i10) {
        return new NilVarInfo(i10, -1);
    }

    public static VarInfo PARAM(int i10) {
        return new ParamVarInfo(i10, -1);
    }

    public static VarInfo PHI(ProtoInfo protoInfo, int i10, int i11) {
        return new PhiVarInfo(protoInfo, i10, i11);
    }

    public void collectUniqueValues(Set set, Set set2) {
        set2.add(this);
    }

    public boolean isPhiVar() {
        return false;
    }

    public VarInfo resolvePhiVariableValues() {
        return null;
    }

    public String toString() {
        if (this.slot < 0) {
            return "x.x";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.slot);
        stringBuffer.append(".");
        stringBuffer.append(this.f102807pc);
        return stringBuffer.toString();
    }
}
