package org.objectweb.asm;

import zd.C16303d;

class Frame {
    static final int APPEND_FRAME = 252;
    private static final int ARRAY_OF = 67108864;
    private static final int BOOLEAN = 4194313;
    private static final int BYTE = 4194314;
    private static final int CHAR = 4194315;
    static final int CHOP_FRAME = 248;
    private static final int CONSTANT_KIND = 4194304;
    private static final int DIM_MASK = -67108864;
    private static final int DIM_SHIFT = 26;
    private static final int DIM_SIZE = 6;
    private static final int DOUBLE = 4194307;
    private static final int ELEMENT_OF = -67108864;
    private static final int FLAGS_SHIFT = 20;
    private static final int FLAGS_SIZE = 2;
    private static final int FLOAT = 4194306;
    static final int FULL_FRAME = 255;
    private static final int INTEGER = 4194305;
    private static final int ITEM_ASM_BOOLEAN = 9;
    private static final int ITEM_ASM_BYTE = 10;
    private static final int ITEM_ASM_CHAR = 11;
    private static final int ITEM_ASM_SHORT = 12;
    static final int ITEM_DOUBLE = 3;
    static final int ITEM_FLOAT = 2;
    static final int ITEM_INTEGER = 1;
    static final int ITEM_LONG = 4;
    static final int ITEM_NULL = 5;
    static final int ITEM_OBJECT = 7;
    static final int ITEM_TOP = 0;
    static final int ITEM_UNINITIALIZED = 8;
    static final int ITEM_UNINITIALIZED_THIS = 6;
    private static final int KIND_MASK = 62914560;
    private static final int KIND_SHIFT = 22;
    private static final int KIND_SIZE = 4;
    private static final int LOCAL_KIND = 16777216;
    private static final int LONG = 4194308;
    private static final int NULL = 4194309;
    private static final int REFERENCE_KIND = 8388608;
    static final int RESERVED = 128;
    static final int SAME_FRAME = 0;
    static final int SAME_FRAME_EXTENDED = 251;
    static final int SAME_LOCALS_1_STACK_ITEM_FRAME = 64;
    static final int SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED = 247;
    private static final int SHORT = 4194316;
    private static final int STACK_KIND = 20971520;
    private static final int TOP = 4194304;
    private static final int TOP_IF_LONG_OR_DOUBLE_FLAG = 1048576;
    private static final int UNINITIALIZED_KIND = 12582912;
    private static final int UNINITIALIZED_THIS = 4194310;
    private static final int VALUE_MASK = 1048575;
    private static final int VALUE_SIZE = 20;
    private int initializationCount;
    private int[] initializations;
    private int[] inputLocals;
    private int[] inputStack;
    private int[] outputLocals;
    private int[] outputStack;
    private short outputStackStart;
    private short outputStackTop;
    Label owner;

    public Frame(Label label) {
        this.owner = label;
    }

    private void addInitializedType(int i10) {
        if (this.initializations == null) {
            this.initializations = new int[2];
        }
        int length = this.initializations.length;
        int i11 = this.initializationCount;
        if (i11 >= length) {
            int[] iArr = new int[Math.max(i11 + 1, length * 2)];
            System.arraycopy(this.initializations, 0, iArr, 0, length);
            this.initializations = iArr;
        }
        int[] iArr2 = this.initializations;
        int i12 = this.initializationCount;
        this.initializationCount = i12 + 1;
        iArr2[i12] = i10;
    }

    public static int getAbstractTypeFromApiFormat(SymbolTable symbolTable, Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() | 4194304 : obj instanceof String ? getAbstractTypeFromDescriptor(symbolTable, Type.getObjectType((String) obj).getDescriptor(), 0) : symbolTable.addUninitializedType("", ((Label) obj).bytecodeOffset) | UNINITIALIZED_KIND;
    }

    private static int getAbstractTypeFromDescriptor(SymbolTable symbolTable, String str, int i10) {
        char charAt = str.charAt(i10);
        int i11 = FLOAT;
        if (charAt == 'F') {
            return FLOAT;
        }
        if (charAt == 'L') {
            return symbolTable.addType(str.substring(i10 + 1, str.length() - 1)) | 8388608;
        }
        if (charAt != 'S') {
            if (charAt == 'V') {
                return 0;
            }
            if (charAt != 'I') {
                if (charAt == 'J') {
                    return LONG;
                }
                if (charAt != 'Z') {
                    if (charAt == '[') {
                        int i12 = i10 + 1;
                        while (str.charAt(i12) == '[') {
                            i12++;
                        }
                        char charAt2 = str.charAt(i12);
                        if (charAt2 != 'F') {
                            if (charAt2 == 'L') {
                                i11 = symbolTable.addType(str.substring(i12 + 1, str.length() - 1)) | 8388608;
                            } else if (charAt2 == 'S') {
                                i11 = SHORT;
                            } else if (charAt2 == 'Z') {
                                i11 = BOOLEAN;
                            } else if (charAt2 == 'I') {
                                i11 = INTEGER;
                            } else if (charAt2 != 'J') {
                                switch (charAt2) {
                                    case 'B':
                                        i11 = BYTE;
                                        break;
                                    case 'C':
                                        i11 = CHAR;
                                        break;
                                    case 'D':
                                        i11 = DOUBLE;
                                        break;
                                    default:
                                        throw new IllegalArgumentException("Invalid descriptor fragment: " + str.substring(i12));
                                }
                            } else {
                                i11 = LONG;
                            }
                        }
                        return ((i12 - i10) << 26) | i11;
                    }
                    switch (charAt) {
                        case 'B':
                        case 'C':
                            break;
                        case 'D':
                            return DOUBLE;
                        default:
                            throw new IllegalArgumentException("Invalid descriptor: " + str.substring(i10));
                    }
                }
            }
        }
        return INTEGER;
    }

    public static int getAbstractTypeFromInternalName(SymbolTable symbolTable, String str) {
        return symbolTable.addType(str) | 8388608;
    }

    private int getConcreteOutputType(int i10, int i11) {
        int i12 = (-67108864) & i10;
        int i13 = KIND_MASK & i10;
        if (i13 == 16777216) {
            int i14 = i12 + this.inputLocals[i10 & 1048575];
            if ((i10 & 1048576) == 0 || !(i14 == LONG || i14 == DOUBLE)) {
                return i14;
            }
            return 4194304;
        }
        if (i13 != STACK_KIND) {
            return i10;
        }
        int i15 = i12 + this.inputStack[i11 - (i10 & 1048575)];
        if ((i10 & 1048576) == 0 || !(i15 == LONG || i15 == DOUBLE)) {
            return i15;
        }
        return 4194304;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0051 A[LOOP:0: B:8:0x000d->B:15:0x0051, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0037 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int getInitializedType(SymbolTable symbolTable, int i10) {
        int i11;
        if (i10 == UNINITIALIZED_THIS || ((-4194304) & i10) == UNINITIALIZED_KIND) {
            for (int i12 = 0; i12 < this.initializationCount; i12++) {
                int i13 = this.initializations[i12];
                int i14 = (-67108864) & i13;
                int i15 = KIND_MASK & i13;
                int i16 = i13 & 1048575;
                if (i15 == 16777216) {
                    i11 = this.inputLocals[i16];
                } else {
                    if (i15 == STACK_KIND) {
                        int[] iArr = this.inputStack;
                        i11 = iArr[iArr.length - i16];
                    }
                    if (i10 != i13) {
                        return (i10 == UNINITIALIZED_THIS ? symbolTable.addType(symbolTable.getClassName()) : symbolTable.addType(symbolTable.getType(i10 & 1048575).value)) | 8388608;
                    }
                }
                i13 = i11 + i14;
                if (i10 != i13) {
                }
            }
        }
        return i10;
    }

    private int getLocal(int i10) {
        int[] iArr = this.outputLocals;
        if (iArr == null || i10 >= iArr.length) {
            return i10 | 16777216;
        }
        int i11 = iArr[i10];
        if (i11 != 0) {
            return i11;
        }
        int i12 = i10 | 16777216;
        iArr[i10] = i12;
        return i12;
    }

    private int pop() {
        short s10 = this.outputStackTop;
        if (s10 > 0) {
            int[] iArr = this.outputStack;
            short s11 = (short) (s10 - 1);
            this.outputStackTop = s11;
            return iArr[s11];
        }
        short s12 = (short) (this.outputStackStart - 1);
        this.outputStackStart = s12;
        return (-s12) | STACK_KIND;
    }

    private void push(int i10) {
        if (this.outputStack == null) {
            this.outputStack = new int[10];
        }
        int length = this.outputStack.length;
        short s10 = this.outputStackTop;
        if (s10 >= length) {
            int[] iArr = new int[Math.max(s10 + 1, length * 2)];
            System.arraycopy(this.outputStack, 0, iArr, 0, length);
            this.outputStack = iArr;
        }
        int[] iArr2 = this.outputStack;
        short s11 = this.outputStackTop;
        short s12 = (short) (s11 + 1);
        this.outputStackTop = s12;
        iArr2[s11] = i10;
        short s13 = (short) (this.outputStackStart + s12);
        Label label = this.owner;
        if (s13 > label.outputStackMax) {
            label.outputStackMax = s13;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x0084. Please report as an issue. */
    public static void putAbstractType(SymbolTable symbolTable, int i10, ByteVector byteVector) {
        int i11 = ((-67108864) & i10) >> 26;
        if (i11 == 0) {
            int i12 = i10 & 1048575;
            int i13 = i10 & KIND_MASK;
            if (i13 == 4194304) {
                byteVector.putByte(i12);
                return;
            } else if (i13 == 8388608) {
                byteVector.putByte(7).putShort(symbolTable.addConstantClass(symbolTable.getType(i12).value).index);
                return;
            } else {
                if (i13 != UNINITIALIZED_KIND) {
                    throw new AssertionError();
                }
                byteVector.putByte(8).putShort((int) symbolTable.getType(i12).data);
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i14 = i11 - 1;
            if (i11 <= 0) {
                break;
            }
            sb2.append('[');
            i11 = i14;
        }
        if ((i10 & KIND_MASK) == 8388608) {
            sb2.append('L');
            sb2.append(symbolTable.getType(i10 & 1048575).value);
            sb2.append(';');
        } else {
            int i15 = i10 & 1048575;
            if (i15 == 1) {
                sb2.append('I');
            } else if (i15 == 2) {
                sb2.append('F');
            } else if (i15 == 3) {
                sb2.append('D');
            } else if (i15 != 4) {
                switch (i15) {
                    case 9:
                        sb2.append('Z');
                        break;
                    case 10:
                        sb2.append('B');
                        break;
                    case 11:
                        sb2.append('C');
                        break;
                    case 12:
                        sb2.append('S');
                        break;
                    default:
                        throw new AssertionError();
                }
            } else {
                sb2.append('J');
            }
        }
        byteVector.putByte(7).putShort(symbolTable.addConstantClass(sb2.toString()).index);
    }

    private void setLocal(int i10, int i11) {
        if (this.outputLocals == null) {
            this.outputLocals = new int[10];
        }
        int length = this.outputLocals.length;
        if (i10 >= length) {
            int[] iArr = new int[Math.max(i10 + 1, length * 2)];
            System.arraycopy(this.outputLocals, 0, iArr, 0, length);
            this.outputLocals = iArr;
        }
        this.outputLocals[i10] = i11;
    }

    public final void accept(MethodWriter methodWriter) {
        int[] iArr = this.inputLocals;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = 2;
            if (i11 >= iArr.length) {
                break;
            }
            int i15 = iArr[i11];
            if (i15 != LONG && i15 != DOUBLE) {
                i14 = 1;
            }
            i11 += i14;
            if (i15 == 4194304) {
                i13++;
            } else {
                i12 += i13 + 1;
                i13 = 0;
            }
        }
        int[] iArr2 = this.inputStack;
        int i16 = 0;
        int i17 = 0;
        while (i16 < iArr2.length) {
            int i18 = iArr2[i16];
            i16 += (i18 == LONG || i18 == DOUBLE) ? 2 : 1;
            i17++;
        }
        int visitFrameStart = methodWriter.visitFrameStart(this.owner.bytecodeOffset, i12, i17);
        int i19 = 0;
        while (true) {
            int i20 = i12 - 1;
            if (i12 <= 0) {
                break;
            }
            int i21 = iArr[i19];
            i19 += (i21 == LONG || i21 == DOUBLE) ? 2 : 1;
            methodWriter.visitAbstractType(visitFrameStart, i21);
            i12 = i20;
            visitFrameStart++;
        }
        while (true) {
            int i22 = i17 - 1;
            if (i17 <= 0) {
                methodWriter.visitFrameEnd();
                return;
            }
            int i23 = iArr2[i10];
            i10 += (i23 == LONG || i23 == DOUBLE) ? 2 : 1;
            methodWriter.visitAbstractType(visitFrameStart, i23);
            visitFrameStart++;
            i17 = i22;
        }
    }

    public final void copyFrom(Frame frame) {
        this.inputLocals = frame.inputLocals;
        this.inputStack = frame.inputStack;
        this.outputStackStart = (short) 0;
        this.outputLocals = frame.outputLocals;
        this.outputStack = frame.outputStack;
        this.outputStackTop = frame.outputStackTop;
        this.initializationCount = frame.initializationCount;
        this.initializations = frame.initializations;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0027. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0356  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void execute(int i10, int i11, Symbol symbol, SymbolTable symbolTable) {
        switch (i10) {
            case 0:
                return;
            case 1:
                push(NULL);
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 16:
            case 17:
                push(INTEGER);
                return;
            case 9:
            case 10:
                push(LONG);
                push(4194304);
                return;
            case 11:
            case 12:
            case 13:
                push(FLOAT);
                return;
            case 14:
            case 15:
                push(DOUBLE);
                push(4194304);
                return;
            case 18:
                int i12 = symbol.tag;
                switch (i12) {
                    case 3:
                        push(INTEGER);
                        return;
                    case 4:
                        push(FLOAT);
                        return;
                    case 5:
                        push(LONG);
                        push(4194304);
                        return;
                    case 6:
                        push(DOUBLE);
                        push(4194304);
                        return;
                    case 7:
                        push(symbolTable.addType("java/lang/Class") | 8388608);
                        return;
                    case 8:
                        push(symbolTable.addType("java/lang/String") | 8388608);
                        return;
                    default:
                        switch (i12) {
                            case 15:
                                push(symbolTable.addType("java/lang/invoke/MethodHandle") | 8388608);
                                return;
                            case 16:
                                push(symbolTable.addType("java/lang/invoke/MethodType") | 8388608);
                                return;
                            case 17:
                                push(symbolTable, symbol.value);
                                return;
                            default:
                                throw new AssertionError();
                        }
                }
            default:
                switch (i10) {
                    case 21:
                        break;
                    case 22:
                        break;
                    case 23:
                        break;
                    case 24:
                        break;
                    case 25:
                        push(getLocal(i11));
                        return;
                    default:
                        switch (i10) {
                            case 46:
                            case 51:
                            case 52:
                            case 53:
                                pop(2);
                                push(INTEGER);
                                return;
                            case 47:
                                pop(2);
                                push(LONG);
                                push(4194304);
                                return;
                            case 48:
                                pop(2);
                                push(FLOAT);
                                return;
                            case 49:
                                pop(2);
                                push(DOUBLE);
                                push(4194304);
                                return;
                            case 50:
                                pop(1);
                                int pop = pop();
                                if (pop != NULL) {
                                    pop += C16303d.f131228w;
                                }
                                push(pop);
                                return;
                            case 54:
                            case 56:
                            case 58:
                                setLocal(i11, pop());
                                if (i11 > 0) {
                                    int i13 = i11 - 1;
                                    int local = getLocal(i13);
                                    if (local == LONG || local == DOUBLE) {
                                        setLocal(i13, 4194304);
                                        return;
                                    }
                                    int i14 = local & KIND_MASK;
                                    if (i14 == 16777216 || i14 == STACK_KIND) {
                                        setLocal(i13, local | 1048576);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            case 55:
                            case 57:
                                pop(1);
                                setLocal(i11, pop());
                                setLocal(i11 + 1, 4194304);
                                if (i11 > 0) {
                                    int i15 = i11 - 1;
                                    int local2 = getLocal(i15);
                                    if (local2 == LONG || local2 == DOUBLE) {
                                        setLocal(i15, 4194304);
                                        return;
                                    }
                                    int i16 = local2 & KIND_MASK;
                                    if (i16 == 16777216 || i16 == STACK_KIND) {
                                        setLocal(i15, local2 | 1048576);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            default:
                                switch (i10) {
                                    case 79:
                                    case 81:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                        pop(3);
                                        return;
                                    case 80:
                                    case 82:
                                        pop(4);
                                        return;
                                    case 87:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 170:
                                    case 171:
                                    case 172:
                                    case 174:
                                    case 176:
                                    case 191:
                                    case 194:
                                    case 195:
                                        break;
                                    case 88:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 173:
                                    case 175:
                                        pop(2);
                                        return;
                                    case 89:
                                        int pop2 = pop();
                                        push(pop2);
                                        push(pop2);
                                        return;
                                    case 90:
                                        int pop3 = pop();
                                        int pop4 = pop();
                                        push(pop3);
                                        push(pop4);
                                        push(pop3);
                                        return;
                                    case 91:
                                        int pop5 = pop();
                                        int pop6 = pop();
                                        int pop7 = pop();
                                        push(pop5);
                                        push(pop7);
                                        push(pop6);
                                        push(pop5);
                                        return;
                                    case 92:
                                        int pop8 = pop();
                                        int pop9 = pop();
                                        push(pop9);
                                        push(pop8);
                                        push(pop9);
                                        push(pop8);
                                        return;
                                    case 93:
                                        int pop10 = pop();
                                        int pop11 = pop();
                                        int pop12 = pop();
                                        push(pop11);
                                        push(pop10);
                                        push(pop12);
                                        push(pop11);
                                        push(pop10);
                                        return;
                                    case 94:
                                        int pop13 = pop();
                                        int pop14 = pop();
                                        int pop15 = pop();
                                        int pop16 = pop();
                                        push(pop14);
                                        push(pop13);
                                        push(pop16);
                                        push(pop15);
                                        push(pop14);
                                        push(pop13);
                                        return;
                                    case 95:
                                        int pop17 = pop();
                                        int pop18 = pop();
                                        push(pop17);
                                        push(pop18);
                                        return;
                                    case 96:
                                    case 100:
                                    case 104:
                                    case 108:
                                    case 112:
                                    case 120:
                                    case 122:
                                    case 124:
                                    case 126:
                                    case 128:
                                    case 130:
                                    case 136:
                                    case 142:
                                    case 149:
                                    case 150:
                                        break;
                                    case 97:
                                    case 101:
                                    case 105:
                                    case 109:
                                    case 113:
                                    case 127:
                                    case 129:
                                    case 131:
                                        pop(4);
                                        push(LONG);
                                        push(4194304);
                                        return;
                                    case 98:
                                    case 102:
                                    case 106:
                                    case 110:
                                    case 114:
                                    case 137:
                                    case 144:
                                        break;
                                    case 99:
                                    case 103:
                                    case 107:
                                    case 111:
                                    case 115:
                                        pop(4);
                                        push(DOUBLE);
                                        push(4194304);
                                        return;
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                    case 145:
                                    case 146:
                                    case 147:
                                    case 167:
                                    case 177:
                                        return;
                                    case 121:
                                    case 123:
                                    case 125:
                                        pop(3);
                                        push(LONG);
                                        push(4194304);
                                        return;
                                    case 132:
                                        setLocal(i11, INTEGER);
                                        return;
                                    case 133:
                                    case 140:
                                        pop(1);
                                        push(LONG);
                                        push(4194304);
                                        return;
                                    case 134:
                                        pop(1);
                                        push(FLOAT);
                                        return;
                                    case 135:
                                    case 141:
                                        pop(1);
                                        push(DOUBLE);
                                        push(4194304);
                                        return;
                                    case 138:
                                        break;
                                    case 139:
                                    case 190:
                                    case 193:
                                        pop(1);
                                        push(INTEGER);
                                        return;
                                    case 143:
                                        break;
                                    case 148:
                                    case 151:
                                    case 152:
                                        pop(4);
                                        push(INTEGER);
                                        return;
                                    case 168:
                                    case 169:
                                        throw new IllegalArgumentException("JSR/RET are not supported with computeFrames option");
                                    case 178:
                                        push(symbolTable, symbol.value);
                                        return;
                                    case 179:
                                        pop(symbol.value);
                                        return;
                                    case 180:
                                        pop(1);
                                        push(symbolTable, symbol.value);
                                        return;
                                    case 181:
                                        pop(symbol.value);
                                        pop();
                                        return;
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                        pop(symbol.value);
                                        if (i10 != 184) {
                                            int pop19 = pop();
                                            if (i10 == 183 && symbol.name.charAt(0) == '<') {
                                                addInitializedType(pop19);
                                            }
                                        }
                                        push(symbolTable, symbol.value);
                                        return;
                                    case 186:
                                        pop(symbol.value);
                                        push(symbolTable, symbol.value);
                                        return;
                                    case 187:
                                        push(symbolTable.addUninitializedType(symbol.value, i11) | UNINITIALIZED_KIND);
                                        return;
                                    case 188:
                                        pop();
                                        switch (i11) {
                                            case 4:
                                                push(71303177);
                                                return;
                                            case 5:
                                                push(71303179);
                                                return;
                                            case 6:
                                                push(71303170);
                                                return;
                                            case 7:
                                                push(71303171);
                                                return;
                                            case 8:
                                                push(71303178);
                                                return;
                                            case 9:
                                                push(71303180);
                                                return;
                                            case 10:
                                                push(71303169);
                                                return;
                                            case 11:
                                                push(71303172);
                                                return;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                    case 189:
                                        String str = symbol.value;
                                        pop();
                                        if (str.charAt(0) != '[') {
                                            push(symbolTable.addType(str) | 75497472);
                                            return;
                                        }
                                        push(symbolTable, '[' + str);
                                        return;
                                    case 192:
                                        String str2 = symbol.value;
                                        pop();
                                        if (str2.charAt(0) == '[') {
                                            push(symbolTable, str2);
                                            return;
                                        } else {
                                            push(symbolTable.addType(str2) | 8388608);
                                            return;
                                        }
                                    default:
                                        switch (i10) {
                                            case 197:
                                                pop(i11);
                                                push(symbolTable, symbol.value);
                                                return;
                                            case 198:
                                            case 199:
                                                break;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                }
                                pop(1);
                                return;
                        }
                }
        }
    }

    public final int getInputStackSize() {
        return this.inputStack.length;
    }

    public final boolean merge(SymbolTable symbolTable, Frame frame, int i10) {
        boolean z10;
        int i11;
        int length = this.inputLocals.length;
        int length2 = this.inputStack.length;
        boolean z11 = true;
        if (frame.inputLocals == null) {
            frame.inputLocals = new int[length];
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i12 = 0; i12 < length; i12++) {
            int[] iArr = this.outputLocals;
            if (iArr != null && i12 < iArr.length) {
                int i13 = iArr[i12];
                if (i13 == 0) {
                    i11 = this.inputLocals[i12];
                } else {
                    i11 = getConcreteOutputType(i13, length2);
                }
            } else {
                i11 = this.inputLocals[i12];
            }
            if (this.initializations != null) {
                i11 = getInitializedType(symbolTable, i11);
            }
            z10 |= merge(symbolTable, i11, frame.inputLocals, i12);
        }
        if (i10 > 0) {
            for (int i14 = 0; i14 < length; i14++) {
                z10 |= merge(symbolTable, this.inputLocals[i14], frame.inputLocals, i14);
            }
            if (frame.inputStack == null) {
                frame.inputStack = new int[1];
            } else {
                z11 = z10;
            }
            return merge(symbolTable, i10, frame.inputStack, 0) | z11;
        }
        int length3 = this.inputStack.length + this.outputStackStart;
        if (frame.inputStack == null) {
            frame.inputStack = new int[this.outputStackTop + length3];
        } else {
            z11 = z10;
        }
        for (int i15 = 0; i15 < length3; i15++) {
            int i16 = this.inputStack[i15];
            if (this.initializations != null) {
                i16 = getInitializedType(symbolTable, i16);
            }
            z11 |= merge(symbolTable, i16, frame.inputStack, i15);
        }
        for (int i17 = 0; i17 < this.outputStackTop; i17++) {
            int concreteOutputType = getConcreteOutputType(this.outputStack[i17], length2);
            if (this.initializations != null) {
                concreteOutputType = getInitializedType(symbolTable, concreteOutputType);
            }
            z11 |= merge(symbolTable, concreteOutputType, frame.inputStack, length3 + i17);
        }
        return z11;
    }

    public final void setInputFrameFromApiFormat(SymbolTable symbolTable, int i10, Object[] objArr, int i11, Object[] objArr2) {
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = i12 + 1;
            this.inputLocals[i12] = getAbstractTypeFromApiFormat(symbolTable, objArr[i13]);
            Object obj = objArr[i13];
            if (obj == Opcodes.LONG || obj == Opcodes.DOUBLE) {
                i12 += 2;
                this.inputLocals[i14] = 4194304;
            } else {
                i12 = i14;
            }
        }
        while (true) {
            int[] iArr = this.inputLocals;
            if (i12 >= iArr.length) {
                break;
            }
            iArr[i12] = 4194304;
            i12++;
        }
        int i15 = 0;
        for (int i16 = 0; i16 < i11; i16++) {
            Object obj2 = objArr2[i16];
            if (obj2 == Opcodes.LONG || obj2 == Opcodes.DOUBLE) {
                i15++;
            }
        }
        this.inputStack = new int[i15 + i11];
        int i17 = 0;
        for (int i18 = 0; i18 < i11; i18++) {
            int i19 = i17 + 1;
            this.inputStack[i17] = getAbstractTypeFromApiFormat(symbolTable, objArr2[i18]);
            Object obj3 = objArr2[i18];
            if (obj3 == Opcodes.LONG || obj3 == Opcodes.DOUBLE) {
                i17 += 2;
                this.inputStack[i19] = 4194304;
            } else {
                i17 = i19;
            }
        }
        this.outputStackTop = (short) 0;
        this.initializationCount = 0;
    }

    public final void setInputFrameFromDescriptor(SymbolTable symbolTable, int i10, String str, int i11) {
        int i12;
        int[] iArr = new int[i11];
        this.inputLocals = iArr;
        this.inputStack = new int[0];
        if ((i10 & 8) == 0) {
            i12 = 1;
            if ((i10 & 262144) == 0) {
                iArr[0] = symbolTable.addType(symbolTable.getClassName()) | 8388608;
            } else {
                iArr[0] = UNINITIALIZED_THIS;
            }
        } else {
            i12 = 0;
        }
        for (Type type : Type.getArgumentTypes(str)) {
            int abstractTypeFromDescriptor = getAbstractTypeFromDescriptor(symbolTable, type.getDescriptor(), 0);
            int[] iArr2 = this.inputLocals;
            int i13 = i12 + 1;
            iArr2[i12] = abstractTypeFromDescriptor;
            if (abstractTypeFromDescriptor == LONG || abstractTypeFromDescriptor == DOUBLE) {
                i12 += 2;
                iArr2[i13] = 4194304;
            } else {
                i12 = i13;
            }
        }
        while (i12 < i11) {
            this.inputLocals[i12] = 4194304;
            i12++;
        }
    }

    private void pop(int i10) {
        short s10 = this.outputStackTop;
        if (s10 >= i10) {
            this.outputStackTop = (short) (s10 - i10);
        } else {
            this.outputStackStart = (short) (this.outputStackStart - (i10 - s10));
            this.outputStackTop = (short) 0;
        }
    }

    private void pop(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            pop((Type.getArgumentsAndReturnSizes(str) >> 2) - 1);
        } else if (charAt != 'J' && charAt != 'D') {
            pop(1);
        } else {
            pop(2);
        }
    }

    private void push(SymbolTable symbolTable, String str) {
        int abstractTypeFromDescriptor = getAbstractTypeFromDescriptor(symbolTable, str, str.charAt(0) == '(' ? Type.getReturnTypeOffset(str) : 0);
        if (abstractTypeFromDescriptor != 0) {
            push(abstractTypeFromDescriptor);
            if (abstractTypeFromDescriptor == LONG || abstractTypeFromDescriptor == DOUBLE) {
                push(4194304);
            }
        }
    }

    private static boolean merge(SymbolTable symbolTable, int i10, int[] iArr, int i11) {
        int min;
        int addType;
        int i12 = iArr[i11];
        if (i12 == i10) {
            return false;
        }
        if ((67108863 & i10) == NULL) {
            if (i12 == NULL) {
                return false;
            }
            i10 = NULL;
        }
        if (i12 == 0) {
            iArr[i11] = i10;
            return true;
        }
        int i13 = i12 & C16303d.f131228w;
        int i14 = 4194304;
        if (i13 != 0 || (i12 & KIND_MASK) == 8388608) {
            if (i10 == NULL) {
                return false;
            }
            if ((i10 & (-4194304)) != ((-4194304) & i12)) {
                int i15 = i10 & C16303d.f131228w;
                if (i15 != 0 || (i10 & KIND_MASK) == 8388608) {
                    if (i15 != 0 && (i10 & KIND_MASK) != 8388608) {
                        i15 += C16303d.f131228w;
                    }
                    if (i13 != 0 && (i12 & KIND_MASK) != 8388608) {
                        i13 += C16303d.f131228w;
                    }
                    min = Math.min(i15, i13) | 8388608;
                    addType = symbolTable.addType("java/lang/Object");
                    i14 = min | addType;
                }
            } else if ((i12 & KIND_MASK) == 8388608) {
                i14 = (i10 & C16303d.f131228w) | 8388608 | symbolTable.addMergedType(i10 & 1048575, 1048575 & i12);
            } else {
                min = ((i10 & C16303d.f131228w) + C16303d.f131228w) | 8388608;
                addType = symbolTable.addType("java/lang/Object");
                i14 = min | addType;
            }
        } else if (i12 == NULL) {
            if ((i10 & C16303d.f131228w) == 0 && (i10 & KIND_MASK) != 8388608) {
                i10 = 4194304;
            }
            i14 = i10;
        }
        if (i14 == i12) {
            return false;
        }
        iArr[i11] = i14;
        return true;
    }
}
