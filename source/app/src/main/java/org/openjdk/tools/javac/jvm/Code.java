package org.openjdk.tools.javac.jvm;

import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.C14021s;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotationPosition;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.jvm.ClassWriter;
import org.openjdk.tools.javac.jvm.Pool;
import org.openjdk.tools.javac.util.ArrayUtils;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Bits;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Position;

public class Code {
    static final Type jsrReturnValue = new Type.JCPrimitiveType(TypeTag.INT, null);
    public CRTable crt;
    public final boolean debugCode;
    public boolean fatcode;
    boolean lineDebugInfo;
    Position.LineMap lineMap;
    LocalVar[] lvar;
    final Symbol.MethodSymbol meth;
    public final boolean needStackMap;
    final Pool pool;
    StackMapFormat stackMap;
    State state;
    final Symtab syms;
    final Types types;
    LocalVar[] varBuffer;
    int varBufferSize;
    boolean varDebugInfo;
    public int max_stack = 0;
    public int max_locals = 0;
    public byte[] code = new byte[64];
    public int cp = 0;
    ListBuffer<char[]> catchInfo = new ListBuffer<>();
    List<char[]> lineInfo = List.nil();
    private boolean alive = true;
    private boolean fixedPc = false;
    public int nextreg = 0;
    Chain pendingJumps = null;
    int pendingStatPos = -1;
    boolean pendingStackMap = false;
    StackMapFrame[] stackMapBuffer = null;
    ClassWriter.StackMapTableFrame[] stackMapTableBuffer = null;
    int stackMapBufferSize = 0;
    int lastStackMapPC = -1;
    StackMapFrame lastFrame = null;
    StackMapFrame frameBeforeLast = null;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.METHOD.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.TYPEVAR.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.UNINITIALIZED_THIS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.UNINITIALIZED_OBJECT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr2 = new int[StackMapFormat.values().length];
            $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat = iArr2;
            try {
                iArr2[StackMapFormat.CLDC.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat[StackMapFormat.JSR202.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static class Chain {
        public final Chain next;

        public final int f103247pc;
        State state;

        public Chain(int i10, Chain chain, State state) {
            this.f103247pc = i10;
            this.next = chain;
            this.state = state;
        }
    }

    public static class Mneumonics {
        private static final String[] mnem;

        static {
            mnem = r0;
            String[] strArr = {"nop", "aconst_null", "iconst_m1", "iconst_0", "iconst_1", "iconst_2", "iconst_3", "iconst_4", "iconst_5", "lconst_0", "lconst_1", "fconst_0", "fconst_1", "fconst_2", "dconst_0", "dconst_1", "bipush", "sipush", "ldc1", "ldc2", "ldc2w", "iload", "lload", "fload", "dload", "aload", "iload_0", "iload_1", "iload_2", "iload_3", "lload_0", "lload_1", "lload_2", "lload_3", "fload_0", "fload_1", "fload_2", "fload_3", "dload_0", "dload_1", "dload_2", "dload_3", "aload_0", "aload_1", "aload_2", "aload_3", "iaload", "laload", "faload", "daload", "aaload", "baload", "caload", "saload", "istore", "lstore", "fstore", "dstore", "astore", "istore_0", "istore_1", "istore_2", "istore_3", "lstore_0", "lstore_1", "lstore_2", "lstore_3", "fstore_0", "fstore_1", "fstore_2", "fstore_3", "dstore_0", "dstore_1", "dstore_2", "dstore_3", "astore_0", "astore_1", "astore_2", "astore_3", "iastore", "lastore", "fastore", "dastore", "aastore", "bastore", "castore", "sastore", "pop", "pop2", "dup", "dup_x1", "dup_x2", "dup2", "dup2_x1", "dup2_x2", "swap", "iadd", "ladd", "fadd", "dadd", "isub", "lsub", "fsub", "dsub", "imul", "lmul", "fmul", "dmul", "idiv", "ldiv", "fdiv", "ddiv", "imod", "lmod", "fmod", "dmod", "ineg", "lneg", "fneg", "dneg", "ishl", "lshl", "ishr", "lshr", "iushr", "lushr", "iand", "land", "ior", "lor", "ixor", "lxor", "iinc", "i2l", "i2f", "i2d", "l2i", "l2f", "l2d", "f2i", "f2l", "f2d", "d2i", "d2l", "d2f", "int2byte", "int2char", "int2short", "lcmp", "fcmpl", "fcmpg", "dcmpl", "dcmpg", "ifeq", "ifne", "iflt", "ifge", "ifgt", "ifle", "if_icmpeq", "if_icmpne", "if_icmplt", "if_icmpge", "if_icmpgt", "if_icmple", "if_acmpeq", "if_acmpne", "goto_", "jsr", "ret", "tableswitch", "lookupswitch", "ireturn", "lreturn", "freturn", "dreturn", "areturn", "return_", "getstatic", "putstatic", "getfield", "putfield", "invokevirtual", "invokespecial", "invokestatic", "invokeinterface", "invokedynamic", "new_", "newarray", "anewarray", "arraylength", "athrow", "checkcast", "instanceof_", "monitorenter", "monitorexit", "wide", "multianewarray", "if_acmp_null", "if_acmp_nonnull", "goto_w", "jsr_w", "breakpoint"};
        }

        private Mneumonics() {
        }
    }

    public enum StackMapFormat {
        NONE,
        CLDC {
            @Override
            public Name getAttributeName(Names names) {
                return names.StackMap;
            }
        },
        JSR202 {
            @Override
            public Name getAttributeName(Names names) {
                return names.StackMapTable;
            }
        };

        public Name getAttributeName(Names names) {
            return names.empty;
        }

        StackMapFormat(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class StackMapFrame {
        Type[] locals;

        int f103248pc;
        Type[] stack;
    }

    public class State implements Cloneable {
        int[] locks;
        int nlocks;
        int stacksize;
        Bits defined = new Bits();
        Type[] stack = new Type[16];

        public State() {
        }

        public void dump() {
            dump(-1);
        }

        public State dup() {
            try {
                State state = (State) super.clone();
                state.defined = new Bits(this.defined);
                state.stack = (Type[]) this.stack.clone();
                int[] iArr = this.locks;
                if (iArr != null) {
                    state.locks = (int[]) iArr.clone();
                }
                if (Code.this.debugCode) {
                    System.err.println("duping state " + ((Object) this));
                    dump();
                }
                return state;
            } catch (CloneNotSupportedException e10) {
                throw new AssertionError(e10);
            }
        }

        public Type error() {
            throw new AssertionError((Object) "inconsistent stack types at join point");
        }

        public void forceStackTop(Type type) {
            if (Code.this.alive) {
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
                if (i10 == 10 || i10 == 11) {
                    int width = Code.width(type);
                    Type type2 = this.stack[this.stacksize - width];
                    Types types = Code.this.types;
                    Assert.check(types.isSubtype(types.erasure(type2), Code.this.types.erasure(type)));
                    this.stack[this.stacksize - width] = type;
                }
            }
        }

        public State join(State state) {
            this.defined.andSet(state.defined);
            int i10 = 0;
            Assert.check(this.stacksize == state.stacksize && this.nlocks == state.nlocks);
            while (i10 < this.stacksize) {
                Type type = this.stack[i10];
                Type type2 = state.stack[i10];
                if (type != type2) {
                    if (Code.this.types.isSubtype(type, type2)) {
                        type = type2;
                    } else if (!Code.this.types.isSubtype(type2, type)) {
                        type = error();
                    }
                }
                int width = Code.width(type);
                Type[] typeArr = this.stack;
                typeArr[i10] = type;
                if (width == 2) {
                    Assert.checkNull(typeArr[i10 + 1]);
                }
                i10 += width;
            }
            return this;
        }

        public void lock(int i10) {
            int[] iArr = this.locks;
            if (iArr == null) {
                this.locks = new int[20];
            } else {
                this.locks = ArrayUtils.ensureCapacity(iArr, this.nlocks);
            }
            int[] iArr2 = this.locks;
            int i11 = this.nlocks;
            iArr2[i11] = i10;
            this.nlocks = i11 + 1;
        }

        public void markInitialized(UninitializedType uninitializedType) {
            Type initializedType = uninitializedType.initializedType();
            int i10 = 0;
            for (int i11 = 0; i11 < this.stacksize; i11++) {
                Type[] typeArr = this.stack;
                if (typeArr[i11] == uninitializedType) {
                    typeArr[i11] = initializedType;
                }
            }
            while (true) {
                LocalVar[] localVarArr = Code.this.lvar;
                if (i10 >= localVarArr.length) {
                    return;
                }
                LocalVar localVar = localVarArr[i10];
                if (localVar != null) {
                    Symbol.VarSymbol varSymbol = localVar.sym;
                    if (varSymbol.type == uninitializedType) {
                        Symbol.VarSymbol clone = varSymbol.clone(varSymbol.owner);
                        clone.type = initializedType;
                        LocalVar[] localVarArr2 = Code.this.lvar;
                        LocalVar localVar2 = new LocalVar(clone);
                        localVarArr2[i10] = localVar2;
                        localVar2.aliveRanges = localVar.aliveRanges;
                    }
                }
                i10++;
            }
        }

        public Type peek() {
            return this.stack[this.stacksize - 1];
        }

        public void pop(int i10) {
            if (Code.this.debugCode) {
                System.err.println("   popping " + i10);
            }
            while (i10 > 0) {
                Type[] typeArr = this.stack;
                int i11 = this.stacksize - 1;
                this.stacksize = i11;
                typeArr[i11] = null;
                i10--;
            }
        }

        public Type pop1() {
            if (Code.this.debugCode) {
                System.err.println("   popping 1");
            }
            int i10 = this.stacksize - 1;
            this.stacksize = i10;
            Type[] typeArr = this.stack;
            Type type = typeArr[i10];
            typeArr[i10] = null;
            Assert.check(type != null && Code.width(type) == 1);
            return type;
        }

        public Type pop2() {
            if (Code.this.debugCode) {
                System.err.println("   popping 2");
            }
            int i10 = this.stacksize;
            int i11 = i10 - 2;
            this.stacksize = i11;
            Type[] typeArr = this.stack;
            Type type = typeArr[i11];
            typeArr[i11] = null;
            Assert.check(typeArr[i10 - 1] == null && type != null && Code.width(type) == 2);
            return type;
        }

        public void push(Type type) {
            if (Code.this.debugCode) {
                System.err.println("   pushing " + ((Object) type));
            }
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 8) {
                type = Code.this.syms.intType;
            } else if (i10 == 9) {
                return;
            }
            Type[] typeArr = (Type[]) ArrayUtils.ensureCapacity(this.stack, this.stacksize + 2);
            this.stack = typeArr;
            int i11 = this.stacksize;
            this.stacksize = i11 + 1;
            typeArr[i11] = type;
            int width = Code.width(type);
            if (width != 1) {
                if (width != 2) {
                    throw new AssertionError(type);
                }
                Type[] typeArr2 = this.stack;
                int i12 = this.stacksize;
                this.stacksize = i12 + 1;
                typeArr2[i12] = null;
            }
            int i13 = this.stacksize;
            Code code = Code.this;
            if (i13 > code.max_stack) {
                code.max_stack = i13;
            }
        }

        public void unlock(int i10) {
            int i11 = this.nlocks - 1;
            this.nlocks = i11;
            Assert.check(this.locks[i11] == i10);
            this.locks[this.nlocks] = -1;
        }

        public void dump(int i10) {
            PrintStream printStream = System.err;
            printStream.print("stackMap for " + ((Object) Code.this.meth.owner) + "." + ((Object) Code.this.meth));
            if (i10 == -1) {
                System.out.println();
            } else {
                System.out.println(" at " + i10);
            }
            printStream.println(" stack (from bottom):");
            for (int i11 = 0; i11 < this.stacksize; i11++) {
                System.err.println(GlideException.a.f59088e + i11 + ": " + ((Object) this.stack[i11]));
            }
            int i12 = Code.this.max_locals - 1;
            while (true) {
                if (i12 < 0) {
                    i12 = 0;
                    break;
                } else if (this.defined.isMember(i12)) {
                    break;
                } else {
                    i12--;
                }
            }
            if (i12 >= 0) {
                System.err.println(" locals:");
            }
            for (int i13 = 0; i13 <= i12; i13++) {
                PrintStream printStream2 = System.err;
                printStream2.print(GlideException.a.f59088e + i13 + ": ");
                if (this.defined.isMember(i13)) {
                    LocalVar localVar = Code.this.lvar[i13];
                    if (localVar == null) {
                        printStream2.println("(none)");
                    } else if (localVar.sym == null) {
                        printStream2.println("UNKNOWN!");
                    } else {
                        printStream2.println("" + ((Object) localVar.sym) + " of type " + ((Object) localVar.sym.erasure(Code.this.types)));
                    }
                } else {
                    printStream2.println("undefined");
                }
            }
            if (this.nlocks != 0) {
                System.err.print(" locks:");
                for (int i14 = 0; i14 < this.nlocks; i14++) {
                    System.err.print(" " + this.locks[i14]);
                }
                System.err.println();
            }
        }

        public void pop(Type type) {
            pop(Code.width(type));
        }
    }

    public Code(Symbol.MethodSymbol methodSymbol, boolean z10, Position.LineMap lineMap, boolean z11, StackMapFormat stackMapFormat, boolean z12, CRTable cRTable, Symtab symtab, Types types, Pool pool) {
        this.meth = methodSymbol;
        this.fatcode = z10;
        this.lineMap = lineMap;
        this.lineDebugInfo = lineMap != null;
        this.varDebugInfo = z11;
        this.crt = cRTable;
        this.syms = symtab;
        this.types = types;
        this.debugCode = z12;
        this.stackMap = stackMapFormat;
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat[stackMapFormat.ordinal()];
        if (i10 == 1 || i10 == 2) {
            this.needStackMap = true;
        } else {
            this.needStackMap = false;
        }
        this.state = new State();
        this.lvar = new LocalVar[20];
        this.pool = pool;
    }

    private void addLocalVar(Symbol.VarSymbol varSymbol) {
        int i10 = varSymbol.adr;
        LocalVar[] localVarArr = (LocalVar[]) ArrayUtils.ensureCapacity(this.lvar, i10 + 1);
        this.lvar = localVarArr;
        Assert.checkNull(localVarArr[i10]);
        if (this.pendingJumps != null) {
            resolvePending();
        }
        this.lvar[i10] = new LocalVar(varSymbol);
        this.state.defined.excl(i10);
    }

    public static int arraycode(Type type) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
            case 1:
                return 8;
            case 2:
                return 9;
            case 3:
                return 5;
            case 4:
                return 10;
            case 5:
                return 11;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 4;
            case 9:
            default:
                throw new AssertionError((Object) ("arraycode " + ((Object) type)));
            case 10:
                return 0;
            case 11:
                return 1;
        }
    }

    private void emit1(int i10) {
        if (this.alive) {
            byte[] ensureCapacity = ArrayUtils.ensureCapacity(this.code, this.cp);
            this.code = ensureCapacity;
            int i11 = this.cp;
            this.cp = i11 + 1;
            ensureCapacity[i11] = (byte) i10;
        }
    }

    private void emit2(int i10) {
        if (this.alive) {
            int i11 = this.cp;
            int i12 = i11 + 2;
            byte[] bArr = this.code;
            if (i12 > bArr.length) {
                emit1(i10 >> 8);
                emit1(i10);
                return;
            }
            int i13 = i11 + 1;
            this.cp = i13;
            bArr[i11] = (byte) (i10 >> 8);
            this.cp = i11 + 2;
            bArr[i13] = (byte) i10;
        }
    }

    private void emitop(int i10) {
        if (this.pendingJumps != null) {
            resolvePending();
        }
        if (this.alive) {
            if (this.pendingStatPos != -1) {
                markStatBegin();
            }
            if (this.pendingStackMap) {
                this.pendingStackMap = false;
                emitStackMap();
            }
            if (this.debugCode) {
                System.err.println("emit@" + this.cp + " stack=" + this.state.stacksize + ": " + mnem(i10));
            }
            emit1(i10);
        }
    }

    private void endScope(int i10) {
        char curCP;
        LocalVar localVar = this.lvar[i10];
        if (localVar != null) {
            if (localVar.isLastRangeInitialized() && (curCP = (char) (curCP() - localVar.lastRange().start_pc)) < '\uffff') {
                localVar.closeRange(curCP);
                putVar(localVar);
                fillLocalVarPosition(localVar);
            }
            this.lvar[i10] = null;
        }
        this.state.defined.excl(i10);
    }

    private void fillLocalVarPosition(LocalVar localVar) {
        Symbol.VarSymbol varSymbol;
        if (localVar == null || (varSymbol = localVar.sym) == null || !varSymbol.hasTypeAnnotations()) {
            return;
        }
        Iterator<Attribute.TypeCompound> it = localVar.sym.getRawTypeAttributes().iterator();
        while (it.hasNext()) {
            TypeAnnotationPosition typeAnnotationPosition = it.next().position;
            LocalVar.Range widestRange = localVar.getWidestRange();
            typeAnnotationPosition.lvarOffset = new int[]{widestRange.start_pc};
            typeAnnotationPosition.lvarLength = new int[]{widestRange.length};
            typeAnnotationPosition.lvarIndex = new int[]{localVar.reg};
            typeAnnotationPosition.isValidOffset = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int findExceptionIndex(TypeAnnotationPosition typeAnnotationPosition) {
        int catchType = typeAnnotationPosition.getCatchType();
        int startPos = typeAnnotationPosition.getStartPos();
        int length = this.catchInfo.length();
        List list = this.catchInfo.toList();
        for (int i10 = 0; i10 < length; i10++) {
            char[] cArr = (char[]) list.head;
            list = list.tail;
            char c10 = cArr[3];
            char c11 = cArr[0];
            if (catchType == c10 && c11 == startPos) {
                return i10;
            }
        }
        return -1;
    }

    private int get1(int i10) {
        return this.code[i10] & 255;
    }

    private int get2(int i10) {
        return get1(i10 + 1) | (get1(i10) << 8);
    }

    private int getLocalsSize() {
        LocalVar localVar;
        for (int i10 = this.max_locals - 1; i10 >= 0; i10--) {
            if (this.state.defined.isMember(i10) && (localVar = this.lvar[i10]) != null) {
                return i10 + width(localVar.sym.erasure(this.types));
            }
        }
        return 0;
    }

    public static Chain mergeChains(Chain chain, Chain chain2) {
        if (chain2 == null) {
            return chain;
        }
        if (chain == null) {
            return chain2;
        }
        State state = chain.state;
        int i10 = state.stacksize;
        State state2 = chain2.state;
        Assert.check(i10 == state2.stacksize && state.nlocks == state2.nlocks);
        int i11 = chain.f103247pc;
        int i12 = chain2.f103247pc;
        return i11 < i12 ? new Chain(i12, mergeChains(chain, chain2.next), chain2.state) : new Chain(i11, mergeChains(chain.next, chain2), chain.state);
    }

    public static String mnem(int i10) {
        return Mneumonics.mnem[i10];
    }

    public static int negate(int i10) {
        if (i10 == 198) {
            return 199;
        }
        if (i10 == 199) {
            return 198;
        }
        return ((i10 + 1) ^ 1) - 1;
    }

    private int newLocal(int i10) {
        int i11 = this.nextreg;
        int width = width(i10) + i11;
        this.nextreg = width;
        if (width > this.max_locals) {
            this.max_locals = width;
        }
        return i11;
    }

    private void put1(int i10, int i11) {
        this.code[i10] = (byte) i11;
    }

    private void put2(int i10, int i11) {
        put1(i10, i11 >> 8);
        put1(i10 + 1, i11);
    }

    public static int truncate(int i10) {
        if (i10 == 5 || i10 == 6 || i10 == 7) {
            return 0;
        }
        return i10;
    }

    private Type typeForPool(Object obj) {
        if (obj instanceof Integer) {
            return this.syms.intType;
        }
        if (obj instanceof Float) {
            return this.syms.floatType;
        }
        if (obj instanceof String) {
            return this.syms.stringType;
        }
        if (obj instanceof Long) {
            return this.syms.longType;
        }
        if (obj instanceof Double) {
            return this.syms.doubleType;
        }
        if (obj instanceof Symbol.ClassSymbol) {
            return this.syms.classType;
        }
        if (obj instanceof Pool.MethodHandle) {
            return this.syms.methodHandleType;
        }
        if (obj instanceof Types.UniqueType) {
            return typeForPool(((Types.UniqueType) obj).type);
        }
        if (obj instanceof Type) {
            Type type = (Type) obj;
            if (type instanceof Type.ArrayType) {
                return this.syms.classType;
            }
            if (type instanceof Type.MethodType) {
                return this.syms.methodTypeType;
            }
        }
        throw new AssertionError((Object) ("Invalid type of constant pool entry: " + ((Object) obj.getClass())));
    }

    public static int typecode(Type type) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
            case 1:
                return 5;
            case 2:
                return 7;
            case 3:
                return 6;
            case 4:
                return 0;
            case 5:
                return 1;
            case 6:
                return 2;
            case 7:
                return 3;
            case 8:
                return 5;
            case 9:
                return 8;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return 4;
            default:
                throw new AssertionError((Object) ("typecode " + ((Object) type.getTag())));
        }
    }

    public static int width(int i10) {
        if (i10 == 1 || i10 == 3) {
            return 2;
        }
        return i10 != 8 ? 1 : 0;
    }

    public void addCatch(char c10, char c11, char c12, char c13) {
        this.catchInfo.append(new char[]{c10, c11, c12, c13});
    }

    public void addLineNumber(char c10, char c11) {
        if (this.lineDebugInfo) {
            if (this.lineInfo.nonEmpty()) {
                List<char[]> list = this.lineInfo;
                if (list.head[0] == c10) {
                    this.lineInfo = list.tail;
                }
            }
            if (this.lineInfo.isEmpty() || this.lineInfo.head[1] != c11) {
                this.lineInfo = this.lineInfo.prepend(new char[]{c10, c11});
            }
        }
    }

    public void adjustAliveRanges(int i10, int i11) {
        for (LocalVar localVar : this.lvar) {
            if (localVar != null) {
                for (LocalVar.Range range : localVar.aliveRanges) {
                    if (range.closed()) {
                        char c10 = range.start_pc;
                        char c11 = range.length;
                        if (c10 + c11 >= i10) {
                            range.length = (char) (c11 + i11);
                        }
                    }
                }
            }
        }
    }

    public void align(int i10) {
        if (this.alive) {
            while (this.cp % i10 != 0) {
                emitop0(0);
            }
        }
    }

    public Chain branch(int i10) {
        Chain chain = null;
        if (i10 == 167) {
            Chain chain2 = this.pendingJumps;
            this.pendingJumps = null;
            chain = chain2;
        }
        if (i10 == 168 || !isAlive()) {
            return chain;
        }
        Chain chain3 = new Chain(emitJump(i10), chain, this.state.dup());
        this.fixedPc = this.fatcode;
        if (i10 == 167) {
            this.alive = false;
        }
        return chain3;
    }

    public boolean checkLimits(JCDiagnostic.DiagnosticPosition diagnosticPosition, Log log) {
        if (this.cp > 65535) {
            log.error(diagnosticPosition, "limit.code", new Object[0]);
            return true;
        }
        if (this.max_locals > 65535) {
            log.error(diagnosticPosition, "limit.locals", new Object[0]);
            return true;
        }
        if (this.max_stack <= 65535) {
            return false;
        }
        log.error(diagnosticPosition, "limit.stack", new Object[0]);
        return true;
    }

    public void compressCatchTable() {
        ListBuffer<char[]> listBuffer = new ListBuffer<>();
        List nil = List.nil();
        Iterator<char[]> it = this.catchInfo.iterator();
        while (it.hasNext()) {
            nil = nil.prepend(Integer.valueOf(it.next()[2]));
        }
        Iterator<char[]> it2 = this.catchInfo.iterator();
        while (it2.hasNext()) {
            char[] next = it2.next();
            char c10 = next[0];
            char c11 = next[1];
            if (c10 != c11 && (c10 != c11 - 1 || !nil.contains(Integer.valueOf(c10)))) {
                listBuffer.append(next);
            }
        }
        this.catchInfo = listBuffer;
    }

    public int curCP() {
        if (this.pendingJumps != null) {
            resolvePending();
        }
        if (this.pendingStatPos != -1) {
            markStatBegin();
        }
        this.fixedPc = true;
        return this.cp;
    }

    public void emit4(int i10) {
        if (this.alive) {
            int i11 = this.cp;
            int i12 = i11 + 4;
            byte[] bArr = this.code;
            if (i12 > bArr.length) {
                emit1(i10 >> 24);
                emit1(i10 >> 16);
                emit1(i10 >> 8);
                emit1(i10);
                return;
            }
            int i13 = i11 + 1;
            this.cp = i13;
            bArr[i11] = (byte) (i10 >> 24);
            int i14 = i11 + 2;
            this.cp = i14;
            bArr[i13] = (byte) (i10 >> 16);
            int i15 = i11 + 3;
            this.cp = i15;
            bArr[i14] = (byte) (i10 >> 8);
            this.cp = i11 + 4;
            bArr[i15] = (byte) i10;
        }
    }

    public void emitAnewarray(int i10, Type type) {
        emitop(189);
        if (this.alive) {
            emit2(i10);
            this.state.pop(1);
            this.state.push(type);
        }
    }

    public void emitCLDCStackMap(int i10, int i11) {
        LocalVar localVar;
        if (this.lastStackMapPC == i10) {
            StackMapFrame[] stackMapFrameArr = this.stackMapBuffer;
            int i12 = this.stackMapBufferSize - 1;
            this.stackMapBufferSize = i12;
            stackMapFrameArr[i12] = null;
        }
        this.lastStackMapPC = i10;
        StackMapFrame[] stackMapFrameArr2 = this.stackMapBuffer;
        if (stackMapFrameArr2 == null) {
            this.stackMapBuffer = new StackMapFrame[20];
        } else {
            this.stackMapBuffer = (StackMapFrame[]) ArrayUtils.ensureCapacity(stackMapFrameArr2, this.stackMapBufferSize);
        }
        StackMapFrame[] stackMapFrameArr3 = this.stackMapBuffer;
        int i13 = this.stackMapBufferSize;
        this.stackMapBufferSize = i13 + 1;
        StackMapFrame stackMapFrame = new StackMapFrame();
        stackMapFrameArr3[i13] = stackMapFrame;
        stackMapFrame.f103248pc = i10;
        stackMapFrame.locals = new Type[i11];
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            if (this.state.defined.isMember(i15) && (localVar = this.lvar[i15]) != null) {
                Type type = localVar.sym.type;
                if (!(type instanceof UninitializedType)) {
                    type = this.types.erasure(type);
                }
                stackMapFrame.locals[i15] = type;
            }
        }
        stackMapFrame.stack = new Type[this.state.stacksize];
        while (true) {
            State state = this.state;
            if (i14 >= state.stacksize) {
                return;
            }
            stackMapFrame.stack[i14] = state.stack[i14];
            i14++;
        }
    }

    public void emitInvokedynamic(int i10, Type type) {
        int width = width(type.getParameterTypes());
        emitop(186);
        if (this.alive) {
            emit2(i10);
            emit2(0);
            this.state.pop(width);
            this.state.push(type.getReturnType());
        }
    }

    public void emitInvokeinterface(int i10, Type type) {
        int width = width(type.getParameterTypes());
        emitop(185);
        if (this.alive) {
            emit2(i10);
            int i11 = width + 1;
            emit1(i11);
            emit1(0);
            this.state.pop(i11);
            this.state.push(type.getReturnType());
        }
    }

    public void emitInvokespecial(int i10, Type type) {
        int width = width(type.getParameterTypes());
        emitop(183);
        if (this.alive) {
            emit2(i10);
            Symbol symbol = (Symbol) this.pool.pool[i10];
            this.state.pop(width);
            if (symbol.isConstructor()) {
                State state = this.state;
                state.markInitialized((UninitializedType) state.peek());
            }
            this.state.pop(1);
            this.state.push(type.getReturnType());
        }
    }

    public void emitInvokestatic(int i10, Type type) {
        int width = width(type.getParameterTypes());
        emitop(184);
        if (this.alive) {
            emit2(i10);
            this.state.pop(width);
            this.state.push(type.getReturnType());
        }
    }

    public void emitInvokevirtual(int i10, Type type) {
        int width = width(type.getParameterTypes());
        emitop(182);
        if (this.alive) {
            emit2(i10);
            this.state.pop(width + 1);
            this.state.push(type.getReturnType());
        }
    }

    public int emitJump(int i10) {
        if (!this.fatcode) {
            emitop2(i10, 0);
            return this.cp - 3;
        }
        if (i10 == 167 || i10 == 168) {
            emitop4(i10 + 33, 0);
        } else {
            emitop2(negate(i10), 8);
            emitop4(200, 0);
            this.alive = true;
            this.pendingStackMap = this.needStackMap;
        }
        return this.cp - 5;
    }

    public void emitLdc(int i10) {
        if (i10 <= 255) {
            emitop1(18, i10);
        } else {
            emitop2(19, i10);
        }
    }

    public void emitMultianewarray(int i10, int i11, Type type) {
        emitop(197);
        if (this.alive) {
            emit2(i11);
            emit1(i10);
            this.state.pop(i10);
            this.state.push(type);
        }
    }

    public void emitNewarray(int i10, Type type) {
        emitop(188);
        if (this.alive) {
            emit1(i10);
            this.state.pop(1);
            this.state.push(type);
        }
    }

    public void emitStackMap() {
        int curCP = curCP();
        if (this.needStackMap) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat[this.stackMap.ordinal()];
            if (i10 == 1) {
                emitCLDCStackMap(curCP, getLocalsSize());
            } else {
                if (i10 != 2) {
                    throw new AssertionError((Object) "Should have chosen a stackmap format");
                }
                emitStackMapFrame(curCP, getLocalsSize());
            }
            if (this.debugCode) {
                this.state.dump(curCP);
            }
        }
    }

    public void emitStackMapFrame(int i10, int i11) {
        LocalVar localVar;
        StackMapFrame stackMapFrame = this.lastFrame;
        if (stackMapFrame == null) {
            this.lastFrame = getInitialFrame();
        } else if (stackMapFrame.f103248pc == i10) {
            ClassWriter.StackMapTableFrame[] stackMapTableFrameArr = this.stackMapTableBuffer;
            int i12 = this.stackMapBufferSize - 1;
            this.stackMapBufferSize = i12;
            stackMapTableFrameArr[i12] = null;
            this.lastFrame = this.frameBeforeLast;
            this.frameBeforeLast = null;
        }
        StackMapFrame stackMapFrame2 = new StackMapFrame();
        stackMapFrame2.f103248pc = i10;
        Type[] typeArr = new Type[i11];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i14 < i11) {
            if (this.state.defined.isMember(i14) && (localVar = this.lvar[i14]) != null) {
                Type type = localVar.sym.type;
                if (!(type instanceof UninitializedType)) {
                    type = this.types.erasure(type);
                }
                typeArr[i14] = type;
                if (width(type) > 1) {
                    i14++;
                }
            }
            i14++;
            i15++;
        }
        stackMapFrame2.locals = new Type[i15];
        int i16 = 0;
        int i17 = 0;
        while (i16 < i11) {
            Assert.check(i17 < i15);
            stackMapFrame2.locals[i17] = typeArr[i16];
            if (width(typeArr[i16]) > 1) {
                i16++;
            }
            i16++;
            i17++;
        }
        int i18 = 0;
        int i19 = 0;
        while (true) {
            State state = this.state;
            if (i18 >= state.stacksize) {
                break;
            }
            if (state.stack[i18] != null) {
                i19++;
            }
            i18++;
        }
        stackMapFrame2.stack = new Type[i19];
        int i20 = 0;
        while (true) {
            State state2 = this.state;
            if (i13 >= state2.stacksize) {
                break;
            }
            Type type2 = state2.stack[i13];
            if (type2 != null) {
                stackMapFrame2.stack[i20] = this.types.erasure(type2);
                i20++;
            }
            i13++;
        }
        ClassWriter.StackMapTableFrame[] stackMapTableFrameArr2 = this.stackMapTableBuffer;
        if (stackMapTableFrameArr2 == null) {
            this.stackMapTableBuffer = new ClassWriter.StackMapTableFrame[20];
        } else {
            this.stackMapTableBuffer = (ClassWriter.StackMapTableFrame[]) ArrayUtils.ensureCapacity(stackMapTableFrameArr2, this.stackMapBufferSize);
        }
        ClassWriter.StackMapTableFrame[] stackMapTableFrameArr3 = this.stackMapTableBuffer;
        int i21 = this.stackMapBufferSize;
        this.stackMapBufferSize = i21 + 1;
        StackMapFrame stackMapFrame3 = this.lastFrame;
        stackMapTableFrameArr3[i21] = ClassWriter.StackMapTableFrame.getInstance(stackMapFrame2, stackMapFrame3.f103248pc, stackMapFrame3.locals, this.types);
        this.frameBeforeLast = this.lastFrame;
        this.lastFrame = stackMapFrame2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x043f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void emitop0(int i10) {
        emitop(i10);
        if (this.alive) {
            if (i10 != 167) {
                if (i10 == 190) {
                    this.state.pop(1);
                    this.state.push(this.syms.intType);
                } else if (i10 != 191) {
                    switch (i10) {
                        case 0:
                            break;
                        case 1:
                            this.state.push(this.syms.botType);
                            break;
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                            this.state.push(this.syms.intType);
                            break;
                        case 9:
                        case 10:
                            this.state.push(this.syms.longType);
                            break;
                        case 11:
                        case 12:
                        case 13:
                            this.state.push(this.syms.floatType);
                            break;
                        case 14:
                        case 15:
                            this.state.push(this.syms.doubleType);
                            break;
                        default:
                            switch (i10) {
                                case 26:
                                case 27:
                                case 28:
                                case 29:
                                    break;
                                case 30:
                                case 31:
                                case 32:
                                case 33:
                                    break;
                                case 34:
                                case 35:
                                case 36:
                                case 37:
                                    break;
                                case 38:
                                case 39:
                                case 40:
                                case 41:
                                    break;
                                case 42:
                                    this.state.push(this.lvar[0].sym.type);
                                    break;
                                case 43:
                                    this.state.push(this.lvar[1].sym.type);
                                    break;
                                case 44:
                                    this.state.push(this.lvar[2].sym.type);
                                    break;
                                case 45:
                                    this.state.push(this.lvar[3].sym.type);
                                    break;
                                case 46:
                                case 51:
                                case 52:
                                case 53:
                                    this.state.pop(2);
                                    this.state.push(this.syms.intType);
                                    break;
                                case 47:
                                    this.state.pop(2);
                                    this.state.push(this.syms.longType);
                                    break;
                                case 48:
                                    this.state.pop(2);
                                    this.state.push(this.syms.floatType);
                                    break;
                                case 49:
                                    this.state.pop(2);
                                    this.state.push(this.syms.doubleType);
                                    break;
                                case 50:
                                    this.state.pop(1);
                                    State state = this.state;
                                    Type type = state.stack[state.stacksize - 1];
                                    Assert.check(!type.hasTag(TypeTag.BOT));
                                    this.state.pop(1);
                                    State state2 = this.state;
                                    Types types = this.types;
                                    state2.push(types.erasure(types.elemtype(type)));
                                    break;
                                default:
                                    switch (i10) {
                                        case 59:
                                        case 60:
                                        case 61:
                                        case 62:
                                        case 67:
                                        case 68:
                                        case 69:
                                        case 70:
                                        case 75:
                                        case 76:
                                        case 77:
                                        case 78:
                                        case 87:
                                        case 121:
                                        case 123:
                                        case 125:
                                            this.state.pop(1);
                                            break;
                                        case 63:
                                        case 64:
                                        case 65:
                                        case 66:
                                        case 71:
                                        case 72:
                                        case 73:
                                        case 74:
                                        case 88:
                                            this.state.pop(2);
                                            break;
                                        case 79:
                                        case 81:
                                        case 85:
                                        case 86:
                                            this.state.pop(3);
                                            break;
                                        case 80:
                                        case 82:
                                            this.state.pop(4);
                                            break;
                                        case 83:
                                            this.state.pop(3);
                                            break;
                                        case 84:
                                            this.state.pop(3);
                                            break;
                                        case 89:
                                            State state3 = this.state;
                                            state3.push(state3.stack[state3.stacksize - 1]);
                                            break;
                                        case 90:
                                            Type pop1 = this.state.pop1();
                                            Type pop12 = this.state.pop1();
                                            this.state.push(pop1);
                                            this.state.push(pop12);
                                            this.state.push(pop1);
                                            break;
                                        case 91:
                                            Type pop13 = this.state.pop1();
                                            State state4 = this.state;
                                            if (state4.stack[state4.stacksize - 1] == null) {
                                                Type pop2 = state4.pop2();
                                                this.state.push(pop13);
                                                this.state.push(pop2);
                                                this.state.push(pop13);
                                                break;
                                            } else {
                                                Type pop14 = state4.pop1();
                                                Type pop15 = this.state.pop1();
                                                this.state.push(pop13);
                                                this.state.push(pop15);
                                                this.state.push(pop14);
                                                this.state.push(pop13);
                                                break;
                                            }
                                        case 92:
                                            State state5 = this.state;
                                            if (state5.stack[state5.stacksize - 1] == null) {
                                                Type pop22 = state5.pop2();
                                                this.state.push(pop22);
                                                this.state.push(pop22);
                                                break;
                                            } else {
                                                Type pop16 = state5.pop1();
                                                Type pop17 = this.state.pop1();
                                                this.state.push(pop17);
                                                this.state.push(pop16);
                                                this.state.push(pop17);
                                                this.state.push(pop16);
                                                break;
                                            }
                                        case 93:
                                            State state6 = this.state;
                                            if (state6.stack[state6.stacksize - 1] == null) {
                                                Type pop23 = state6.pop2();
                                                Type pop18 = this.state.pop1();
                                                this.state.push(pop23);
                                                this.state.push(pop18);
                                                this.state.push(pop23);
                                                break;
                                            } else {
                                                Type pop19 = state6.pop1();
                                                Type pop110 = this.state.pop1();
                                                Type pop111 = this.state.pop1();
                                                this.state.push(pop110);
                                                this.state.push(pop19);
                                                this.state.push(pop111);
                                                this.state.push(pop110);
                                                this.state.push(pop19);
                                                break;
                                            }
                                        case 94:
                                            State state7 = this.state;
                                            if (state7.stack[state7.stacksize - 1] == null) {
                                                Type pop24 = state7.pop2();
                                                State state8 = this.state;
                                                if (state8.stack[state8.stacksize - 1] == null) {
                                                    Type pop25 = state8.pop2();
                                                    this.state.push(pop24);
                                                    this.state.push(pop25);
                                                    this.state.push(pop24);
                                                    break;
                                                } else {
                                                    Type pop112 = state8.pop1();
                                                    Type pop113 = this.state.pop1();
                                                    this.state.push(pop24);
                                                    this.state.push(pop113);
                                                    this.state.push(pop112);
                                                    this.state.push(pop24);
                                                    break;
                                                }
                                            } else {
                                                Type pop114 = state7.pop1();
                                                Type pop115 = this.state.pop1();
                                                State state9 = this.state;
                                                if (state9.stack[state9.stacksize - 1] == null) {
                                                    Type pop26 = state9.pop2();
                                                    this.state.push(pop115);
                                                    this.state.push(pop114);
                                                    this.state.push(pop26);
                                                    this.state.push(pop115);
                                                    this.state.push(pop114);
                                                    break;
                                                } else {
                                                    Type pop116 = state9.pop1();
                                                    Type pop117 = this.state.pop1();
                                                    this.state.push(pop115);
                                                    this.state.push(pop114);
                                                    this.state.push(pop117);
                                                    this.state.push(pop116);
                                                    this.state.push(pop115);
                                                    this.state.push(pop114);
                                                    break;
                                                }
                                            }
                                        case 95:
                                            Type pop118 = this.state.pop1();
                                            Type pop119 = this.state.pop1();
                                            this.state.push(pop118);
                                            this.state.push(pop119);
                                            break;
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
                                            this.state.pop(1);
                                            break;
                                        case 97:
                                        case 101:
                                        case 105:
                                        case 109:
                                        case 113:
                                        case 127:
                                        case 129:
                                        case 131:
                                            this.state.pop(2);
                                            break;
                                        case 98:
                                        case 102:
                                        case 106:
                                        case 110:
                                        case 114:
                                            this.state.pop(1);
                                            break;
                                        case 99:
                                        case 103:
                                        case 107:
                                        case 111:
                                        case 115:
                                            this.state.pop(2);
                                            break;
                                        case 116:
                                        case 117:
                                        case 118:
                                        case 119:
                                            break;
                                        default:
                                            switch (i10) {
                                                case 133:
                                                    this.state.pop(1);
                                                    this.state.push(this.syms.longType);
                                                    break;
                                                case 134:
                                                    this.state.pop(1);
                                                    this.state.push(this.syms.floatType);
                                                    break;
                                                case 135:
                                                    this.state.pop(1);
                                                    this.state.push(this.syms.doubleType);
                                                    break;
                                                case 136:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.intType);
                                                    break;
                                                case 137:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.floatType);
                                                    break;
                                                case 138:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.doubleType);
                                                    break;
                                                case 139:
                                                    this.state.pop(1);
                                                    this.state.push(this.syms.intType);
                                                    break;
                                                case 140:
                                                    this.state.pop(1);
                                                    this.state.push(this.syms.longType);
                                                    break;
                                                case 141:
                                                    this.state.pop(1);
                                                    this.state.push(this.syms.doubleType);
                                                    break;
                                                case 142:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.intType);
                                                    break;
                                                case 143:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.longType);
                                                    break;
                                                case 144:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.floatType);
                                                    break;
                                                case 145:
                                                case 146:
                                                case 147:
                                                    break;
                                                case 148:
                                                    this.state.pop(4);
                                                    this.state.push(this.syms.intType);
                                                    break;
                                                case 149:
                                                case 150:
                                                    this.state.pop(2);
                                                    this.state.push(this.syms.intType);
                                                    break;
                                                case 151:
                                                case 152:
                                                    this.state.pop(4);
                                                    this.state.push(this.syms.intType);
                                                    break;
                                                default:
                                                    switch (i10) {
                                                        case 169:
                                                            markDead();
                                                            break;
                                                        case 170:
                                                        case 171:
                                                            this.state.pop(1);
                                                            break;
                                                        case 172:
                                                        case 174:
                                                        case 176:
                                                            Assert.check(this.state.nlocks == 0);
                                                            this.state.pop(1);
                                                            markDead();
                                                            break;
                                                        case 173:
                                                        case 175:
                                                            Assert.check(this.state.nlocks == 0);
                                                            this.state.pop(2);
                                                            markDead();
                                                            break;
                                                        case 177:
                                                            Assert.check(this.state.nlocks == 0);
                                                            markDead();
                                                            break;
                                                        default:
                                                            switch (i10) {
                                                                case 194:
                                                                case 195:
                                                                    this.state.pop(1);
                                                                    break;
                                                                case 196:
                                                                    return;
                                                                default:
                                                                    throw new AssertionError((Object) mnem(i10));
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                } else {
                    this.state.pop(1);
                    markDead();
                }
            } else {
                markDead();
            }
            postop();
        }
    }

    public void emitop1(int i10, int i11) {
        emitop(i10);
        if (this.alive) {
            emit1(i11);
            if (i10 == 16) {
                this.state.push(this.syms.intType);
            } else {
                if (i10 != 18) {
                    throw new AssertionError((Object) mnem(i10));
                }
                this.state.push(typeForPool(this.pool.pool[i11]));
            }
            postop();
        }
    }

    public void emitop1w(int i10, int i11) {
        if (i11 > 255) {
            emitop(196);
            emitop(i10);
            emit2(i11);
        } else {
            emitop(i10);
            emit1(i11);
        }
        if (this.alive) {
            if (i10 != 169) {
                switch (i10) {
                    case 21:
                        this.state.push(this.syms.intType);
                        break;
                    case 22:
                        this.state.push(this.syms.longType);
                        break;
                    case 23:
                        this.state.push(this.syms.floatType);
                        break;
                    case 24:
                        this.state.push(this.syms.doubleType);
                        break;
                    case 25:
                        this.state.push(this.lvar[i11].sym.type);
                        break;
                    default:
                        switch (i10) {
                            case 54:
                            case 56:
                            case 58:
                                this.state.pop(1);
                                break;
                            case 55:
                            case 57:
                                this.state.pop(2);
                                break;
                            default:
                                throw new AssertionError((Object) mnem(i10));
                        }
                }
            } else {
                markDead();
            }
            postop();
        }
    }

    public void emitop2(int i10, int i11) {
        emitop(i10);
        if (this.alive) {
            emit2(i11);
            if (i10 == 17) {
                this.state.push(this.syms.intType);
                return;
            }
            if (i10 == 187) {
                Object obj = this.pool.pool[i11];
                this.state.push(UninitializedType.uninitializedObject((obj instanceof Types.UniqueType ? ((Types.UniqueType) obj).type.tsym : (Symbol) obj).erasure(this.types), this.cp - 3));
                return;
            }
            if (i10 == 19) {
                this.state.push(typeForPool(this.pool.pool[i11]));
                return;
            }
            if (i10 == 20) {
                this.state.push(typeForPool(this.pool.pool[i11]));
                return;
            }
            if (i10 == 192) {
                this.state.pop(1);
                Object obj2 = this.pool.pool[i11];
                this.state.push(obj2 instanceof Symbol ? ((Symbol) obj2).erasure(this.types) : this.types.erasure(((Types.UniqueType) obj2).type));
                return;
            }
            if (i10 == 193) {
                this.state.pop(1);
                this.state.push(this.syms.intType);
                return;
            }
            if (i10 != 198 && i10 != 199) {
                switch (i10) {
                    case 153:
                    case 154:
                    case 155:
                    case 156:
                    case 157:
                    case 158:
                        break;
                    case 159:
                    case 160:
                    case 161:
                    case 162:
                    case 163:
                    case 164:
                    case 165:
                    case 166:
                        this.state.pop(2);
                        return;
                    case 167:
                        markDead();
                        return;
                    case 168:
                        return;
                    default:
                        switch (i10) {
                            case 178:
                                this.state.push(((Symbol) this.pool.pool[i11]).erasure(this.types));
                                return;
                            case 179:
                                this.state.pop(((Symbol) this.pool.pool[i11]).erasure(this.types));
                                return;
                            case 180:
                                this.state.pop(1);
                                this.state.push(((Symbol) this.pool.pool[i11]).erasure(this.types));
                                return;
                            case 181:
                                this.state.pop(((Symbol) this.pool.pool[i11]).erasure(this.types));
                                this.state.pop(1);
                                return;
                            default:
                                throw new AssertionError((Object) mnem(i10));
                        }
                }
            }
            this.state.pop(1);
        }
    }

    public void emitop4(int i10, int i11) {
        emitop(i10);
        if (this.alive) {
            emit4(i11);
            if (i10 == 200) {
                markDead();
            } else if (i10 != 201) {
                throw new AssertionError((Object) mnem(i10));
            }
        }
    }

    public void endScopes(int i10) {
        int i11 = this.nextreg;
        this.nextreg = i10;
        while (i10 < i11) {
            endScope(i10);
            i10++;
        }
    }

    public int entryPoint() {
        int curCP = curCP();
        this.alive = true;
        this.pendingStackMap = this.needStackMap;
        return curCP;
    }

    public void fillExceptionParameterPositions() {
        Symbol.VarSymbol varSymbol;
        for (int i10 = 0; i10 < this.varBufferSize; i10++) {
            LocalVar localVar = this.varBuffer[i10];
            if (localVar != null && (varSymbol = localVar.sym) != null && varSymbol.hasTypeAnnotations() && localVar.sym.isExceptionParameter()) {
                Iterator<Attribute.TypeCompound> it = localVar.sym.getRawTypeAttributes().iterator();
                while (it.hasNext()) {
                    Attribute.TypeCompound next = it.next();
                    TypeAnnotationPosition typeAnnotationPosition = next.position;
                    if (typeAnnotationPosition.hasCatchType()) {
                        int findExceptionIndex = findExceptionIndex(typeAnnotationPosition);
                        if (findExceptionIndex == -1) {
                            Assert.error("Could not find exception index for type annotation " + ((Object) next) + " on exception parameter");
                        }
                        typeAnnotationPosition.setExceptionIndex(findExceptionIndex);
                    }
                }
            }
        }
    }

    public int get4(int i10) {
        return get1(i10 + 3) | (get1(i10) << 24) | (get1(i10 + 1) << 16) | (get1(i10 + 2) << 8);
    }

    public StackMapFrame getInitialFrame() {
        StackMapFrame stackMapFrame = new StackMapFrame();
        List<Type> list = ((Type.MethodType) this.meth.externalType(this.types)).argtypes;
        int length = list.length();
        int i10 = 0;
        if (this.meth.isStatic()) {
            stackMapFrame.locals = new Type[length];
        } else {
            Symbol.MethodSymbol methodSymbol = this.meth;
            Type type = methodSymbol.owner.type;
            stackMapFrame.locals = new Type[length + 1];
            if (!methodSymbol.isConstructor() || type == this.syms.objectType) {
                stackMapFrame.locals[0] = this.types.erasure(type);
            } else {
                stackMapFrame.locals[0] = UninitializedType.uninitializedThis(type);
            }
            i10 = 1;
        }
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            stackMapFrame.locals[i10] = this.types.erasure(it.next());
            i10++;
        }
        stackMapFrame.f103248pc = -1;
        stackMapFrame.stack = null;
        return stackMapFrame;
    }

    public int getLVTSize() {
        int i10 = this.varBufferSize;
        for (int i11 = 0; i11 < this.varBufferSize; i11++) {
            i10 += this.varBuffer[i11].aliveRanges.size() - 1;
        }
        return i10;
    }

    public boolean isAlive() {
        return this.alive || this.pendingJumps != null;
    }

    public void markDead() {
        this.alive = false;
    }

    public void markStatBegin() {
        if (this.alive && this.lineDebugInfo) {
            int lineNumber = this.lineMap.getLineNumber(this.pendingStatPos);
            int i10 = this.cp;
            char c10 = (char) i10;
            char c11 = (char) lineNumber;
            if (c10 == i10 && c11 == lineNumber) {
                addLineNumber(c10, c11);
            }
        }
        this.pendingStatPos = -1;
    }

    public void newRegSegment() {
        this.nextreg = this.max_locals;
    }

    public void postop() {
        Assert.check(this.alive || this.state.stacksize == 0);
    }

    public void put4(int i10, int i11) {
        put1(i10, i11 >> 24);
        put1(i10 + 1, i11 >> 16);
        put1(i10 + 2, i11 >> 8);
        put1(i10 + 3, i11);
    }

    public void putVar(LocalVar localVar) {
        if (this.varDebugInfo || (localVar.sym.isExceptionParameter() && localVar.sym.hasTypeAnnotations())) {
            if ((localVar.sym.flags() & 4096) == 0 || !((localVar.sym.owner.flags() & 562949953421312L) == 0 || (localVar.sym.flags() & 8589934592L) == 0)) {
                LocalVar[] localVarArr = this.varBuffer;
                if (localVarArr == null) {
                    this.varBuffer = new LocalVar[20];
                } else {
                    this.varBuffer = (LocalVar[]) ArrayUtils.ensureCapacity(localVarArr, this.varBufferSize);
                }
                LocalVar[] localVarArr2 = this.varBuffer;
                int i10 = this.varBufferSize;
                this.varBufferSize = i10 + 1;
                localVarArr2[i10] = localVar;
            }
        }
    }

    public void resolve(Chain chain, int i10) {
        boolean z10;
        int i11;
        State state = this.state;
        boolean z11 = false;
        while (true) {
            if (chain == null) {
                break;
            }
            State state2 = this.state;
            Assert.check(state2 != chain.state && (i10 > chain.f103247pc || state2.stacksize == 0));
            int i12 = this.cp;
            if (i10 >= i12) {
                i10 = i12;
            } else if (get1(i10) == 167) {
                i10 += this.fatcode ? get4(i10 + 1) : get2(i10 + 1);
            }
            if (get1(chain.f103247pc) == 167 && chain.f103247pc + 3 == i10 && i10 == (i11 = this.cp) && !this.fixedPc) {
                if (this.varDebugInfo) {
                    adjustAliveRanges(i11, -3);
                }
                this.cp -= 3;
                i10 -= 3;
                if (chain.next == null) {
                    this.alive = true;
                    break;
                }
            } else {
                if (this.fatcode) {
                    int i13 = chain.f103247pc;
                    put4(i13 + 1, i10 - i13);
                } else {
                    int i14 = chain.f103247pc;
                    if (i10 - i14 >= -32768 && i10 - i14 <= 32767) {
                        put2(i14 + 1, i10 - i14);
                    } else {
                        this.fatcode = true;
                    }
                }
                if (this.alive) {
                    State state3 = chain.state;
                    if (state3.stacksize != state.stacksize || state3.nlocks != state.nlocks) {
                        z10 = false;
                        Assert.check(z10);
                    }
                }
                z10 = true;
                Assert.check(z10);
            }
            this.fixedPc = true;
            if (this.cp == i10) {
                if (this.debugCode) {
                    System.err.println("resolving chain state=" + ((Object) chain.state));
                }
                if (this.alive) {
                    state = chain.state.join(state);
                } else {
                    state = chain.state;
                    this.alive = true;
                }
                z11 = true;
            }
            chain = chain.next;
        }
        Assert.check((z11 && this.state == state) ? false : true);
        if (this.state != state) {
            setDefined(state.defined);
            this.state = state;
            this.pendingStackMap = this.needStackMap;
        }
    }

    public void resolvePending() {
        Chain chain = this.pendingJumps;
        this.pendingJumps = null;
        resolve(chain, this.cp);
    }

    public void setDefined(Bits bits) {
        if (!this.alive || bits == this.state.defined) {
            return;
        }
        Bits xorSet = new Bits(this.state.defined).xorSet(bits);
        for (int nextBit = xorSet.nextBit(0); nextBit >= 0; nextBit = xorSet.nextBit(nextBit + 1)) {
            if (nextBit >= this.nextreg) {
                this.state.defined.excl(nextBit);
            } else if (this.state.defined.isMember(nextBit)) {
                setUndefined(nextBit);
            } else {
                setDefined(nextBit);
            }
        }
    }

    public void setUndefined(int i10) {
        LocalVar localVar;
        this.state.defined.excl(i10);
        LocalVar[] localVarArr = this.lvar;
        if (i10 >= localVarArr.length || (localVar = localVarArr[i10]) == null || !localVar.isLastRangeInitialized()) {
            return;
        }
        LocalVar localVar2 = this.lvar[i10];
        char curCP = (char) (curCP() - localVar2.lastRange().start_pc);
        if (curCP >= '\uffff') {
            localVar2.removeLastRange();
            return;
        }
        this.lvar[i10] = localVar2.dup();
        localVar2.closeRange(curCP);
        putVar(localVar2);
    }

    public void statBegin(int i10) {
        if (i10 != -1) {
            this.pendingStatPos = i10;
        }
    }

    public static class LocalVar {
        java.util.List<Range> aliveRanges = new ArrayList();
        final char reg;
        final Symbol.VarSymbol sym;

        public LocalVar(Symbol.VarSymbol varSymbol) {
            this.sym = varSymbol;
            this.reg = (char) varSymbol.adr;
        }

        public void closeRange(char c10) {
            if (!isLastRangeInitialized() || c10 <= 0) {
                removeLastRange();
                return;
            }
            Range lastRange = lastRange();
            if (lastRange == null || lastRange.length != '\uffff') {
                return;
            }
            lastRange.length = c10;
        }

        public LocalVar dup() {
            return new LocalVar(this.sym);
        }

        public Range firstRange() {
            if (this.aliveRanges.isEmpty()) {
                return null;
            }
            return this.aliveRanges.get(0);
        }

        public Range getWidestRange() {
            if (this.aliveRanges.isEmpty()) {
                return new Range();
            }
            Range firstRange = firstRange();
            Range lastRange = lastRange();
            char c10 = lastRange.length;
            char c11 = lastRange.start_pc;
            char c12 = firstRange.start_pc;
            return new Range(c12, (char) (c10 + (c11 - c12)));
        }

        public boolean hasOpenRange() {
            return !this.aliveRanges.isEmpty() && lastRange().length == '\uffff';
        }

        public boolean isLastRangeInitialized() {
            return (this.aliveRanges.isEmpty() || lastRange().start_pc == '\uffff') ? false : true;
        }

        public Range lastRange() {
            if (this.aliveRanges.isEmpty()) {
                return null;
            }
            return this.aliveRanges.get(r0.size() - 1);
        }

        public void openRange(char c10) {
            if (hasOpenRange()) {
                return;
            }
            this.aliveRanges.add(new Range(c10));
        }

        public void removeLastRange() {
            Range lastRange = lastRange();
            if (lastRange != null) {
                this.aliveRanges.remove(lastRange);
            }
        }

        public String toString() {
            if (this.aliveRanges == null) {
                return "empty local var";
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) this.sym);
            sb2.append(" in register ");
            sb2.append((int) this.reg);
            sb2.append(" \n");
            for (Range range : this.aliveRanges) {
                sb2.append(" starts at pc=");
                sb2.append(Integer.toString(range.start_pc));
                sb2.append(" length=");
                sb2.append(Integer.toString(range.length));
                sb2.append("\n");
            }
            return sb2.toString();
        }

        public class Range {
            char length;
            char start_pc;

            public Range() {
                this.start_pc = C14021s.f95775c;
                this.length = C14021s.f95775c;
            }

            public boolean closed() {
                return (this.start_pc == '\uffff' || this.length == '\uffff') ? false : true;
            }

            public String toString() {
                return "startpc = " + ((int) this.start_pc) + " length " + ((int) this.length);
            }

            public Range(char c10) {
                this.length = C14021s.f95775c;
                this.start_pc = c10;
            }

            public Range(char c10, char c11) {
                this.start_pc = c10;
                this.length = c11;
            }
        }
    }

    public static int width(Type type) {
        if (type == null) {
            return 1;
        }
        return width(typecode(type));
    }

    public static int width(List<Type> list) {
        int i10 = 0;
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            i10 += width(list2.head);
        }
        return i10;
    }

    public int entryPoint(State state) {
        int curCP = curCP();
        this.alive = true;
        State dup = state.dup();
        setDefined(dup.defined);
        this.state = dup;
        Assert.check(state.stacksize <= this.max_stack);
        if (this.debugCode) {
            System.err.println("entry point " + ((Object) state));
        }
        this.pendingStackMap = this.needStackMap;
        return curCP;
    }

    private int newLocal(Type type) {
        return newLocal(typecode(type));
    }

    public int newLocal(Symbol.VarSymbol varSymbol) {
        int newLocal = newLocal(varSymbol.erasure(this.types));
        varSymbol.adr = newLocal;
        addLocalVar(varSymbol);
        return newLocal;
    }

    public void setDefined(int i10) {
        LocalVar localVar = this.lvar[i10];
        if (localVar == null) {
            this.state.defined.excl(i10);
            return;
        }
        this.state.defined.incl(i10);
        int i11 = this.cp;
        if (i11 < 65535) {
            localVar.openRange((char) i11);
        }
    }

    public int entryPoint(State state, Type type) {
        int curCP = curCP();
        this.alive = true;
        State dup = state.dup();
        setDefined(dup.defined);
        this.state = dup;
        Assert.check(state.stacksize <= this.max_stack);
        this.state.push(type);
        if (this.debugCode) {
            System.err.println("entry point " + ((Object) state));
        }
        this.pendingStackMap = this.needStackMap;
        return curCP;
    }

    public void emitop1w(int i10, int i11, int i12) {
        if (i11 <= 255 && i12 >= -128 && i12 <= 127) {
            emitop(i10);
            emit1(i11);
            emit1(i12);
        } else {
            emitop(196);
            emitop(i10);
            emit2(i11);
            emit2(i12);
        }
        if (this.alive && i10 != 132) {
            throw new AssertionError((Object) mnem(i10));
        }
    }

    public void resolve(Chain chain) {
        boolean z10;
        if (this.alive && chain != null) {
            State state = this.state;
            int i10 = state.stacksize;
            State state2 = chain.state;
            if (i10 != state2.stacksize || state.nlocks != state2.nlocks) {
                z10 = false;
                Assert.check(z10);
                this.pendingJumps = mergeChains(chain, this.pendingJumps);
            }
        }
        z10 = true;
        Assert.check(z10);
        this.pendingJumps = mergeChains(chain, this.pendingJumps);
    }
}
