package com.android.dx.cf.direct;

import com.android.dx.cf.code.ByteOps;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.SwitchList;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import org.openjdk.tools.doclint.DocLint;
import yd.C16181m;

public class CodeObserver implements BytecodeArray.Visitor {
    private final ByteArray bytes;
    private final ParseObserver observer;

    public CodeObserver(ByteArray byteArray, ParseObserver parseObserver) {
        if (byteArray == null) {
            throw new NullPointerException("bytes == null");
        }
        if (parseObserver == null) {
            throw new NullPointerException("observer == null");
        }
        this.bytes = byteArray;
        this.observer = parseObserver;
    }

    private String header(int i10) {
        int unsignedByte = this.bytes.getUnsignedByte(i10);
        String opName = ByteOps.opName(unsignedByte);
        if (unsignedByte == 196) {
            opName = opName + " " + ByteOps.opName(this.bytes.getUnsignedByte(i10 + 1));
        }
        return Hex.u2(i10) + ": " + opName;
    }

    private void visitLiteralDouble(int i10, int i11, int i12, long j10) {
        String str;
        if (i12 != 1) {
            str = " #" + Hex.u8(j10);
        } else {
            str = "";
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str + " // " + Double.longBitsToDouble(j10));
    }

    private void visitLiteralFloat(int i10, int i11, int i12, int i13) {
        String str;
        if (i12 != 1) {
            str = " #" + Hex.u4(i13);
        } else {
            str = "";
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str + " // " + Float.intBitsToFloat(i13));
    }

    private void visitLiteralInt(int i10, int i11, int i12, int i13) {
        String str;
        String str2 = i12 == 1 ? " // " : " ";
        int unsignedByte = this.bytes.getUnsignedByte(i11);
        if (i12 == 1 || unsignedByte == 16) {
            str = C16181m.f130230g + Hex.s1(i13);
        } else if (unsignedByte == 17) {
            str = C16181m.f130230g + Hex.s2(i13);
        } else {
            str = C16181m.f130230g + Hex.s4(i13);
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str2 + str);
    }

    private void visitLiteralLong(int i10, int i11, int i12, long j10) {
        String str = i12 == 1 ? " // " : " #";
        String s12 = i12 == 1 ? Hex.s1((int) j10) : Hex.s8(j10);
        this.observer.parsed(this.bytes, i11, i12, header(i11) + str + s12);
    }

    @Override
    public int getPreviousOffset() {
        return -1;
    }

    @Override
    public void setPreviousOffset(int i10) {
    }

    @Override
    public void visitBranch(int i10, int i11, int i12, int i13) {
        String u22 = i12 <= 3 ? Hex.u2(i13) : Hex.u4(i13);
        this.observer.parsed(this.bytes, i11, i12, header(i11) + " " + u22);
    }

    @Override
    public void visitConstant(int i10, int i11, int i12, Constant constant, int i13) {
        String str;
        if (constant instanceof CstKnownNull) {
            visitNoArgs(i10, i11, i12, null);
            return;
        }
        if (constant instanceof CstInteger) {
            visitLiteralInt(i10, i11, i12, i13);
            return;
        }
        if (constant instanceof CstLong) {
            visitLiteralLong(i10, i11, i12, ((CstLong) constant).getValue());
            return;
        }
        if (constant instanceof CstFloat) {
            visitLiteralFloat(i10, i11, i12, ((CstFloat) constant).getIntBits());
            return;
        }
        if (constant instanceof CstDouble) {
            visitLiteralDouble(i10, i11, i12, ((CstDouble) constant).getLongBits());
            return;
        }
        if (i13 == 0) {
            str = "";
        } else if (i10 == 197) {
            str = ", " + Hex.u1(i13);
        } else {
            str = ", " + Hex.u2(i13);
        }
        this.observer.parsed(this.bytes, i11, i12, header(i11) + " " + ((Object) constant) + str);
    }

    @Override
    public void visitInvalid(int i10, int i11, int i12) {
        this.observer.parsed(this.bytes, i11, i12, header(i11));
    }

    @Override
    public void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14) {
        String str;
        String u12 = i12 <= 3 ? Hex.u1(i13) : Hex.u2(i13);
        boolean z10 = i12 == 1;
        String str2 = "";
        if (i10 == 132) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(", #");
            sb2.append(i12 <= 3 ? Hex.s1(i14) : Hex.s2(i14));
            str = sb2.toString();
        } else {
            str = "";
        }
        if (type.isCategory2()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(z10 ? DocLint.SEPARATOR : " //");
            sb3.append(" category-2");
            str2 = sb3.toString();
        }
        ParseObserver parseObserver = this.observer;
        ByteArray byteArray = this.bytes;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(header(i11));
        sb4.append(z10 ? " // " : " ");
        sb4.append(u12);
        sb4.append(str);
        sb4.append(str2);
        parseObserver.parsed(byteArray, i11, i12, sb4.toString());
    }

    @Override
    public void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList) {
        String str = i11 == 1 ? " // " : " ";
        String human = cstType.getClassType().getComponentType().toHuman();
        this.observer.parsed(this.bytes, i10, i11, header(i10) + str + human);
    }

    @Override
    public void visitNoArgs(int i10, int i11, int i12, Type type) {
        this.observer.parsed(this.bytes, i11, i12, header(i11));
    }

    @Override
    public void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13) {
        int size = switchList.size();
        StringBuffer stringBuffer = new StringBuffer((size * 20) + 100);
        stringBuffer.append(header(i11));
        if (i13 != 0) {
            stringBuffer.append(" // padding: " + Hex.u4(i13));
        }
        stringBuffer.append('\n');
        for (int i14 = 0; i14 < size; i14++) {
            stringBuffer.append(GlideException.a.f59088e);
            stringBuffer.append(Hex.s4(switchList.getValue(i14)));
            stringBuffer.append(": ");
            stringBuffer.append(Hex.u2(switchList.getTarget(i14)));
            stringBuffer.append('\n');
        }
        stringBuffer.append("  default: ");
        stringBuffer.append(Hex.u2(switchList.getDefaultTarget()));
        this.observer.parsed(this.bytes, i11, i12, stringBuffer.toString());
    }
}
