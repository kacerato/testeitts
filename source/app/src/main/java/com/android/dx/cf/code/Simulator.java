package com.android.dx.cf.code;

import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import java.util.ArrayList;

public class Simulator {
    private static final String LOCAL_MISMATCH_ERROR = "This is symptomatic of .class transformation tools that ignore local variable information.";
    private final BytecodeArray code;
    private final DexOptions dexOptions;
    private final LocalVariableList localVariables;
    private final Machine machine;
    private final SimVisitor visitor;

    public class SimVisitor implements BytecodeArray.Visitor {
        private Frame frame = null;
        private final Machine machine;
        private int previousOffset;

        public SimVisitor() {
            this.machine = Simulator.this.machine;
        }

        private void checkReturnType(Type type) {
            Type returnType = this.machine.getPrototype().getReturnType();
            if (Merger.isPossiblyAssignableFrom(returnType, type)) {
                return;
            }
            throw new SimException("return type mismatch: prototype indicates " + returnType.toHuman() + ", but encountered type " + type.toHuman());
        }

        @Override
        public int getPreviousOffset() {
            return this.previousOffset;
        }

        public void setFrame(Frame frame) {
            if (frame == null) {
                throw new NullPointerException("frame == null");
            }
            this.frame = frame;
        }

        @Override
        public void setPreviousOffset(int i10) {
            this.previousOffset = i10;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:1:0x0000. Please report as an issue. */
        @Override
        public void visitBranch(int i10, int i11, int i12, int i13) {
            switch (i10) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                    this.machine.popArgs(this.frame, Type.INT);
                    this.machine.auxTargetArg(i13);
                    this.machine.run(this.frame, i11, i10);
                    return;
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                    Machine machine = this.machine;
                    Frame frame = this.frame;
                    Type type = Type.INT;
                    machine.popArgs(frame, type, type);
                    this.machine.auxTargetArg(i13);
                    this.machine.run(this.frame, i11, i10);
                    return;
                case 165:
                case 166:
                    Machine machine2 = this.machine;
                    Frame frame2 = this.frame;
                    Type type2 = Type.OBJECT;
                    machine2.popArgs(frame2, type2, type2);
                    this.machine.auxTargetArg(i13);
                    this.machine.run(this.frame, i11, i10);
                    return;
                default:
                    switch (i10) {
                        case 198:
                        case 199:
                            this.machine.popArgs(this.frame, Type.OBJECT);
                            break;
                        case 200:
                        case 201:
                            break;
                        default:
                            visitInvalid(i10, i11, i12);
                            return;
                    }
                    this.machine.auxTargetArg(i13);
                    this.machine.run(this.frame, i11, i10);
                    return;
                case 167:
                case 168:
                    this.machine.clearArgs();
                    this.machine.auxTargetArg(i13);
                    this.machine.run(this.frame, i11, i10);
                    return;
            }
        }

        @Override
        public void visitConstant(int i10, int i11, int i12, Constant constant, int i13) {
            if (i10 == 189) {
                this.machine.popArgs(this.frame, Type.INT);
            } else if (i10 != 197) {
                if (i10 != 192 && i10 != 193) {
                    switch (i10) {
                        case 179:
                            this.machine.popArgs(this.frame, ((CstFieldRef) constant).getType());
                            break;
                        case 180:
                            break;
                        case 181:
                            this.machine.popArgs(this.frame, Type.OBJECT, ((CstFieldRef) constant).getType());
                            break;
                        case 182:
                        case 183:
                        case 184:
                        case 185:
                            if (constant instanceof CstInterfaceMethodRef) {
                                if (i10 != 185 && !Simulator.this.dexOptions.canUseDefaultInterfaceMethods()) {
                                    throw new SimException("default or static interface method used without --min-sdk-version >= 24");
                                }
                                constant = ((CstInterfaceMethodRef) constant).toMethodRef();
                            }
                            if ((constant instanceof CstMethodRef) && ((CstMethodRef) constant).isSignaturePolymorphic()) {
                                if (!Simulator.this.dexOptions.canUseInvokePolymorphic()) {
                                    throw new SimException("signature-polymorphic method called without --min-sdk-version >= 26");
                                }
                                if (i10 != 182) {
                                    throw new SimException("Unsupported signature polymorphic invocation (" + ByteOps.opName(i10) + ")");
                                }
                            }
                            this.machine.popArgs(this.frame, ((CstMethodRef) constant).getPrototype(i10 == 184));
                            break;
                        default:
                            this.machine.clearArgs();
                            break;
                    }
                }
                this.machine.popArgs(this.frame, Type.OBJECT);
            } else {
                this.machine.popArgs(this.frame, Prototype.internInts(Type.VOID, i13));
            }
            this.machine.auxIntArg(i13);
            this.machine.auxCstArg(constant);
            this.machine.run(this.frame, i11, i10);
        }

        @Override
        public void visitInvalid(int i10, int i11, int i12) {
            throw new SimException("invalid opcode " + Hex.u1(i10));
        }

        @Override
        public void visitLocal(int i10, int i11, int i12, int i13, Type type, int i14) {
            Type type2;
            LocalItem localItem;
            LocalVariableList.Item pcAndIndexToLocal = Simulator.this.localVariables.pcAndIndexToLocal(i10 == 54 ? i11 + i12 : i11, i13);
            if (pcAndIndexToLocal != null) {
                type2 = pcAndIndexToLocal.getType();
                if (type2.getBasicFrameType() != type.getBasicFrameType()) {
                    type2 = type;
                    pcAndIndexToLocal = null;
                }
            } else {
                type2 = type;
            }
            if (i10 != 21) {
                if (i10 == 54) {
                    localItem = pcAndIndexToLocal != null ? pcAndIndexToLocal.getLocalItem() : null;
                    this.machine.popArgs(this.frame, type);
                    this.machine.auxType(type);
                    this.machine.localTarget(i13, type2, localItem);
                } else if (i10 == 132) {
                    localItem = pcAndIndexToLocal != null ? pcAndIndexToLocal.getLocalItem() : null;
                    this.machine.localArg(this.frame, i13);
                    this.machine.localTarget(i13, type2, localItem);
                    this.machine.auxType(type);
                    this.machine.auxIntArg(i14);
                    this.machine.auxCstArg(CstInteger.make(i14));
                } else if (i10 != 169) {
                    visitInvalid(i10, i11, i12);
                    return;
                }
                this.machine.run(this.frame, i11, i10);
            }
            this.machine.localArg(this.frame, i13);
            this.machine.localInfo(pcAndIndexToLocal != null);
            this.machine.auxType(type);
            this.machine.run(this.frame, i11, i10);
        }

        @Override
        public void visitNewarray(int i10, int i11, CstType cstType, ArrayList<Constant> arrayList) {
            this.machine.popArgs(this.frame, Type.INT);
            this.machine.auxInitValues(arrayList);
            this.machine.auxCstArg(cstType);
            this.machine.run(this.frame, i10, 188);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0016. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:118:0x02b8  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void visitNoArgs(int i10, int i11, int i12, Type type) {
            if (i10 != 0) {
                if (i10 == 190) {
                    Type peekType = this.frame.getStack().peekType(0);
                    if (!peekType.isArrayOrKnownNull()) {
                        throw new SimException("type mismatch: expected array type but encountered " + peekType.toHuman());
                    }
                    this.machine.popArgs(this.frame, Type.OBJECT);
                } else if (i10 == 191 || i10 == 194 || i10 == 195) {
                    this.machine.popArgs(this.frame, Type.OBJECT);
                } else {
                    switch (i10) {
                        case 0:
                            break;
                        case 46:
                            Type requiredArrayTypeFor = Simulator.requiredArrayTypeFor(type, this.frame.getStack().peekType(1));
                            type = Type.KNOWN_NULL;
                            if (requiredArrayTypeFor != type) {
                                type = requiredArrayTypeFor.getComponentType();
                            }
                            this.machine.popArgs(this.frame, requiredArrayTypeFor, Type.INT);
                            break;
                        case 79:
                            ExecutionStack stack = this.frame.getStack();
                            int i13 = type.isCategory1() ? 2 : 3;
                            Type peekType2 = stack.peekType(i13);
                            boolean peekLocal = stack.peekLocal(i13);
                            Type requiredArrayTypeFor2 = Simulator.requiredArrayTypeFor(type, peekType2);
                            if (peekLocal) {
                                Type type2 = Type.KNOWN_NULL;
                                if (requiredArrayTypeFor2 != type2) {
                                    type2 = requiredArrayTypeFor2.getComponentType();
                                }
                                type = type2;
                            }
                            this.machine.popArgs(this.frame, requiredArrayTypeFor2, Type.INT, type);
                            break;
                        case 100:
                        case 104:
                        case 108:
                        case 112:
                        case 126:
                        case 128:
                        case 130:
                            this.machine.popArgs(this.frame, type, type);
                            break;
                        case 116:
                            this.machine.popArgs(this.frame, type);
                            break;
                        case 120:
                        case 122:
                        case 124:
                            this.machine.popArgs(this.frame, type, Type.INT);
                            break;
                        case 172:
                            Type peekType3 = type == Type.OBJECT ? this.frame.getStack().peekType(0) : type;
                            this.machine.popArgs(this.frame, type);
                            checkReturnType(peekType3);
                            break;
                        case 177:
                            this.machine.clearArgs();
                            checkReturnType(Type.VOID);
                            break;
                        default:
                            int i14 = 17;
                            switch (i10) {
                                case 87:
                                    if (!this.frame.getStack().peekType(0).isCategory2()) {
                                        this.machine.popArgs(this.frame, 1);
                                        break;
                                    } else {
                                        throw Simulator.access$100();
                                    }
                                case 88:
                                case 92:
                                    ExecutionStack stack2 = this.frame.getStack();
                                    if (stack2.peekType(0).isCategory2()) {
                                        this.machine.popArgs(this.frame, 1);
                                    } else {
                                        if (!stack2.peekType(1).isCategory1()) {
                                            throw Simulator.access$100();
                                        }
                                        this.machine.popArgs(this.frame, 2);
                                        i14 = 8481;
                                    }
                                    if (i10 == 92) {
                                        this.machine.auxIntArg(i14);
                                        break;
                                    }
                                    break;
                                case 89:
                                    if (!this.frame.getStack().peekType(0).isCategory2()) {
                                        this.machine.popArgs(this.frame, 1);
                                        this.machine.auxIntArg(17);
                                        break;
                                    } else {
                                        throw Simulator.access$100();
                                    }
                                case 90:
                                    ExecutionStack stack3 = this.frame.getStack();
                                    if (!stack3.peekType(0).isCategory1() || !stack3.peekType(1).isCategory1()) {
                                        throw Simulator.access$100();
                                    }
                                    this.machine.popArgs(this.frame, 2);
                                    this.machine.auxIntArg(530);
                                    break;
                                    break;
                                case 91:
                                    ExecutionStack stack4 = this.frame.getStack();
                                    if (stack4.peekType(0).isCategory2()) {
                                        throw Simulator.access$100();
                                    }
                                    if (stack4.peekType(1).isCategory2()) {
                                        this.machine.popArgs(this.frame, 2);
                                        this.machine.auxIntArg(530);
                                        break;
                                    } else {
                                        if (!stack4.peekType(2).isCategory1()) {
                                            throw Simulator.access$100();
                                        }
                                        this.machine.popArgs(this.frame, 3);
                                        this.machine.auxIntArg(12819);
                                        break;
                                    }
                                case 93:
                                    ExecutionStack stack5 = this.frame.getStack();
                                    if (!stack5.peekType(0).isCategory2()) {
                                        if (!stack5.peekType(1).isCategory2() && !stack5.peekType(2).isCategory2()) {
                                            this.machine.popArgs(this.frame, 3);
                                            this.machine.auxIntArg(205106);
                                            break;
                                        } else {
                                            throw Simulator.access$100();
                                        }
                                    } else if (!stack5.peekType(2).isCategory2()) {
                                        this.machine.popArgs(this.frame, 2);
                                        this.machine.auxIntArg(530);
                                        break;
                                    } else {
                                        throw Simulator.access$100();
                                    }
                                    break;
                                case 94:
                                    ExecutionStack stack6 = this.frame.getStack();
                                    if (stack6.peekType(0).isCategory2()) {
                                        if (stack6.peekType(2).isCategory2()) {
                                            this.machine.popArgs(this.frame, 2);
                                            this.machine.auxIntArg(530);
                                            break;
                                        } else {
                                            if (!stack6.peekType(3).isCategory1()) {
                                                throw Simulator.access$100();
                                            }
                                            this.machine.popArgs(this.frame, 3);
                                            this.machine.auxIntArg(12819);
                                            break;
                                        }
                                    } else {
                                        if (!stack6.peekType(1).isCategory1()) {
                                            throw Simulator.access$100();
                                        }
                                        if (stack6.peekType(2).isCategory2()) {
                                            this.machine.popArgs(this.frame, 3);
                                            this.machine.auxIntArg(205106);
                                            break;
                                        } else {
                                            if (!stack6.peekType(3).isCategory1()) {
                                                throw Simulator.access$100();
                                            }
                                            this.machine.popArgs(this.frame, 4);
                                            this.machine.auxIntArg(4399427);
                                            break;
                                        }
                                    }
                                case 95:
                                    ExecutionStack stack7 = this.frame.getStack();
                                    if (!stack7.peekType(0).isCategory1() || !stack7.peekType(1).isCategory1()) {
                                        throw Simulator.access$100();
                                    }
                                    this.machine.popArgs(this.frame, 2);
                                    this.machine.auxIntArg(18);
                                    break;
                                case 96:
                                    break;
                                default:
                                    switch (i10) {
                                        case 133:
                                        case 134:
                                        case 135:
                                        case 145:
                                        case 146:
                                        case 147:
                                            this.machine.popArgs(this.frame, Type.INT);
                                            break;
                                        case 136:
                                        case 137:
                                        case 138:
                                            this.machine.popArgs(this.frame, Type.LONG);
                                            break;
                                        case 139:
                                        case 140:
                                        case 141:
                                            this.machine.popArgs(this.frame, Type.FLOAT);
                                            break;
                                        case 142:
                                        case 143:
                                        case 144:
                                            this.machine.popArgs(this.frame, Type.DOUBLE);
                                            break;
                                        case 148:
                                            Machine machine = this.machine;
                                            Frame frame = this.frame;
                                            Type type3 = Type.LONG;
                                            machine.popArgs(frame, type3, type3);
                                            break;
                                        case 149:
                                        case 150:
                                            Machine machine2 = this.machine;
                                            Frame frame2 = this.frame;
                                            Type type4 = Type.FLOAT;
                                            machine2.popArgs(frame2, type4, type4);
                                            break;
                                        case 151:
                                        case 152:
                                            Machine machine3 = this.machine;
                                            Frame frame3 = this.frame;
                                            Type type5 = Type.DOUBLE;
                                            machine3.popArgs(frame3, type5, type5);
                                            break;
                                        default:
                                            visitInvalid(i10, i11, i12);
                                            return;
                                    }
                            }
                    }
                }
                this.machine.auxType(type);
                this.machine.run(this.frame, i11, i10);
            }
            this.machine.clearArgs();
            this.machine.auxType(type);
            this.machine.run(this.frame, i11, i10);
        }

        @Override
        public void visitSwitch(int i10, int i11, int i12, SwitchList switchList, int i13) {
            this.machine.popArgs(this.frame, Type.INT);
            this.machine.auxIntArg(i13);
            this.machine.auxSwitchArg(switchList);
            this.machine.run(this.frame, i11, i10);
        }
    }

    public Simulator(Machine machine, ConcreteMethod concreteMethod, DexOptions dexOptions) {
        if (machine == null) {
            throw new NullPointerException("machine == null");
        }
        if (concreteMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.machine = machine;
        this.code = concreteMethod.getCode();
        this.localVariables = concreteMethod.getLocalVariables();
        this.visitor = new SimVisitor();
        this.dexOptions = dexOptions;
    }

    public static SimException access$100() {
        return illegalTos();
    }

    private static SimException illegalTos() {
        return new SimException("stack mismatch: illegal top-of-stack for opcode");
    }

    public static Type requiredArrayTypeFor(Type type, Type type2) {
        Type type3;
        Type type4 = Type.KNOWN_NULL;
        return type2 == type4 ? type.isReference() ? type4 : type.getArrayType() : (type == Type.OBJECT && type2.isArray() && type2.getComponentType().isReference()) ? type2 : (type == Type.BYTE && type2 == (type3 = Type.BOOLEAN_ARRAY)) ? type3 : type.getArrayType();
    }

    public void simulate(ByteBlock byteBlock, Frame frame) {
        int end = byteBlock.getEnd();
        this.visitor.setFrame(frame);
        try {
            int start = byteBlock.getStart();
            while (start < end) {
                int parseInstruction = this.code.parseInstruction(start, this.visitor);
                this.visitor.setPreviousOffset(start);
                start += parseInstruction;
            }
        } catch (SimException e10) {
            frame.annotate(e10);
            throw e10;
        }
    }

    public int simulate(int i10, Frame frame) {
        this.visitor.setFrame(frame);
        return this.code.parseInstruction(i10, this.visitor);
    }
}
