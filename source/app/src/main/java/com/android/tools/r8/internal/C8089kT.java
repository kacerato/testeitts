package com.android.tools.r8.internal;

public final class C8089kT extends AbstractC7757iT {

    public int f49644c;

    public C8089kT(WS ws) {
        super(ws);
        this.f49644c = 0;
    }

    public static boolean e(int i10) {
        if (AbstractC7590hT.f48561a || i10 >= 1) {
            return i10 <= 15 || i10 == 177 || i10 == 209 || i10 == 211 || i10 == 220;
        }
        throw new AssertionError();
    }

    public static String f(int i10) {
        if (i10 == 18) {
            return "LDC";
        }
        if (i10 == 170) {
            return "TABLESWITCH";
        }
        if (i10 == 230) {
            return "STORESTOREFENCE";
        }
        switch (i10) {
            case 1:
                return "ACONST_NULL";
            case 2:
                return "ICONST_M1";
            case 3:
                return "ICONST_0";
            case 4:
                return "ICONST_1";
            case 5:
                return "ICONST_2";
            case 6:
                return "ICONST_3";
            case 7:
                return "ICONST_4";
            case 8:
                return "ICONST_5";
            case 9:
                return "LCONST_0";
            case 10:
                return "LCONST_1";
            case 11:
                return "FCONST_0";
            case 12:
                return "FCONST_1";
            case 13:
                return "FCONST_2";
            case 14:
                return "DCONST_0";
            case 15:
                return "DCONST_1";
            default:
                switch (i10) {
                    case 46:
                        return "IALOAD";
                    case 47:
                        return "LALOAD";
                    case 48:
                        return "FALOAD";
                    case 49:
                        return "DALOAD";
                    case 50:
                        return "AALOAD";
                    case 51:
                        return "BALOAD";
                    case 52:
                        return "CALOAD";
                    case 53:
                        return "SALOAD";
                    default:
                        switch (i10) {
                            case 79:
                                return "IASTORE";
                            case 80:
                                return "LASTORE";
                            case 81:
                                return "FASTORE";
                            case 82:
                                return "DASTORE";
                            case 83:
                                return "AASTORE";
                            case 84:
                                return "BASTORE";
                            case 85:
                                return "CASTORE";
                            case 86:
                                return "SASTORE";
                            default:
                                switch (i10) {
                                    case 96:
                                        return "IADD";
                                    case 97:
                                        return "LADD";
                                    case 98:
                                        return "FADD";
                                    case 99:
                                        return "DADD";
                                    case 100:
                                        return "ISUB";
                                    case 101:
                                        return "LSUB";
                                    case 102:
                                        return "FSUB";
                                    case 103:
                                        return "DSUB";
                                    case 104:
                                        return "IMUL";
                                    case 105:
                                        return "LMUL";
                                    case 106:
                                        return "FMUL";
                                    case 107:
                                        return "DMUL";
                                    case 108:
                                        return "IDIV";
                                    case 109:
                                        return "LDIV";
                                    case 110:
                                        return "FDIV";
                                    case 111:
                                        return "DDIV";
                                    case 112:
                                        return "IREM";
                                    case 113:
                                        return "LREM";
                                    case 114:
                                        return "FREM";
                                    case 115:
                                        return "DREM";
                                    case 116:
                                        return "INEG";
                                    case 117:
                                        return "LNEG";
                                    case 118:
                                        return "FNEG";
                                    case 119:
                                        return "DNEG";
                                    case 120:
                                        return "ISHL";
                                    case 121:
                                        return "LSHL";
                                    case 122:
                                        return "ISHR";
                                    case 123:
                                        return "LSHR";
                                    case 124:
                                        return "IUSHR";
                                    case 125:
                                        return "LUSHR";
                                    case 126:
                                        return "IAND";
                                    case 127:
                                        return "LAND";
                                    case 128:
                                        return "IOR";
                                    case 129:
                                        return "LOR";
                                    case 130:
                                        return "IXOR";
                                    case 131:
                                        return "LXOR";
                                    default:
                                        switch (i10) {
                                            case 133:
                                                return "I2L";
                                            case 134:
                                                return "I2F";
                                            case 135:
                                                return "I2D";
                                            case 136:
                                                return "L2I";
                                            case 137:
                                                return "L2F";
                                            case 138:
                                                return "L2D";
                                            case 139:
                                                return "F2I";
                                            case 140:
                                                return "F2L";
                                            case 141:
                                                return "F2D";
                                            case 142:
                                                return "D2I";
                                            case 143:
                                                return "D2L";
                                            case 144:
                                                return "D2F";
                                            case 145:
                                                return "I2B";
                                            case 146:
                                                return "I2C";
                                            case 147:
                                                return "I2S";
                                            case 148:
                                                return "LCMP";
                                            case 149:
                                                return "FCMPL";
                                            case 150:
                                                return "FCMPG";
                                            case 151:
                                                return "DCMPL";
                                            case 152:
                                                return "DCMPG";
                                            case 153:
                                                return "IFEQ";
                                            case 154:
                                                return "IFNE";
                                            case 155:
                                                return "IFLT";
                                            case 156:
                                                return "IFGE";
                                            case 157:
                                                return "IFGT";
                                            case 158:
                                                return "IFLE";
                                            case 159:
                                                return "IF_ICMPEQ";
                                            case 160:
                                                return "IF_ICMPNE";
                                            case 161:
                                                return "IF_ICMPLT";
                                            case 162:
                                                return "IF_ICMPGE";
                                            case 163:
                                                return "IF_ICMPGT";
                                            case 164:
                                                return "IF_ICMPLE";
                                            case 165:
                                                return "IF_ACMPEQ";
                                            case 166:
                                                return "IF_ACMPNE";
                                            case 167:
                                                return "GOTO";
                                            default:
                                                switch (i10) {
                                                    case 176:
                                                        return "ARETURN";
                                                    case 177:
                                                        return "RETURN";
                                                    case 178:
                                                        return "GETSTATIC";
                                                    case 179:
                                                        return "PUTSTATIC";
                                                    case 180:
                                                        return "GETFIELD";
                                                    case 181:
                                                        return "PUTFIELD";
                                                    case 182:
                                                        return "INVOKEVIRTUAL";
                                                    case 183:
                                                        return "INVOKESPECIAL";
                                                    case 184:
                                                        return "INVOKESTATIC";
                                                    case 185:
                                                        return "INVOKEINTERFACE";
                                                    case 186:
                                                        return "INVOKEDYNAMIC";
                                                    case 187:
                                                        return "NEW";
                                                    case 188:
                                                        return "NEWARRAY";
                                                    default:
                                                        switch (i10) {
                                                            case 190:
                                                                return "ARRAYLENGTH";
                                                            case 191:
                                                                return "ATHROW";
                                                            case 192:
                                                                return "CHECKCAST";
                                                            case 193:
                                                                return "INSTANCEOF";
                                                            case 194:
                                                                return "MONITORENTER";
                                                            case 195:
                                                                return "MONITOREXIT";
                                                            default:
                                                                switch (i10) {
                                                                    case 197:
                                                                        return "MULTIANEWARRAY";
                                                                    case 198:
                                                                        return "IFNULL";
                                                                    case 199:
                                                                        return "IFNONNULL";
                                                                    case 200:
                                                                        return "ICONST";
                                                                    case 201:
                                                                        return "LCONST";
                                                                    case 202:
                                                                        return "FCONST";
                                                                    case 203:
                                                                        return "DCONST";
                                                                    case 204:
                                                                        return "INVOKESTATIC_ITF";
                                                                    case 205:
                                                                        return "INVOKEDIRECT";
                                                                    case 206:
                                                                        return "INVOKEDIRECT_ITF";
                                                                    case 207:
                                                                        return "INVOKESUPER";
                                                                    case 208:
                                                                        return "INVOKESUPER_ITF";
                                                                    case 209:
                                                                        return "DEBUGPOS";
                                                                    case 210:
                                                                        return "PHI";
                                                                    case 211:
                                                                        return "FALLTHROUGH";
                                                                    case 212:
                                                                        return "MOVEEXCEPTION";
                                                                    case 213:
                                                                        return "DEBUGLOCALWRITE";
                                                                    case 214:
                                                                        return "NEWARRAYFILLED";
                                                                    case 215:
                                                                        return "NEWARRAYFILLEDDATA";
                                                                    case 216:
                                                                        return "ITEMBASEDCONSTSTRING";
                                                                    case 217:
                                                                        return "NEWUNBOXEDENUMINSTANCE";
                                                                    case 218:
                                                                        return "INOT";
                                                                    case 219:
                                                                        return "LNOT";
                                                                    case 220:
                                                                        return "DEBUGLOCALREAD";
                                                                    case 221:
                                                                        return "INITCLASS";
                                                                    case 222:
                                                                        return "INVOKEPOLYMORPHIC";
                                                                    case 223:
                                                                        return "RECORDFIELDVALUES";
                                                                    case 224:
                                                                        return "CHECKCAST_SAFE";
                                                                    case 225:
                                                                        return "CHECKCAST_IGNORE_COMPAT";
                                                                    case 226:
                                                                        return "CONSTCLASS_IGNORE_COMPAT";
                                                                    case 227:
                                                                        return "STRINGSWITCH";
                                                                    case 228:
                                                                        return "RESOURCENUMBER";
                                                                    default:
                                                                        throw new C5417Jv0("Unexpected LIR opcode: " + i10);
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    @Override
    public final int a() {
        return 0;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0016. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0019. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x001c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0010. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005a A[FALL_THROUGH, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i10, InterfaceC6923dT interfaceC6923dT) {
        if (i10 == 18) {
            return 2;
        }
        if (i10 != 170) {
            if (i10 != 230) {
                switch (i10) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        return 1;
                    default:
                        switch (i10) {
                            default:
                                switch (i10) {
                                    default:
                                        switch (i10) {
                                            case 96:
                                            case 97:
                                            case 98:
                                            case 99:
                                            case 100:
                                            case 101:
                                            case 102:
                                            case 103:
                                            case 104:
                                            case 105:
                                            case 106:
                                            case 107:
                                            case 108:
                                            case 109:
                                            case 110:
                                            case 111:
                                            case 112:
                                            case 113:
                                            case 114:
                                            case 115:
                                                break;
                                            case 116:
                                            case 117:
                                            case 118:
                                            case 119:
                                                return 1;
                                            case 120:
                                            case 121:
                                            case 122:
                                            case 123:
                                            case 124:
                                            case 125:
                                            case 126:
                                            case 127:
                                            case 128:
                                            case 129:
                                            case 130:
                                            case 131:
                                                return 2;
                                            default:
                                                switch (i10) {
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
                                                        return 1;
                                                    case 148:
                                                    case 149:
                                                    case 150:
                                                    case 151:
                                                    case 152:
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
                                                        return 2;
                                                    default:
                                                        switch (i10) {
                                                            case 176:
                                                            case 177:
                                                                break;
                                                            case 178:
                                                            case 179:
                                                            case 180:
                                                            case 181:
                                                                return 2;
                                                            case 182:
                                                            case 183:
                                                            case 184:
                                                            case 185:
                                                                break;
                                                            case 186:
                                                                return 3;
                                                            case 187:
                                                            case 188:
                                                                return 2;
                                                            default:
                                                                switch (i10) {
                                                                    case 190:
                                                                    case 191:
                                                                        return 1;
                                                                    case 192:
                                                                    case 193:
                                                                        return 2;
                                                                    case 194:
                                                                    case 195:
                                                                        return 1;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 197:
                                                                                return 3;
                                                                            case 198:
                                                                            case 199:
                                                                                return 1;
                                                                            case 200:
                                                                            case 201:
                                                                            case 202:
                                                                            case 203:
                                                                                return 2;
                                                                            case 204:
                                                                            case 205:
                                                                            case 206:
                                                                            case 207:
                                                                            case 208:
                                                                                return 3;
                                                                            case 209:
                                                                                return 0;
                                                                            case 210:
                                                                                return 1;
                                                                            case 211:
                                                                                return 0;
                                                                            case 212:
                                                                            case 213:
                                                                                return 1;
                                                                            case 214:
                                                                                return 3;
                                                                            case 215:
                                                                            case 227:
                                                                                break;
                                                                            case 216:
                                                                            case 217:
                                                                                return 2;
                                                                            case 218:
                                                                            case 219:
                                                                                return 1;
                                                                            case 220:
                                                                                return 0;
                                                                            case 221:
                                                                                return 2;
                                                                            case 222:
                                                                                return 3;
                                                                            case 223:
                                                                            case 224:
                                                                            case 225:
                                                                            case 226:
                                                                                return 2;
                                                                            case 228:
                                                                                return 1;
                                                                            default:
                                                                                throw new C5417Jv0("Unexpected LIR opcode: " + i10);
                                                                        }
                                                                }
                                                        }
                                                    case 167:
                                                        return 1;
                                                }
                                        }
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                        return 2;
                                }
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                                break;
                        }
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                }
            }
            return 3;
        }
        super.a(interfaceC6923dT);
        return 0;
    }

    @Override
    public final void a(InterfaceC6923dT interfaceC6923dT) {
        this.f49644c = b(interfaceC6923dT.a(), interfaceC6923dT) + this.f49644c;
    }

    @Override
    public final void a(Object obj, LS ls) {
        this.f49644c = (ls.f41957b.length * 4) + 4 + this.f49644c;
    }

    @Override
    public final void a(Object obj, OS os) {
        int i10 = this.f49644c;
        int[] iArr = os.f42884b;
        this.f49644c = (iArr.length * 4) + 4 + (iArr.length * 9) + (iArr.length * 4) + 7 + i10;
    }

    @Override
    public final void a(int i10, long j10, short[] sArr, Object obj) {
        this.f49644c = sArr.length + 8 + this.f49644c;
    }
}
