package com.android.dx.cf.code;

import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;

public class ValueAwareMachine extends BaseMachine {
    public ValueAwareMachine(Prototype prototype) {
        super(prototype);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0013. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0016. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0019. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x001c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x001f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dd  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run(Frame frame, int i10, int i11) {
        if (i11 != 0) {
            if (i11 != 20) {
                if (i11 != 21) {
                    if (i11 != 171 && i11 != 172) {
                        switch (i11) {
                            case 0:
                            case 79:
                                break;
                            case 18:
                                break;
                            case 46:
                            case 100:
                            case 104:
                            case 108:
                            case 112:
                            case 116:
                            case 120:
                            case 122:
                            case 124:
                            case 126:
                            case 128:
                            case 130:
                                setResult(getAuxType());
                                storeResults(frame);
                            case 54:
                                break;
                            default:
                                switch (i11) {
                                    case 87:
                                    case 88:
                                        break;
                                    case 89:
                                    case 90:
                                    case 91:
                                    case 92:
                                    case 93:
                                    case 94:
                                    case 95:
                                        clearResult();
                                        for (int auxInt = getAuxInt(); auxInt != 0; auxInt >>= 4) {
                                            addResult(arg((auxInt & 15) - 1));
                                        }
                                        storeResults(frame);
                                    case 96:
                                        break;
                                    default:
                                        switch (i11) {
                                            case 132:
                                            case 133:
                                            case 134:
                                            case 135:
                                            case 136:
                                            case 137:
                                            case 138:
                                            case 139:
                                            case 140:
                                            case 141:
                                            case 142:
                                            case 143:
                                            case 144:
                                            case 145:
                                            case 146:
                                            case 147:
                                            case 148:
                                            case 149:
                                            case 150:
                                            case 151:
                                            case 152:
                                                break;
                                            case 153:
                                            case 154:
                                            case 155:
                                            case 156:
                                            case 157:
                                            case 158:
                                            case 159:
                                            case 160:
                                            case 161:
                                            case 162:
                                            case 163:
                                            case 164:
                                            case 165:
                                            case 166:
                                            case 167:
                                            case 169:
                                                break;
                                            case 168:
                                                setResult(new ReturnAddress(getAuxTarget()));
                                                storeResults(frame);
                                            default:
                                                switch (i11) {
                                                    case 177:
                                                    case 179:
                                                    case 181:
                                                        break;
                                                    case 178:
                                                    case 180:
                                                    case 182:
                                                    case 184:
                                                    case 185:
                                                        Type type = ((TypeBearer) getAuxCst()).getType();
                                                        if (type == Type.VOID) {
                                                            clearResult();
                                                        } else {
                                                            setResult(type);
                                                        }
                                                        storeResults(frame);
                                                    case 183:
                                                        Type type2 = arg(0).getType();
                                                        if (type2.isUninitialized()) {
                                                            frame.makeInitialized(type2);
                                                        }
                                                        Type type3 = ((TypeBearer) getAuxCst()).getType();
                                                        if (type3 == Type.VOID) {
                                                            clearResult();
                                                        } else {
                                                            setResult(type3);
                                                        }
                                                        storeResults(frame);
                                                    default:
                                                        switch (i11) {
                                                            case 187:
                                                                setResult(((CstType) getAuxCst()).getClassType().asUninitialized(i10));
                                                                storeResults(frame);
                                                            case 188:
                                                            case 192:
                                                                setResult(((CstType) getAuxCst()).getClassType());
                                                                storeResults(frame);
                                                            case 189:
                                                                setResult(((CstType) getAuxCst()).getClassType().getArrayType());
                                                                storeResults(frame);
                                                            case 190:
                                                                break;
                                                            case 191:
                                                            case 194:
                                                            case 195:
                                                                break;
                                                            case 193:
                                                                setResult(Type.INT);
                                                                storeResults(frame);
                                                            default:
                                                                switch (i11) {
                                                                    case 197:
                                                                        break;
                                                                    case 198:
                                                                    case 199:
                                                                        break;
                                                                    default:
                                                                        throw new RuntimeException("shouldn't happen: " + Hex.u1(i11));
                                                                }
                                                                storeResults(frame);
                                                        }
                                                }
                                        }
                                }
                        }
                    }
                }
                setResult(arg(0));
                storeResults(frame);
            }
            setResult((TypeBearer) getAuxCst());
            storeResults(frame);
        }
        clearResult();
        storeResults(frame);
    }
}
