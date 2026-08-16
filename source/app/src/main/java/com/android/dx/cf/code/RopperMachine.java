package com.android.dx.cf.code;

import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.FillArrayDataInsn;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InvokePolymorphicInsn;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.SwitchInsn;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.IntList;
import java.util.ArrayList;

final class RopperMachine extends ValueAwareMachine {
    private static final CstType ARRAY_REFLECT_TYPE;
    private static final CstMethodRef MULTIANEWARRAY_METHOD;
    private final TranslationAdvice advice;
    private boolean blockCanThrow;
    private TypeList catches;
    private boolean catchesUsed;
    private int extraBlockCount;
    private boolean hasJsr;
    private final ArrayList<Insn> insns;
    private final int maxLocals;
    private final ConcreteMethod method;
    private final MethodList methods;
    private int primarySuccessorIndex;
    private ReturnAddress returnAddress;
    private Rop returnOp;
    private SourcePosition returnPosition;
    private boolean returns;
    private final Ropper ropper;

    static {
        CstType cstType = new CstType(Type.internClassName("java/lang/reflect/Array"));
        ARRAY_REFLECT_TYPE = cstType;
        MULTIANEWARRAY_METHOD = new CstMethodRef(cstType, new CstNat(new CstString("newInstance"), new CstString("(Ljava/lang/Class;[I)Ljava/lang/Object;")));
    }

    public RopperMachine(Ropper ropper, ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList) {
        super(concreteMethod.getEffectiveDescriptor());
        if (methodList == null) {
            throw new NullPointerException("methods == null");
        }
        if (ropper == null) {
            throw new NullPointerException("ropper == null");
        }
        if (translationAdvice == null) {
            throw new NullPointerException("advice == null");
        }
        this.ropper = ropper;
        this.method = concreteMethod;
        this.methods = methodList;
        this.advice = translationAdvice;
        this.maxLocals = concreteMethod.getMaxLocals();
        this.insns = new ArrayList<>(25);
        this.catches = null;
        this.catchesUsed = false;
        this.returns = false;
        this.primarySuccessorIndex = -1;
        this.extraBlockCount = 0;
        this.blockCanThrow = false;
        this.returnOp = null;
        this.returnPosition = null;
    }

    private RegisterSpecList getSources(int i10, int i11) {
        RegisterSpecList registerSpecList;
        int argCount = argCount();
        if (argCount == 0) {
            return RegisterSpecList.EMPTY;
        }
        int localIndex = getLocalIndex();
        if (localIndex >= 0) {
            registerSpecList = new RegisterSpecList(1);
            registerSpecList.set(0, RegisterSpec.make(localIndex, arg(0)));
        } else {
            RegisterSpecList registerSpecList2 = new RegisterSpecList(argCount);
            for (int i12 = 0; i12 < argCount; i12++) {
                RegisterSpec make = RegisterSpec.make(i11, arg(i12));
                registerSpecList2.set(i12, make);
                i11 += make.getCategory();
            }
            if (i10 == 79) {
                if (argCount != 3) {
                    throw new RuntimeException("shouldn't happen");
                }
                RegisterSpec registerSpec = registerSpecList2.get(0);
                RegisterSpec registerSpec2 = registerSpecList2.get(1);
                registerSpecList2.set(0, registerSpecList2.get(2));
                registerSpecList2.set(1, registerSpec);
                registerSpecList2.set(2, registerSpec2);
            } else if (i10 == 181) {
                if (argCount != 2) {
                    throw new RuntimeException("shouldn't happen");
                }
                RegisterSpec registerSpec3 = registerSpecList2.get(0);
                registerSpecList2.set(0, registerSpecList2.get(1));
                registerSpecList2.set(1, registerSpec3);
            }
            registerSpecList = registerSpecList2;
        }
        registerSpecList.setImmutable();
        return registerSpecList;
    }

    private int jopToRopOpcode(int i10, Constant constant) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 20) {
            return 5;
        }
        if (i10 == 21) {
            return 2;
        }
        if (i10 == 171) {
            return 13;
        }
        if (i10 == 172) {
            return 33;
        }
        if (i10 == 198) {
            return 7;
        }
        if (i10 == 199) {
            return 8;
        }
        switch (i10) {
            case 0:
                return 1;
            case 18:
                return 5;
            case 46:
                return 38;
            case 54:
                return 2;
            case 79:
                return 39;
            case 96:
                return 14;
            case 100:
                return 15;
            case 104:
                return 16;
            case 108:
                return 17;
            case 112:
                return 18;
            case 116:
                return 19;
            case 120:
                return 23;
            case 122:
                return 24;
            case 124:
                return 25;
            case 126:
                return 20;
            case 128:
                return 21;
            case 130:
                return 22;
            default:
                switch (i10) {
                    case 132:
                        return 14;
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
                        return 29;
                    case 145:
                        return 30;
                    case 146:
                        return 31;
                    case 147:
                        return 32;
                    case 148:
                    case 149:
                    case 151:
                        return 27;
                    case 150:
                    case 152:
                        return 28;
                    case 153:
                    case 159:
                    case 165:
                        return 7;
                    case 154:
                    case 160:
                    case 166:
                        return 8;
                    case 155:
                    case 161:
                        return 9;
                    case 156:
                    case 162:
                        return 10;
                    case 157:
                    case 163:
                        return 12;
                    case 158:
                    case 164:
                        return 11;
                    case 167:
                        return 6;
                    default:
                        switch (i10) {
                            case 177:
                                return 33;
                            case 178:
                                return 46;
                            case 179:
                                return 48;
                            case 180:
                                return 45;
                            case 181:
                                return 47;
                            case 182:
                                CstMethodRef cstMethodRef = (CstMethodRef) constant;
                                if (cstMethodRef.getDefiningClass().equals(this.method.getDefiningClass())) {
                                    for (int i11 = 0; i11 < this.methods.size(); i11++) {
                                        Method method = this.methods.get(i11);
                                        if (AccessFlags.isPrivate(method.getAccessFlags()) && cstMethodRef.getNat().equals(method.getNat())) {
                                            return 52;
                                        }
                                    }
                                }
                                return cstMethodRef.isSignaturePolymorphic() ? 58 : 50;
                            case 183:
                                CstMethodRef cstMethodRef2 = (CstMethodRef) constant;
                                return (cstMethodRef2.isInstanceInit() || cstMethodRef2.getDefiningClass().equals(this.method.getDefiningClass())) ? 52 : 51;
                            case 184:
                                return 49;
                            case 185:
                                return 53;
                            default:
                                switch (i10) {
                                    case 187:
                                        return 40;
                                    case 188:
                                    case 189:
                                        return 41;
                                    case 190:
                                        return 34;
                                    case 191:
                                        return 35;
                                    case 192:
                                        return 43;
                                    case 193:
                                        return 44;
                                    case 194:
                                        return 36;
                                    case 195:
                                        return 37;
                                    default:
                                        throw new RuntimeException("shouldn't happen");
                                }
                        }
                }
        }
    }

    private Insn makeInvokePolymorphicInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, Constant constant) {
        return new InvokePolymorphicInsn(rop, sourcePosition, registerSpecList, typeList, (CstMethodRef) constant);
    }

    private void updateReturnOp(Rop rop, SourcePosition sourcePosition) {
        if (rop == null) {
            throw new NullPointerException("op == null");
        }
        if (sourcePosition == null) {
            throw new NullPointerException("pos == null");
        }
        Rop rop2 = this.returnOp;
        if (rop2 == null) {
            this.returnOp = rop;
            this.returnPosition = sourcePosition;
        } else if (rop2 == rop) {
            if (sourcePosition.getLine() > this.returnPosition.getLine()) {
                this.returnPosition = sourcePosition;
            }
        } else {
            throw new SimException("return op mismatch: " + ((Object) rop) + ", " + ((Object) this.returnOp));
        }
    }

    public boolean canThrow() {
        return this.blockCanThrow;
    }

    public int getExtraBlockCount() {
        return this.extraBlockCount;
    }

    public ArrayList<Insn> getInsns() {
        return this.insns;
    }

    public int getPrimarySuccessorIndex() {
        return this.primarySuccessorIndex;
    }

    public ReturnAddress getReturnAddress() {
        return this.returnAddress;
    }

    public Rop getReturnOp() {
        return this.returnOp;
    }

    public SourcePosition getReturnPosition() {
        return this.returnPosition;
    }

    public boolean hasJsr() {
        return this.hasJsr;
    }

    public boolean hasRet() {
        return this.returnAddress != null;
    }

    public boolean returns() {
        return this.returns;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c9  */
    /* JADX WARN: Type inference failed for: r2v10, types: [com.android.dx.rop.type.TypeBearer] */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.android.dx.rop.type.TypeBearer] */
    /* JADX WARN: Type inference failed for: r8v18, types: [int] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v39 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run(Frame frame, int i10, int i11) {
        Constant constant;
        RegisterSpec registerSpec;
        PlainInsn plainInsn;
        PlainInsn plainInsn2;
        Rop rop;
        Constant constant2;
        Constant constant3;
        RegisterSpecList withoutFirst;
        SwitchList auxCases;
        ArrayList<Constant> initValues;
        SourcePosition sourcePosition;
        Insn plainInsn3;
        Insn throwingInsn;
        boolean z10;
        boolean z11;
        SourcePosition sourcePosition2;
        boolean z12;
        int i12;
        Insn plainInsn4;
        ?? r82;
        Constant constant4;
        ThrowingCstInsn throwingCstInsn;
        int i13 = i11;
        int size = this.maxLocals + frame.getStack().size();
        RegisterSpecList sources = getSources(i13, size);
        int size2 = sources.size();
        super.run(frame, i10, i11);
        SourcePosition makeSourcePosistion = this.method.makeSourcePosistion(i10);
        RegisterSpec localTarget = getLocalTarget(i13 == 54);
        int resultCount = resultCount();
        if (resultCount == 0) {
            if (i13 == 87 || i13 == 88) {
                return;
            } else {
                localTarget = null;
            }
        } else if (localTarget == null) {
            if (resultCount != 1) {
                RegisterSpec[] registerSpecArr = new RegisterSpec[size2];
                int firstTempStackReg = this.ropper.getFirstTempStackReg();
                for (int i14 = 0; i14 < size2; i14++) {
                    RegisterSpec registerSpec2 = sources.get(i14);
                    TypeBearer typeBearer = registerSpec2.getTypeBearer();
                    RegisterSpec withReg = registerSpec2.withReg(firstTempStackReg);
                    this.insns.add(new PlainInsn(Rops.opMove(typeBearer), makeSourcePosistion, withReg, registerSpec2));
                    registerSpecArr[i14] = withReg;
                    firstTempStackReg += registerSpec2.getCategory();
                }
                for (int auxInt = getAuxInt(); auxInt != 0; auxInt >>= 4) {
                    RegisterSpec registerSpec3 = registerSpecArr[(auxInt & 15) - 1];
                    TypeBearer typeBearer2 = registerSpec3.getTypeBearer();
                    this.insns.add(new PlainInsn(Rops.opMove(typeBearer2), makeSourcePosistion, registerSpec3.withReg(size), registerSpec3));
                    size += typeBearer2.getType().getCategory();
                }
                return;
            }
            localTarget = RegisterSpec.make(size, result(0));
        }
        TypeBearer typeBearer3 = localTarget != null ? localTarget : Type.VOID;
        Constant auxCst = getAuxCst();
        if (i13 == 197) {
            this.blockCanThrow = true;
            this.extraBlockCount = 6;
            int nextReg = localTarget.getNextReg();
            Type type = Type.INT_ARRAY;
            RegisterSpec make = RegisterSpec.make(nextReg, type);
            this.insns.add(new ThrowingCstInsn(Rops.opFilledNewArray(type, size2), makeSourcePosistion, sources, this.catches, CstType.INT_ARRAY));
            this.insns.add(new PlainInsn(Rops.opMoveResult(type), makeSourcePosistion, make, RegisterSpecList.EMPTY));
            Type classType = ((CstType) auxCst).getClassType();
            for (int i15 = 0; i15 < size2; i15++) {
                classType = classType.getComponentType();
            }
            RegisterSpec make2 = RegisterSpec.make(localTarget.getReg(), Type.CLASS);
            if (classType.isPrimitive()) {
                constant4 = auxCst;
                throwingCstInsn = new ThrowingCstInsn(Rops.GET_STATIC_OBJECT, makeSourcePosistion, RegisterSpecList.EMPTY, this.catches, CstFieldRef.forPrimitiveType(classType));
            } else {
                constant4 = auxCst;
                throwingCstInsn = new ThrowingCstInsn(Rops.CONST_OBJECT, makeSourcePosistion, RegisterSpecList.EMPTY, this.catches, new CstType(classType));
            }
            this.insns.add(throwingCstInsn);
            Rop opMoveResultPseudo = Rops.opMoveResultPseudo(make2.getType());
            RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
            this.insns.add(new PlainInsn(opMoveResultPseudo, makeSourcePosistion, make2, registerSpecList));
            RegisterSpec make3 = RegisterSpec.make(localTarget.getReg(), Type.OBJECT);
            CstMethodRef cstMethodRef = MULTIANEWARRAY_METHOD;
            this.insns.add(new ThrowingCstInsn(Rops.opInvokeStatic(cstMethodRef.getPrototype()), makeSourcePosistion, RegisterSpecList.make(make2, make), this.catches, cstMethodRef));
            this.insns.add(new PlainInsn(Rops.opMoveResult(cstMethodRef.getPrototype().getReturnType()), makeSourcePosistion, make3, registerSpecList));
            Constant constant5 = constant4;
            sources = RegisterSpecList.make(make3);
            i13 = 192;
            constant = constant5;
        } else {
            constant = auxCst;
            if (i13 == 168) {
                this.hasJsr = true;
                return;
            } else if (i13 == 169) {
                try {
                    this.returnAddress = (ReturnAddress) arg(0);
                    return;
                } catch (ClassCastException e10) {
                    throw new RuntimeException("Argument to RET was not a ReturnAddress", e10);
                }
            }
        }
        int jopToRopOpcode = jopToRopOpcode(i13, constant);
        Rop ropFor = Rops.ropFor(jopToRopOpcode, typeBearer3, sources, constant);
        if (localTarget != null && ropFor.isCallLike()) {
            this.extraBlockCount++;
            plainInsn2 = new PlainInsn(Rops.opMoveResult(((CstMethodRef) constant).getPrototype().getReturnType()), makeSourcePosistion, localTarget, RegisterSpecList.EMPTY);
        } else if (localTarget == null || !ropFor.canThrow()) {
            registerSpec = localTarget;
            plainInsn = null;
            if (jopToRopOpcode != 41) {
                rop = ropFor;
                constant2 = CstType.intern(ropFor.getResult());
            } else {
                if (constant == null && size2 == 2) {
                    ?? typeBearer4 = sources.get(0).getTypeBearer();
                    ?? typeBearer5 = sources.get(1).getTypeBearer();
                    if ((typeBearer5.isConstant() || typeBearer4.isConstant()) && this.advice.hasConstantOperation(ropFor, sources.get(0), sources.get(1))) {
                        if (typeBearer5.isConstant()) {
                            constant3 = (Constant) typeBearer5;
                            withoutFirst = sources.withoutLast();
                            if (ropFor.getOpcode() == 15) {
                                constant3 = CstInteger.make(-((CstInteger) typeBearer5).getValue());
                                jopToRopOpcode = 14;
                            }
                        } else {
                            constant3 = (Constant) typeBearer4;
                            withoutFirst = sources.withoutFirst();
                        }
                        rop = Rops.ropFor(jopToRopOpcode, typeBearer3, withoutFirst, constant3);
                        constant2 = constant3;
                        sources = withoutFirst;
                    }
                }
                rop = ropFor;
                constant2 = constant;
            }
            auxCases = getAuxCases();
            initValues = getInitValues();
            boolean canThrow = rop.canThrow();
            this.blockCanThrow |= canThrow;
            if (auxCases == null) {
                if (auxCases.size() == 0) {
                    plainInsn3 = new PlainInsn(Rops.GOTO, makeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                    this.primarySuccessorIndex = 0;
                    r82 = 1;
                    sourcePosition = makeSourcePosistion;
                    this.insns.add(plainInsn3);
                    if (plainInsn != null) {
                        this.insns.add(plainInsn);
                    }
                    if (initValues != null) {
                        this.extraBlockCount += r82;
                        this.insns.add(new FillArrayDataInsn(Rops.FILL_ARRAY_DATA, sourcePosition, RegisterSpecList.make(plainInsn.getResult()), initValues, constant2));
                        return;
                    }
                    return;
                }
                IntList values = auxCases.getValues();
                plainInsn4 = new SwitchInsn(rop, makeSourcePosistion, registerSpec, sources, values);
                this.primarySuccessorIndex = values.size();
            } else if (jopToRopOpcode == 33) {
                if (sources.size() != 0) {
                    i12 = 0;
                    RegisterSpec registerSpec4 = sources.get(0);
                    TypeBearer typeBearer6 = registerSpec4.getTypeBearer();
                    if (registerSpec4.getReg() != 0) {
                        this.insns.add(new PlainInsn(Rops.opMove(typeBearer6), makeSourcePosistion, RegisterSpec.make(0, typeBearer6), registerSpec4));
                    }
                } else {
                    i12 = 0;
                }
                plainInsn4 = new PlainInsn(Rops.GOTO, makeSourcePosistion, (RegisterSpec) null, RegisterSpecList.EMPTY);
                this.primarySuccessorIndex = i12;
                updateReturnOp(rop, makeSourcePosistion);
                this.returns = true;
            } else {
                if (constant2 != null) {
                    if (canThrow) {
                        if (rop.getOpcode() == 58) {
                            z12 = true;
                            sourcePosition2 = makeSourcePosistion;
                            throwingInsn = makeInvokePolymorphicInsn(rop, makeSourcePosistion, sources, this.catches, constant2);
                        } else {
                            z12 = true;
                            sourcePosition2 = makeSourcePosistion;
                            throwingInsn = new ThrowingCstInsn(rop, sourcePosition2, sources, this.catches, constant2);
                        }
                        this.catchesUsed = z12;
                        this.primarySuccessorIndex = this.catches.size();
                        z11 = z12;
                    } else {
                        z11 = true;
                        sourcePosition2 = makeSourcePosistion;
                        throwingInsn = new PlainCstInsn(rop, sourcePosition2, registerSpec, sources, constant2);
                    }
                    sourcePosition = sourcePosition2;
                    z10 = z11;
                } else {
                    boolean z13 = true;
                    sourcePosition = makeSourcePosistion;
                    if (canThrow) {
                        throwingInsn = new ThrowingInsn(rop, sourcePosition, sources, this.catches);
                        this.catchesUsed = true;
                        if (i13 == 191) {
                            this.primarySuccessorIndex = -1;
                            z10 = z13;
                        } else {
                            this.primarySuccessorIndex = this.catches.size();
                            z10 = z13;
                        }
                    } else {
                        plainInsn3 = new PlainInsn(rop, sourcePosition, registerSpec, sources);
                        r82 = z13;
                        this.insns.add(plainInsn3);
                        if (plainInsn != null) {
                        }
                        if (initValues != null) {
                        }
                    }
                }
                plainInsn3 = throwingInsn;
                r82 = z10;
                this.insns.add(plainInsn3);
                if (plainInsn != null) {
                }
                if (initValues != null) {
                }
            }
            plainInsn3 = plainInsn4;
            r82 = 1;
            sourcePosition = makeSourcePosistion;
            this.insns.add(plainInsn3);
            if (plainInsn != null) {
            }
            if (initValues != null) {
            }
        } else {
            this.extraBlockCount++;
            plainInsn2 = new PlainInsn(Rops.opMoveResultPseudo(localTarget.getTypeBearer()), makeSourcePosistion, localTarget, RegisterSpecList.EMPTY);
        }
        plainInsn = plainInsn2;
        registerSpec = null;
        if (jopToRopOpcode != 41) {
        }
        auxCases = getAuxCases();
        initValues = getInitValues();
        boolean canThrow2 = rop.canThrow();
        this.blockCanThrow |= canThrow2;
        if (auxCases == null) {
        }
        plainInsn3 = plainInsn4;
        r82 = 1;
        sourcePosition = makeSourcePosistion;
        this.insns.add(plainInsn3);
        if (plainInsn != null) {
        }
        if (initValues != null) {
        }
    }

    public void startBlock(TypeList typeList) {
        this.catches = typeList;
        this.insns.clear();
        this.catchesUsed = false;
        this.returns = false;
        this.primarySuccessorIndex = 0;
        this.extraBlockCount = 0;
        this.blockCanThrow = false;
        this.hasJsr = false;
        this.returnAddress = null;
    }

    public boolean wereCatchesUsed() {
        return this.catchesUsed;
    }
}
