package org.openjdk.tools.javac.jvm;

import android.util.Half;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.TargetType;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotationPosition;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.file.PathFileObject;
import org.openjdk.tools.javac.jvm.ClassFile;
import org.openjdk.tools.javac.jvm.Code;
import org.openjdk.tools.javac.jvm.Pool;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.ByteBuffer;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class ClassWriter extends ClassFile {
    static final int DATA_BUF_SIZE = 65520;
    static final int FULL_FRAME = 255;
    static final int MAX_LOCAL_LENGTH_DIFF = 4;
    static final int POOL_BUF_SIZE = 131056;
    static final int SAME_FRAME_EXTENDED = 251;
    static final int SAME_FRAME_SIZE = 64;
    static final int SAME_LOCALS_1_STACK_ITEM_EXTENDED = 247;
    protected static final Context.Key<ClassWriter> classWriterKey = new Context.Key<>();
    private static final String[] flagName = {"PUBLIC", "PRIVATE", "PROTECTED", "STATIC", "FINAL", "SUPER", "VOLATILE", "TRANSIENT", "NATIVE", "INTERFACE", "ABSTRACT", "STRICTFP"};
    Map<Pool.DynamicMethod.BootstrapMethodsKey, Pool.DynamicMethod.BootstrapMethodsValue> bootstrapMethods;
    private boolean debugstackmap;
    private boolean dumpClassModifiers;
    private boolean dumpFieldModifiers;
    private boolean dumpInnerClassModifiers;
    private boolean dumpMethodModifiers;
    private boolean emitSourceFile;
    private final JavaFileManager fileManager;
    private boolean genCrt;
    Set<Symbol.ClassSymbol> innerClasses;
    ListBuffer<Symbol.ClassSymbol> innerClassesQueue;
    private final Log log;
    public boolean multiModuleMode;
    private final Names names;
    private final Options options;
    Pool pool;
    private final CWSignatureGenerator signatureGen;
    private Source source;
    private Target target;
    private Types types;
    private boolean verbose;
    ByteBuffer databuf = new ByteBuffer(65520);
    ByteBuffer poolbuf = new ByteBuffer(POOL_BUF_SIZE);
    AttributeWriter awriter = new AttributeWriter();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy;
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TargetType;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat;

        static {
            int[] iArr = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr;
            try {
                iArr[Kinds.Kind.VAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.TYP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Code.StackMapFormat.values().length];
            $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat = iArr2;
            try {
                iArr2[Code.StackMapFormat.CLDC.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat[Code.StackMapFormat.JSR202.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[TargetType.values().length];
            $SwitchMap$com$sun$tools$javac$code$TargetType = iArr3;
            try {
                iArr3[TargetType.INSTANCEOF.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.NEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_REFERENCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.LOCAL_VARIABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.RESOURCE_VARIABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.EXCEPTION_PARAMETER.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_RECEIVER.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_TYPE_PARAMETER.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_TYPE_PARAMETER.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_TYPE_PARAMETER_BOUND.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_TYPE_PARAMETER_BOUND.ordinal()] = 12;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_EXTENDS.ordinal()] = 13;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.THROWS.ordinal()] = 14;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_FORMAL_PARAMETER.ordinal()] = 15;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CAST.ordinal()] = 16;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT.ordinal()] = 17;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_INVOCATION_TYPE_ARGUMENT.ordinal()] = 18;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT.ordinal()] = 19;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_REFERENCE_TYPE_ARGUMENT.ordinal()] = 20;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_RETURN.ordinal()] = 21;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.FIELD.ordinal()] = 22;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.UNKNOWN.ordinal()] = 23;
            } catch (NoSuchFieldError unused28) {
            }
            int[] iArr4 = new int[Attribute.RetentionPolicy.values().length];
            $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy = iArr4;
            try {
                iArr4[Attribute.RetentionPolicy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[Attribute.RetentionPolicy.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[Attribute.RetentionPolicy.RUNTIME.ordinal()] = 3;
            } catch (NoSuchFieldError unused31) {
            }
            int[] iArr5 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr5;
            try {
                iArr5[TypeTag.UNINITIALIZED_THIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.UNINITIALIZED_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 11;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOT.ordinal()] = 12;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.TYPEVAR.ordinal()] = 14;
            } catch (NoSuchFieldError unused45) {
            }
        }
    }

    public class AttributeWriter implements Attribute.Visitor {
        public AttributeWriter() {
        }

        @Override
        public void visitArray(Attribute.Array array) {
            ClassWriter.this.databuf.appendByte(91);
            ClassWriter.this.databuf.appendChar(array.values.length);
            for (Attribute attribute : array.values) {
                attribute.accept(this);
            }
        }

        @Override
        public void visitClass(Attribute.Class r52) {
            ClassWriter.this.databuf.appendByte(99);
            ClassWriter classWriter = ClassWriter.this;
            classWriter.databuf.appendChar(classWriter.pool.put(classWriter.typeSig(classWriter.types.erasure(r52.classType))));
        }

        @Override
        public void visitCompound(Attribute.Compound compound) {
            ClassWriter.this.databuf.appendByte(64);
            ClassWriter.this.writeCompoundAttribute(compound);
        }

        @Override
        public void visitConstant(Attribute.Constant constant) {
            Object obj = constant.value;
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[constant.type.getTag().ordinal()]) {
                case 3:
                    ClassWriter.this.databuf.appendByte(66);
                    break;
                case 4:
                    ClassWriter.this.databuf.appendByte(67);
                    break;
                case 5:
                    ClassWriter.this.databuf.appendByte(83);
                    break;
                case 6:
                    ClassWriter.this.databuf.appendByte(73);
                    break;
                case 7:
                    ClassWriter.this.databuf.appendByte(74);
                    break;
                case 8:
                    ClassWriter.this.databuf.appendByte(70);
                    break;
                case 9:
                    ClassWriter.this.databuf.appendByte(68);
                    break;
                case 10:
                    ClassWriter.this.databuf.appendByte(90);
                    break;
                case 11:
                    Assert.check(obj instanceof String);
                    ClassWriter.this.databuf.appendByte(115);
                    obj = ClassWriter.this.names.fromString(obj.toString());
                    break;
                default:
                    throw new AssertionError(constant.type);
            }
            ClassWriter classWriter = ClassWriter.this;
            classWriter.databuf.appendChar(classWriter.pool.put(obj));
        }

        @Override
        public void visitEnum(Attribute.Enum r52) {
            ClassWriter.this.databuf.appendByte(101);
            ClassWriter classWriter = ClassWriter.this;
            classWriter.databuf.appendChar(classWriter.pool.put(classWriter.typeSig(r52.value.type)));
            ClassWriter classWriter2 = ClassWriter.this;
            classWriter2.databuf.appendChar(classWriter2.pool.put(r52.value.name));
        }

        @Override
        public void visitError(Attribute.Error error) {
            throw new AssertionError(error);
        }
    }

    public class CWSignatureGenerator extends Types.SignatureGenerator {
        ByteBuffer sigbuf;

        public CWSignatureGenerator(Types types) {
            super(types);
            this.sigbuf = new ByteBuffer();
        }

        public boolean isEmpty() {
            return this.sigbuf.length == 0;
        }

        public void reset() {
            this.sigbuf.reset();
        }

        public Name toName() {
            return this.sigbuf.toName(ClassWriter.this.names);
        }

        @Override
        public void append(char c10) {
            this.sigbuf.appendByte(c10);
        }

        @Override
        public void assembleSig(Type type) {
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
            if (i10 == 1 || i10 == 2) {
                assembleSig(ClassWriter.this.types.erasure(((UninitializedType) type).qtype));
            } else {
                super.assembleSig(type);
            }
        }

        @Override
        public void classReference(Symbol.ClassSymbol classSymbol) {
            ClassWriter.this.enterInner(classSymbol);
        }

        @Override
        public void append(byte[] bArr) {
            this.sigbuf.appendBytes(bArr);
        }

        @Override
        public void append(Name name) {
            this.sigbuf.appendName(name);
        }
    }

    public static class PoolOverflow extends Exception {
        private static final long serialVersionUID = 0;
    }

    public static abstract class StackMapTableFrame {

        public static class AppendFrame extends StackMapTableFrame {
            final int frameType;
            final Type[] locals;
            final int offsetDelta;

            public AppendFrame(int i10, int i11, Type[] typeArr) {
                this.frameType = i10;
                this.offsetDelta = i11;
                this.locals = typeArr;
            }

            @Override
            public int getFrameType() {
                return this.frameType;
            }

            @Override
            public void write(ClassWriter classWriter) {
                super.write(classWriter);
                classWriter.databuf.appendChar(this.offsetDelta);
                if (classWriter.debugstackmap) {
                    System.out.print(" offset_delta=" + this.offsetDelta);
                }
                for (int i10 = 0; i10 < this.locals.length; i10++) {
                    if (classWriter.debugstackmap) {
                        System.out.print(" locals[" + i10 + "]=");
                    }
                    classWriter.writeStackMapType(this.locals[i10]);
                }
            }
        }

        public static class ChopFrame extends StackMapTableFrame {
            final int frameType;
            final int offsetDelta;

            public ChopFrame(int i10, int i11) {
                this.frameType = i10;
                this.offsetDelta = i11;
            }

            @Override
            public int getFrameType() {
                return this.frameType;
            }

            @Override
            public void write(ClassWriter classWriter) {
                super.write(classWriter);
                classWriter.databuf.appendChar(this.offsetDelta);
                if (classWriter.debugstackmap) {
                    System.out.print(" offset_delta=" + this.offsetDelta);
                }
            }
        }

        public static class FullFrame extends StackMapTableFrame {
            final Type[] locals;
            final int offsetDelta;
            final Type[] stack;

            public FullFrame(int i10, Type[] typeArr, Type[] typeArr2) {
                this.offsetDelta = i10;
                this.locals = typeArr;
                this.stack = typeArr2;
            }

            @Override
            public int getFrameType() {
                return 255;
            }

            @Override
            public void write(ClassWriter classWriter) {
                super.write(classWriter);
                classWriter.databuf.appendChar(this.offsetDelta);
                classWriter.databuf.appendChar(this.locals.length);
                if (classWriter.debugstackmap) {
                    PrintStream printStream = System.out;
                    printStream.print(" offset_delta=" + this.offsetDelta);
                    printStream.print(" nlocals=" + this.locals.length);
                }
                for (int i10 = 0; i10 < this.locals.length; i10++) {
                    if (classWriter.debugstackmap) {
                        System.out.print(" locals[" + i10 + "]=");
                    }
                    classWriter.writeStackMapType(this.locals[i10]);
                }
                classWriter.databuf.appendChar(this.stack.length);
                if (classWriter.debugstackmap) {
                    System.out.print(" nstack=" + this.stack.length);
                }
                for (int i11 = 0; i11 < this.stack.length; i11++) {
                    if (classWriter.debugstackmap) {
                        System.out.print(" stack[" + i11 + "]=");
                    }
                    classWriter.writeStackMapType(this.stack[i11]);
                }
            }
        }

        public static class SameFrame extends StackMapTableFrame {
            final int offsetDelta;

            public SameFrame(int i10) {
                this.offsetDelta = i10;
            }

            @Override
            public int getFrameType() {
                int i10 = this.offsetDelta;
                if (i10 < 64) {
                    return i10;
                }
                return 251;
            }

            @Override
            public void write(ClassWriter classWriter) {
                super.write(classWriter);
                if (getFrameType() == 251) {
                    classWriter.databuf.appendChar(this.offsetDelta);
                    if (classWriter.debugstackmap) {
                        System.out.print(" offset_delta=" + this.offsetDelta);
                    }
                }
            }
        }

        public static class SameLocals1StackItemFrame extends StackMapTableFrame {
            final int offsetDelta;
            final Type stack;

            public SameLocals1StackItemFrame(int i10, Type type) {
                this.offsetDelta = i10;
                this.stack = type;
            }

            @Override
            public int getFrameType() {
                int i10 = this.offsetDelta;
                if (i10 < 64) {
                    return i10 + 64;
                }
                return 247;
            }

            @Override
            public void write(ClassWriter classWriter) {
                super.write(classWriter);
                if (getFrameType() == 247) {
                    classWriter.databuf.appendChar(this.offsetDelta);
                    if (classWriter.debugstackmap) {
                        System.out.print(" offset_delta=" + this.offsetDelta);
                    }
                }
                if (classWriter.debugstackmap) {
                    System.out.print(" stack[0]=");
                }
                classWriter.writeStackMapType(this.stack);
            }
        }

        public static int compare(Type[] typeArr, Type[] typeArr2, Types types) {
            int length = typeArr.length - typeArr2.length;
            if (length > 4 || length < -4) {
                return Integer.MAX_VALUE;
            }
            int length2 = length > 0 ? typeArr2.length : typeArr.length;
            for (int i10 = 0; i10 < length2; i10++) {
                if (!isSameType(typeArr[i10], typeArr2[i10], types)) {
                    return Integer.MAX_VALUE;
                }
            }
            return length;
        }

        public static StackMapTableFrame getInstance(Code.StackMapFrame stackMapFrame, int i10, Type[] typeArr, Types types) {
            Type[] typeArr2 = stackMapFrame.locals;
            Type[] typeArr3 = stackMapFrame.stack;
            int i11 = (stackMapFrame.f103248pc - i10) - 1;
            int i12 = 0;
            if (typeArr3.length == 1) {
                if (typeArr2.length == typeArr.length && compare(typeArr, typeArr2, types) == 0) {
                    return new SameLocals1StackItemFrame(i11, typeArr3[0]);
                }
            } else if (typeArr3.length == 0) {
                int compare = compare(typeArr, typeArr2, types);
                if (compare == 0) {
                    return new SameFrame(i11);
                }
                if (-4 < compare && compare < 0) {
                    Type[] typeArr4 = new Type[-compare];
                    int length = typeArr.length;
                    while (length < typeArr2.length) {
                        typeArr4[i12] = typeArr2[length];
                        length++;
                        i12++;
                    }
                    return new AppendFrame(251 - compare, i11, typeArr4);
                }
                if (compare > 0 && compare < 4) {
                    return new ChopFrame(251 - compare, i11);
                }
            }
            return new FullFrame(i11, typeArr2, typeArr3);
        }

        public static boolean isInt(Type type) {
            return type.getTag().isStrictSubRangeOf(TypeTag.INT) || type.hasTag(TypeTag.BOOLEAN);
        }

        public static boolean isSameType(Type type, Type type2, Types types) {
            if (type == null) {
                return type2 == null;
            }
            if (type2 == null) {
                return false;
            }
            if (isInt(type) && isInt(type2)) {
                return true;
            }
            TypeTag typeTag = TypeTag.UNINITIALIZED_THIS;
            if (type.hasTag(typeTag)) {
                return type2.hasTag(typeTag);
            }
            TypeTag typeTag2 = TypeTag.UNINITIALIZED_OBJECT;
            if (type.hasTag(typeTag2)) {
                return type2.hasTag(typeTag2) && ((UninitializedType) type).offset == ((UninitializedType) type2).offset;
            }
            if (type2.hasTag(typeTag) || type2.hasTag(typeTag2)) {
                return false;
            }
            return types.isSameType(type, type2);
        }

        public abstract int getFrameType();

        public void write(ClassWriter classWriter) {
            int frameType = getFrameType();
            classWriter.databuf.appendByte(frameType);
            if (classWriter.debugstackmap) {
                System.out.print(" frame_type=" + frameType);
            }
        }
    }

    public static class StringOverflow extends Exception {
        private static final long serialVersionUID = 0;
        public final String value;

        public StringOverflow(String str) {
            this.value = str;
        }
    }

    public ClassWriter(Context context) {
        context.put((Context.Key<Context.Key<ClassWriter>>) classWriterKey, (Context.Key<ClassWriter>) this);
        this.log = Log.instance(context);
        this.names = Names.instance(context);
        Options instance = Options.instance(context);
        this.options = instance;
        this.target = Target.instance(context);
        this.source = Source.instance(context);
        this.types = Types.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.signatureGen = new CWSignatureGenerator(this.types);
        this.verbose = instance.isSet(Option.VERBOSE);
        this.genCrt = instance.isSet(Option.XJCOV);
        this.debugstackmap = instance.isSet("debug.stackmap");
        Option option = Option.G_CUSTOM;
        this.emitSourceFile = instance.isUnset(option) || instance.isSet(option, "source");
        String str = instance.get("debug.dumpmodifiers");
        if (str != null) {
            this.dumpClassModifiers = str.indexOf(99) != -1;
            this.dumpFieldModifiers = str.indexOf(102) != -1;
            this.dumpInnerClassModifiers = str.indexOf(105) != -1;
            this.dumpMethodModifiers = str.indexOf(109) != -1;
        }
    }

    public static String flagNames(long j10) {
        StringBuilder sb2 = new StringBuilder();
        long j11 = j10 & 4095;
        int i10 = 0;
        while (j11 != 0) {
            if ((1 & j11) != 0) {
                sb2.append(" ");
                sb2.append(flagName[i10]);
            }
            j11 >>= 1;
            i10++;
        }
        return sb2.toString();
    }

    public static ClassWriter instance(Context context) {
        ClassWriter classWriter = (ClassWriter) context.get(classWriterKey);
        return classWriter == null ? new ClassWriter(context) : classWriter;
    }

    public void lambda$null$1(Symbol.ClassSymbol classSymbol) {
        this.databuf.appendChar(this.pool.put(classSymbol));
    }

    public static Set lambda$writeModuleAttribute$0(Symbol.ClassSymbol classSymbol) {
        return new LinkedHashSet();
    }

    public void lambda$writeModuleAttribute$2(Symbol.ClassSymbol classSymbol, Set set) {
        this.databuf.appendChar(this.pool.put(classSymbol));
        this.databuf.appendChar(set.size());
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ClassWriter.this.lambda$null$1((Symbol.ClassSymbol) obj);
            }
        });
    }

    private boolean needsLocalVariableTypeEntry(Type type) {
        Types types = this.types;
        return (types.isSameType(type, types.erasure(type)) || type.isCompound()) ? false : true;
    }

    private void writeParamAnnotations(List<Symbol.VarSymbol> list, Attribute.RetentionPolicy retentionPolicy) {
        Iterator<Symbol.VarSymbol> it = list.iterator();
        while (it.hasNext()) {
            Symbol.VarSymbol next = it.next();
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Attribute.Compound> it2 = next.getRawAttributes().iterator();
            while (it2.hasNext()) {
                Attribute.Compound next2 = it2.next();
                if (this.types.getRetention(next2) == retentionPolicy) {
                    listBuffer.append(next2);
                }
            }
            this.databuf.appendChar(listBuffer.length());
            Iterator it3 = listBuffer.iterator();
            while (it3.hasNext()) {
                writeCompoundAttribute((Attribute.Compound) it3.next());
            }
        }
    }

    public int adjustFlags(long j10) {
        int i10 = (int) j10;
        if ((2147483648L & j10) != 0) {
            i10 |= 64;
        }
        if ((17179869184L & j10) != 0) {
            i10 |= 128;
        }
        return (j10 & 8796093022208L) != 0 ? i10 & Half.LOWEST_VALUE : i10;
    }

    public int beginAttrs() {
        this.databuf.appendChar(0);
        return this.databuf.length;
    }

    public void endAttr(int i10) {
        ByteBuffer byteBuffer = this.databuf;
        putInt(byteBuffer, i10 - 4, byteBuffer.length - i10);
    }

    public void endAttrs(int i10, int i11) {
        putChar(this.databuf, i10 - 2, i11);
    }

    public void enterInner(Symbol.ClassSymbol classSymbol) {
        if (classSymbol.type.isCompound()) {
            throw new AssertionError((Object) ("Unexpected intersection type: " + ((Object) classSymbol.type)));
        }
        try {
            classSymbol.complete();
            if (!classSymbol.type.hasTag(TypeTag.CLASS) || this.pool == null || classSymbol.owner.enclClass() == null) {
                return;
            }
            Set<Symbol.ClassSymbol> set = this.innerClasses;
            if (set == null || !set.contains(classSymbol)) {
                enterInner(classSymbol.owner.enclClass());
                this.pool.put(classSymbol);
                Name name = classSymbol.name;
                if (name != this.names.empty) {
                    this.pool.put(name);
                }
                if (this.innerClasses == null) {
                    this.innerClasses = new HashSet();
                    this.innerClassesQueue = new ListBuffer<>();
                    this.pool.put(this.names.InnerClasses);
                }
                this.innerClasses.add(classSymbol);
                this.innerClassesQueue.append(classSymbol);
            }
        } catch (Symbol.CompletionFailure e10) {
            System.err.println("error: " + ((Object) classSymbol) + ": " + e10.getMessage());
            throw e10;
        }
    }

    public long getLastModified(FileObject fileObject) {
        try {
            return fileObject.getLastModified();
        } catch (SecurityException e10) {
            throw new AssertionError((Object) ("CRT: couldn't get source file modification date: " + e10.getMessage()));
        }
    }

    public ClassFile.NameAndType nameType(Symbol symbol) {
        return new ClassFile.NameAndType(symbol.name, symbol.externalType(this.types), this.types);
    }

    public void putChar(ByteBuffer byteBuffer, int i10, int i11) {
        byte[] bArr = byteBuffer.elems;
        bArr[i10] = (byte) ((i11 >> 8) & 255);
        bArr[i10 + 1] = (byte) (i11 & 255);
    }

    public void putInt(ByteBuffer byteBuffer, int i10, int i11) {
        byte[] bArr = byteBuffer.elems;
        bArr[i10] = (byte) ((i11 >> 24) & 255);
        bArr[i10 + 1] = (byte) ((i11 >> 16) & 255);
        bArr[i10 + 2] = (byte) ((i11 >> 8) & 255);
        bArr[i10 + 3] = (byte) (i11 & 255);
    }

    public Name typeSig(Type type) {
        Assert.check(this.signatureGen.isEmpty());
        this.signatureGen.assembleSig(type);
        Name name = this.signatureGen.toName();
        this.signatureGen.reset();
        return name;
    }

    public int writeAttr(Name name) {
        this.databuf.appendChar(this.pool.put(name));
        this.databuf.appendInt(0);
        return this.databuf.length;
    }

    public void writeBootstrapMethods() {
        int writeAttr = writeAttr(this.names.BootstrapMethods);
        this.databuf.appendChar(this.bootstrapMethods.size());
        for (Map.Entry<Pool.DynamicMethod.BootstrapMethodsKey, Pool.DynamicMethod.BootstrapMethodsValue> entry : this.bootstrapMethods.entrySet()) {
            Pool.DynamicMethod.BootstrapMethodsKey key = entry.getKey();
            this.databuf.appendChar(this.pool.get(entry.getValue().f103249mh));
            Object[] uniqueArgs = key.getUniqueArgs();
            this.databuf.appendChar(uniqueArgs.length);
            for (Object obj : uniqueArgs) {
                this.databuf.appendChar(this.pool.get(obj));
            }
        }
        endAttr(writeAttr);
    }

    public JavaFileObject writeClass(Symbol.ClassSymbol classSymbol) throws IOException, PoolOverflow, StringOverflow {
        JavaFileManager.Location location;
        Kinds.Kind kind = classSymbol.owner.kind;
        Kinds.Kind kind2 = Kinds.Kind.MDL;
        String name = (kind == kind2 ? classSymbol.name : classSymbol.flatname).toString();
        if (this.multiModuleMode) {
            Symbol symbol = classSymbol.owner;
            location = this.fileManager.getLocationForModule(StandardLocation.CLASS_OUTPUT, (symbol.kind == kind2 ? (Symbol.ModuleSymbol) symbol : classSymbol.packge().modle).name.toString());
        } else {
            location = StandardLocation.CLASS_OUTPUT;
        }
        JavaFileObject javaFileForOutput = this.fileManager.getJavaFileForOutput(location, name, JavaFileObject.Kind.CLASS, classSymbol.sourcefile);
        OutputStream openOutputStream = javaFileForOutput.openOutputStream();
        try {
            writeClassFile(openOutputStream, classSymbol);
            if (this.verbose) {
                this.log.printVerbose("wrote.file", javaFileForOutput);
            }
            openOutputStream.close();
            return javaFileForOutput;
        } catch (Throwable th2) {
            if (openOutputStream != null) {
                openOutputStream.close();
                javaFileForOutput.delete();
            }
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeClassFile(OutputStream outputStream, Symbol.ClassSymbol classSymbol) throws IOException, PoolOverflow, StringOverflow {
        int i10;
        int i11 = 1;
        Assert.check((classSymbol.flags() & 16777216) == 0);
        this.databuf.reset();
        this.poolbuf.reset();
        this.signatureGen.reset();
        this.pool = classSymbol.pool;
        this.innerClasses = null;
        this.innerClassesQueue = null;
        this.bootstrapMethods = new LinkedHashMap();
        Type supertype = this.types.supertype(classSymbol.type);
        List interfaces = this.types.interfaces(classSymbol.type);
        List<Type> typeArguments = classSymbol.type.getTypeArguments();
        Kinds.Kind kind = classSymbol.owner.kind;
        Kinds.Kind kind2 = Kinds.Kind.MDL;
        if (kind == kind2) {
            i10 = 32768;
        } else {
            int adjustFlags = adjustFlags(classSymbol.flags() & (-8796093022209L));
            if ((adjustFlags & 4) != 0) {
                adjustFlags |= 1;
            }
            int i12 = adjustFlags & 30225;
            i10 = (adjustFlags & 512) == 0 ? i12 | 32 : i12;
        }
        if (this.dumpClassModifiers) {
            PrintWriter writer = this.log.getWriter(Log.WriterKind.ERROR);
            writer.println();
            writer.println("CLASSFILE  " + ((Object) classSymbol.getQualifiedName()));
            writer.println("---" + flagNames((long) i10));
        }
        this.databuf.appendChar(i10);
        Symbol symbol = classSymbol.owner;
        if (symbol.kind == kind2) {
            this.databuf.appendChar(this.pool.put(new Symbol.ClassSymbol(0L, this.names.module_info, ((Symbol.ModuleSymbol) symbol).unnamedPackage)));
        } else {
            this.databuf.appendChar(this.pool.put(classSymbol));
        }
        this.databuf.appendChar(supertype.hasTag(TypeTag.CLASS) ? this.pool.put(supertype.tsym) : 0);
        this.databuf.appendChar(interfaces.length());
        for (List list = interfaces; list.nonEmpty(); list = list.tail) {
            this.databuf.appendChar(this.pool.put(((Type) list.head).tsym));
        }
        int i13 = 0;
        int i14 = 0;
        for (Symbol symbol2 : classSymbol.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            int i15 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol2.kind.ordinal()];
            if (i15 == 1) {
                i13++;
            } else if (i15 != 2) {
                if (i15 != 3) {
                    Assert.error();
                } else {
                    enterInner((Symbol.ClassSymbol) symbol2);
                }
            } else if ((symbol2.flags() & 137438953472L) == 0) {
                i14++;
            }
        }
        List<Symbol.ClassSymbol> list2 = classSymbol.trans_local;
        if (list2 != null) {
            Iterator<Symbol.ClassSymbol> it = list2.iterator();
            while (it.hasNext()) {
                enterInner(it.next());
            }
        }
        this.databuf.appendChar(i13);
        writeFields(classSymbol.members());
        this.databuf.appendChar(i14);
        writeMethods(classSymbol.members());
        int beginAttrs = beginAttrs();
        boolean z10 = (typeArguments.length() == 0 && supertype.allparams().length() == 0) ? false : true;
        for (List list3 = interfaces; !z10 && list3.nonEmpty(); list3 = list3.tail) {
            z10 = ((Type) list3.head).allparams().length() != 0;
        }
        if (z10) {
            int writeAttr = writeAttr(this.names.Signature);
            if (typeArguments.length() != 0) {
                this.signatureGen.assembleParamsSig(typeArguments);
            }
            this.signatureGen.assembleSig(supertype);
            while (interfaces.nonEmpty()) {
                this.signatureGen.assembleSig((Type) interfaces.head);
                interfaces = interfaces.tail;
            }
            this.databuf.appendChar(this.pool.put(this.signatureGen.toName()));
            this.signatureGen.reset();
            endAttr(writeAttr);
        } else {
            i11 = 0;
        }
        if (classSymbol.sourcefile != null && this.emitSourceFile) {
            int writeAttr2 = writeAttr(this.names.SourceFile);
            this.databuf.appendChar(classSymbol.pool.put(this.names.fromString(PathFileObject.getSimpleName(classSymbol.sourcefile))));
            endAttr(writeAttr2);
            i11++;
        }
        if (this.genCrt) {
            int writeAttr3 = writeAttr(this.names.SourceID);
            this.databuf.appendChar(classSymbol.pool.put(this.names.fromString(Long.toString(getLastModified(classSymbol.sourcefile)))));
            endAttr(writeAttr3);
            int writeAttr4 = writeAttr(this.names.CompilationID);
            this.databuf.appendChar(classSymbol.pool.put(this.names.fromString(Long.toString(System.currentTimeMillis()))));
            endAttr(writeAttr4);
            i11 += 2;
        }
        int writeFlagAttrs = i11 + writeFlagAttrs(classSymbol.flags()) + writeJavaAnnotations(classSymbol.getRawAttributes()) + writeTypeAnnotations(classSymbol.getRawTypeAttributes(), false) + writeEnclosingMethodAttribute(classSymbol);
        Kinds.Kind kind3 = classSymbol.owner.kind;
        Kinds.Kind kind4 = Kinds.Kind.MDL;
        if (kind3 == kind4) {
            writeFlagAttrs = writeFlagAttrs + writeModuleAttribute(classSymbol) + writeFlagAttrs(classSymbol.owner.flags() & (-131073));
        }
        int writeExtraClassAttributes = writeFlagAttrs + writeExtraClassAttributes(classSymbol);
        this.poolbuf.appendInt(-889275714);
        if (classSymbol.owner.kind == kind4) {
            this.poolbuf.appendChar(0);
            this.poolbuf.appendChar(53);
        } else {
            this.poolbuf.appendChar(this.target.minorVersion);
            this.poolbuf.appendChar(this.target.majorVersion);
        }
        writePool(classSymbol.pool);
        if (this.innerClasses != null) {
            writeInnerClasses();
            writeExtraClassAttributes++;
        }
        if (!this.bootstrapMethods.isEmpty()) {
            writeBootstrapMethods();
            writeExtraClassAttributes++;
        }
        endAttrs(beginAttrs, writeExtraClassAttributes);
        ByteBuffer byteBuffer = this.poolbuf;
        ByteBuffer byteBuffer2 = this.databuf;
        byteBuffer.appendBytes(byteBuffer2.elems, 0, byteBuffer2.length);
        ByteBuffer byteBuffer3 = this.poolbuf;
        outputStream.write(byteBuffer3.elems, 0, byteBuffer3.length);
        classSymbol.pool = null;
        this.pool = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeCode(Code code) {
        int i10;
        CRTable cRTable;
        this.databuf.appendChar(code.max_stack);
        this.databuf.appendChar(code.max_locals);
        this.databuf.appendInt(code.cp);
        this.databuf.appendBytes(code.code, 0, code.cp);
        this.databuf.appendChar(code.catchInfo.length());
        for (List list = code.catchInfo.toList(); list.nonEmpty(); list = list.tail) {
            int i11 = 0;
            while (true) {
                A a10 = list.head;
                if (i11 < ((char[]) a10).length) {
                    this.databuf.appendChar(((char[]) a10)[i11]);
                    i11++;
                }
            }
        }
        int beginAttrs = beginAttrs();
        if (code.lineInfo.nonEmpty()) {
            int writeAttr = writeAttr(this.names.LineNumberTable);
            this.databuf.appendChar(code.lineInfo.length());
            for (List reverse = code.lineInfo.reverse(); reverse.nonEmpty(); reverse = reverse.tail) {
                int i12 = 0;
                while (true) {
                    A a11 = reverse.head;
                    if (i12 < ((char[]) a11).length) {
                        this.databuf.appendChar(((char[]) a11)[i12]);
                        i12++;
                    }
                }
            }
            endAttr(writeAttr);
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.genCrt && (cRTable = code.crt) != null) {
            int writeAttr2 = writeAttr(this.names.CharacterRangeTable);
            endAttrs(beginAttrs(), cRTable.writeCRT(this.databuf, code.lineMap, this.log));
            endAttr(writeAttr2);
            i10++;
        }
        if (code.varDebugInfo && code.varBufferSize > 0) {
            int writeAttr3 = writeAttr(this.names.LocalVariableTable);
            this.databuf.appendChar(code.getLVTSize());
            int i13 = 0;
            for (int i14 = 0; i14 < code.varBufferSize; i14++) {
                Code.LocalVar localVar = code.varBuffer[i14];
                for (Code.LocalVar.Range range : localVar.aliveRanges) {
                    char c10 = range.start_pc;
                    Assert.check(c10 >= 0 && c10 <= code.cp);
                    this.databuf.appendChar(range.start_pc);
                    char c11 = range.length;
                    Assert.check(c11 > 0 && range.start_pc + c11 <= code.cp);
                    this.databuf.appendChar(range.length);
                    Symbol.VarSymbol varSymbol = localVar.sym;
                    this.databuf.appendChar(this.pool.put(varSymbol.name));
                    this.databuf.appendChar(this.pool.put(typeSig(varSymbol.erasure(this.types))));
                    this.databuf.appendChar(localVar.reg);
                    if (needsLocalVariableTypeEntry(localVar.sym.type)) {
                        i13++;
                    }
                }
            }
            endAttr(writeAttr3);
            int i15 = i10 + 1;
            if (i13 > 0) {
                int writeAttr4 = writeAttr(this.names.LocalVariableTypeTable);
                this.databuf.appendChar(i13);
                int i16 = 0;
                for (int i17 = 0; i17 < code.varBufferSize; i17++) {
                    Code.LocalVar localVar2 = code.varBuffer[i17];
                    Symbol.VarSymbol varSymbol2 = localVar2.sym;
                    if (needsLocalVariableTypeEntry(varSymbol2.type)) {
                        for (Code.LocalVar.Range range2 : localVar2.aliveRanges) {
                            this.databuf.appendChar(range2.start_pc);
                            this.databuf.appendChar(range2.length);
                            this.databuf.appendChar(this.pool.put(varSymbol2.name));
                            this.databuf.appendChar(this.pool.put(typeSig(varSymbol2.type)));
                            this.databuf.appendChar(localVar2.reg);
                            i16++;
                        }
                    }
                }
                Assert.check(i16 == i13);
                endAttr(writeAttr4);
                i10 += 2;
            } else {
                i10 = i15;
            }
        }
        if (code.stackMapBufferSize > 0) {
            if (this.debugstackmap) {
                System.out.println("Stack map for " + ((Object) code.meth));
            }
            int writeAttr5 = writeAttr(code.stackMap.getAttributeName(this.names));
            writeStackMap(code);
            endAttr(writeAttr5);
            i10++;
        }
        endAttrs(beginAttrs, i10 + writeTypeAnnotations(code.meth.getRawTypeAttributes(), true));
    }

    public void writeCompoundAttribute(Attribute.Compound compound) {
        this.databuf.appendChar(this.pool.put(typeSig(compound.type)));
        this.databuf.appendChar(compound.values.length());
        Iterator<Pair<Symbol.MethodSymbol, Attribute>> it = compound.values.iterator();
        while (it.hasNext()) {
            Pair<Symbol.MethodSymbol, Attribute> next = it.next();
            this.databuf.appendChar(this.pool.put(next.fst.name));
            next.snd.accept(this.awriter);
        }
    }

    public int writeEnclosingMethodAttribute(Symbol.ClassSymbol classSymbol) {
        return writeEnclosingMethodAttribute(this.names.EnclosingMethod, classSymbol);
    }

    public int writeExtraClassAttributes(Symbol.ClassSymbol classSymbol) {
        return 0;
    }

    public void writeField(Symbol.VarSymbol varSymbol) {
        int i10;
        this.databuf.appendChar(adjustFlags(varSymbol.flags()));
        if (this.dumpFieldModifiers) {
            PrintWriter writer = this.log.getWriter(Log.WriterKind.ERROR);
            writer.println("FIELD  " + ((Object) varSymbol.name));
            writer.println("---" + flagNames(varSymbol.flags()));
        }
        this.databuf.appendChar(this.pool.put(varSymbol.name));
        this.databuf.appendChar(this.pool.put(typeSig(varSymbol.erasure(this.types))));
        int beginAttrs = beginAttrs();
        if (varSymbol.getConstValue() != null) {
            int writeAttr = writeAttr(this.names.ConstantValue);
            this.databuf.appendChar(this.pool.put(varSymbol.getConstValue()));
            endAttr(writeAttr);
            i10 = 1;
        } else {
            i10 = 0;
        }
        endAttrs(beginAttrs, i10 + writeMemberAttrs(varSymbol));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeFields(Scope scope) {
        List nil = List.nil();
        for (Symbol symbol : scope.getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            if (symbol.kind == Kinds.Kind.VAR) {
                nil = nil.prepend((Symbol.VarSymbol) symbol);
            }
        }
        while (nil.nonEmpty()) {
            writeField((Symbol.VarSymbol) nil.head);
            nil = nil.tail;
        }
    }

    public int writeFlagAttrs(long j10) {
        if ((j10 & 131072) == 0) {
            return 0;
        }
        endAttr(writeAttr(this.names.Deprecated));
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeInnerClasses() {
        int writeAttr = writeAttr(this.names.InnerClasses);
        this.databuf.appendChar(this.innerClassesQueue.length());
        for (List list = this.innerClassesQueue.toList(); list.nonEmpty(); list = list.tail) {
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) list.head;
            classSymbol.markAbstractIfNeeded(this.types);
            char adjustFlags = (char) adjustFlags(classSymbol.flags_field);
            if ((adjustFlags & '\u0200') != 0) {
                adjustFlags = (char) (adjustFlags | '\u0400');
            }
            char c10 = (char) (adjustFlags & '\uf7ff');
            if (this.dumpInnerClassModifiers) {
                PrintWriter writer = this.log.getWriter(Log.WriterKind.ERROR);
                writer.println("INNERCLASS  " + ((Object) classSymbol.name));
                writer.println("---" + flagNames((long) c10));
            }
            this.databuf.appendChar(this.pool.get(classSymbol));
            int i10 = 0;
            this.databuf.appendChar((classSymbol.owner.kind != Kinds.Kind.TYP || classSymbol.name.isEmpty()) ? 0 : this.pool.get(classSymbol.owner));
            ByteBuffer byteBuffer = this.databuf;
            if (!classSymbol.name.isEmpty()) {
                i10 = this.pool.get(classSymbol.name);
            }
            byteBuffer.appendChar(i10);
            this.databuf.appendChar(c10);
        }
        endAttr(writeAttr);
    }

    public int writeJavaAnnotations(List<Attribute.Compound> list) {
        int i10 = 0;
        if (list.isEmpty()) {
            return 0;
        }
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        Iterator<Attribute.Compound> it = list.iterator();
        while (it.hasNext()) {
            Attribute.Compound next = it.next();
            int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[this.types.getRetention(next).ordinal()];
            if (i11 == 2) {
                listBuffer2.append(next);
            } else if (i11 == 3) {
                listBuffer.append(next);
            }
        }
        if (listBuffer.length() != 0) {
            int writeAttr = writeAttr(this.names.RuntimeVisibleAnnotations);
            this.databuf.appendChar(listBuffer.length());
            Iterator it2 = listBuffer.iterator();
            while (it2.hasNext()) {
                writeCompoundAttribute((Attribute.Compound) it2.next());
            }
            endAttr(writeAttr);
            i10 = 1;
        }
        if (listBuffer2.length() == 0) {
            return i10;
        }
        int writeAttr2 = writeAttr(this.names.RuntimeInvisibleAnnotations);
        this.databuf.appendChar(listBuffer2.length());
        Iterator it3 = listBuffer2.iterator();
        while (it3.hasNext()) {
            writeCompoundAttribute((Attribute.Compound) it3.next());
        }
        endAttr(writeAttr2);
        return i10 + 1;
    }

    public int writeMemberAttrs(Symbol symbol) {
        int writeFlagAttrs = writeFlagAttrs(symbol.flags());
        long flags = symbol.flags();
        if ((2147487744L & flags) != 4096 && (flags & TagBits.HasTypeVariable) == 0) {
            Types types = this.types;
            if (!types.isSameType(symbol.type, symbol.erasure(types)) || this.signatureGen.hasTypeVar(symbol.type.getThrownTypes())) {
                int writeAttr = writeAttr(this.names.Signature);
                this.databuf.appendChar(this.pool.put(typeSig(symbol.type)));
                endAttr(writeAttr);
                writeFlagAttrs++;
            }
        }
        return writeFlagAttrs + writeJavaAnnotations(symbol.getRawAttributes()) + writeTypeAnnotations(symbol.getRawTypeAttributes(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeMethod(Symbol.MethodSymbol methodSymbol) {
        int i10;
        this.databuf.appendChar(adjustFlags(methodSymbol.flags()));
        if (this.dumpMethodModifiers) {
            PrintWriter writer = this.log.getWriter(Log.WriterKind.ERROR);
            writer.println("METHOD  " + ((Object) methodSymbol.name));
            writer.println("---" + flagNames(methodSymbol.flags()));
        }
        this.databuf.appendChar(this.pool.put(methodSymbol.name));
        this.databuf.appendChar(this.pool.put(typeSig(methodSymbol.externalType(this.types))));
        int beginAttrs = beginAttrs();
        if (methodSymbol.code != null) {
            int writeAttr = writeAttr(this.names.Code);
            writeCode(methodSymbol.code);
            methodSymbol.code = null;
            endAttr(writeAttr);
            i10 = 1;
        } else {
            i10 = 0;
        }
        List thrownTypes = methodSymbol.erasure(this.types).getThrownTypes();
        if (thrownTypes.nonEmpty()) {
            int writeAttr2 = writeAttr(this.names.Exceptions);
            this.databuf.appendChar(thrownTypes.length());
            while (thrownTypes.nonEmpty()) {
                this.databuf.appendChar(this.pool.put(((Type) thrownTypes.head).tsym));
                thrownTypes = thrownTypes.tail;
            }
            endAttr(writeAttr2);
            i10++;
        }
        if (methodSymbol.defaultValue != null) {
            int writeAttr3 = writeAttr(this.names.AnnotationDefault);
            methodSymbol.defaultValue.accept(this.awriter);
            endAttr(writeAttr3);
            i10++;
        }
        if (this.options.isSet(Option.PARAMETERS) && !methodSymbol.isLambdaMethod()) {
            i10 += writeMethodParametersAttr(methodSymbol);
        }
        int writeMemberAttrs = i10 + writeMemberAttrs(methodSymbol);
        if (!methodSymbol.isLambdaMethod()) {
            writeMemberAttrs += writeParameterAttrs(methodSymbol);
        }
        endAttrs(beginAttrs, writeMemberAttrs);
    }

    public int writeMethodParametersAttr(Symbol.MethodSymbol methodSymbol) {
        int size = methodSymbol.externalType(this.types).asMethodType().argtypes.size();
        if (methodSymbol.params == null || size == 0) {
            return 0;
        }
        int writeAttr = writeAttr(this.names.MethodParameters);
        this.databuf.appendByte(size);
        Iterator<Symbol.VarSymbol> it = methodSymbol.extraParams.iterator();
        while (it.hasNext()) {
            Symbol.VarSymbol next = it.next();
            int flags = (36880 & ((int) next.flags())) | (((int) methodSymbol.flags()) & 4096);
            this.databuf.appendChar(this.pool.put(next.name));
            this.databuf.appendChar(flags);
        }
        Iterator<Symbol.VarSymbol> it2 = methodSymbol.params.iterator();
        while (it2.hasNext()) {
            Symbol.VarSymbol next2 = it2.next();
            int flags2 = (((int) next2.flags()) & 36880) | (((int) methodSymbol.flags()) & 4096);
            this.databuf.appendChar(this.pool.put(next2.name));
            this.databuf.appendChar(flags2);
        }
        Iterator<Symbol.VarSymbol> it3 = methodSymbol.capturedLocals.iterator();
        while (it3.hasNext()) {
            Symbol.VarSymbol next3 = it3.next();
            int flags3 = (((int) next3.flags()) & 36880) | (((int) methodSymbol.flags()) & 4096);
            this.databuf.appendChar(this.pool.put(next3.name));
            this.databuf.appendChar(flags3);
        }
        endAttr(writeAttr);
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeMethods(Scope scope) {
        List nil = List.nil();
        for (Symbol symbol : scope.getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            if (symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 137438953472L) == 0) {
                nil = nil.prepend((Symbol.MethodSymbol) symbol);
            }
        }
        while (nil.nonEmpty()) {
            writeMethod((Symbol.MethodSymbol) nil.head);
            nil = nil.tail;
        }
    }

    public int writeModuleAttribute(Symbol.ClassSymbol classSymbol) {
        Symbol.ModuleSymbol moduleSymbol = (Symbol.ModuleSymbol) classSymbol.owner;
        int writeAttr = writeAttr(this.names.Module);
        this.databuf.appendChar(this.pool.put(moduleSymbol));
        this.databuf.appendChar(Symbol.ModuleFlags.value(moduleSymbol.flags));
        ByteBuffer byteBuffer = this.databuf;
        Name name = moduleSymbol.version;
        byteBuffer.appendChar(name != null ? this.pool.put(name) : 0);
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Directive.RequiresDirective> it = moduleSymbol.requires.iterator();
        while (it.hasNext()) {
            Directive.RequiresDirective next = it.next();
            if (!next.flags.contains(Directive.RequiresFlag.EXTRA)) {
                listBuffer.add(next);
            }
        }
        this.databuf.appendChar(listBuffer.size());
        Iterator it2 = listBuffer.iterator();
        while (it2.hasNext()) {
            Directive.RequiresDirective requiresDirective = (Directive.RequiresDirective) it2.next();
            this.databuf.appendChar(this.pool.put(requiresDirective.module));
            this.databuf.appendChar(Directive.RequiresFlag.value(requiresDirective.flags));
            ByteBuffer byteBuffer2 = this.databuf;
            Name name2 = requiresDirective.module.version;
            byteBuffer2.appendChar(name2 != null ? this.pool.put(name2) : 0);
        }
        List<Directive.ExportsDirective> list = moduleSymbol.exports;
        this.databuf.appendChar(list.size());
        Iterator<Directive.ExportsDirective> it3 = list.iterator();
        while (it3.hasNext()) {
            Directive.ExportsDirective next2 = it3.next();
            this.databuf.appendChar(this.pool.put(next2.packge));
            this.databuf.appendChar(Directive.ExportsFlag.value(next2.flags));
            List<Symbol.ModuleSymbol> list2 = next2.modules;
            if (list2 == null) {
                this.databuf.appendChar(0);
            } else {
                this.databuf.appendChar(list2.size());
                Iterator<Symbol.ModuleSymbol> it4 = next2.modules.iterator();
                while (it4.hasNext()) {
                    this.databuf.appendChar(this.pool.put(it4.next()));
                }
            }
        }
        List<Directive.OpensDirective> list3 = moduleSymbol.opens;
        this.databuf.appendChar(list3.size());
        Iterator<Directive.OpensDirective> it5 = list3.iterator();
        while (it5.hasNext()) {
            Directive.OpensDirective next3 = it5.next();
            this.databuf.appendChar(this.pool.put(next3.packge));
            this.databuf.appendChar(Directive.OpensFlag.value(next3.flags));
            List<Symbol.ModuleSymbol> list4 = next3.modules;
            if (list4 == null) {
                this.databuf.appendChar(0);
            } else {
                this.databuf.appendChar(list4.size());
                Iterator<Symbol.ModuleSymbol> it6 = next3.modules.iterator();
                while (it6.hasNext()) {
                    this.databuf.appendChar(this.pool.put(it6.next()));
                }
            }
        }
        List<Directive.UsesDirective> list5 = moduleSymbol.uses;
        this.databuf.appendChar(list5.size());
        Iterator<Directive.UsesDirective> it7 = list5.iterator();
        while (it7.hasNext()) {
            this.databuf.appendChar(this.pool.put(it7.next().service));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Directive.ProvidesDirective> it8 = moduleSymbol.provides.iterator();
        while (it8.hasNext()) {
            Directive.ProvidesDirective next4 = it8.next();
            ((Set) linkedHashMap.computeIfAbsent(next4.service, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Set lambda$writeModuleAttribute$0;
                    lambda$writeModuleAttribute$0 = ClassWriter.lambda$writeModuleAttribute$0((Symbol.ClassSymbol) obj);
                    return lambda$writeModuleAttribute$0;
                }
            })).addAll(next4.impls);
        }
        this.databuf.appendChar(linkedHashMap.size());
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ClassWriter.this.lambda$writeModuleAttribute$2((Symbol.ClassSymbol) obj, (Set) obj2);
            }
        });
        endAttr(writeAttr);
        return 1;
    }

    public int writeParameterAttrs(Symbol.MethodSymbol methodSymbol) {
        boolean z10;
        boolean z11;
        List<Symbol.VarSymbol> list = methodSymbol.params;
        int i10 = 1;
        if (list != null) {
            Iterator<Symbol.VarSymbol> it = list.iterator();
            z10 = false;
            z11 = false;
            while (it.hasNext()) {
                Iterator<Attribute.Compound> it2 = it.next().getRawAttributes().iterator();
                while (it2.hasNext()) {
                    int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[this.types.getRetention(it2.next()).ordinal()];
                    if (i11 == 2) {
                        z11 = true;
                    } else if (i11 == 3) {
                        z10 = true;
                    }
                }
            }
        } else {
            z10 = false;
            z11 = false;
        }
        if (z10) {
            int writeAttr = writeAttr(this.names.RuntimeVisibleParameterAnnotations);
            writeParamAnnotations(methodSymbol, Attribute.RetentionPolicy.RUNTIME);
            endAttr(writeAttr);
        } else {
            i10 = 0;
        }
        if (!z11) {
            return i10;
        }
        int writeAttr2 = writeAttr(this.names.RuntimeInvisibleParameterAnnotations);
        writeParamAnnotations(methodSymbol, Attribute.RetentionPolicy.CLASS);
        endAttr(writeAttr2);
        return i10 + 1;
    }

    public void writePool(Pool pool) throws PoolOverflow, StringOverflow {
        ByteBuffer byteBuffer = this.poolbuf;
        int i10 = byteBuffer.length;
        byteBuffer.appendChar(0);
        int i11 = 1;
        while (true) {
            int i12 = pool.pp;
            if (i11 >= i12) {
                if (i12 > 65535) {
                    throw new PoolOverflow();
                }
                putChar(this.poolbuf, i10, i12);
                return;
            }
            Object obj = pool.pool[i11];
            Assert.checkNonNull(obj);
            if ((obj instanceof Pool.Method) || (obj instanceof Pool.Variable)) {
                obj = ((Symbol.DelegatedSymbol) obj).getUnderlyingSymbol();
            }
            if (obj instanceof Symbol.MethodSymbol) {
                Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) obj;
                if (methodSymbol.isDynamic()) {
                    Symbol.DynamicMethodSymbol dynamicMethodSymbol = (Symbol.DynamicMethodSymbol) methodSymbol;
                    Pool.MethodHandle methodHandle = new Pool.MethodHandle(dynamicMethodSymbol.bsmKind, dynamicMethodSymbol.bsm, this.types);
                    Pool.DynamicMethod.BootstrapMethodsKey bootstrapMethodsKey = new Pool.DynamicMethod.BootstrapMethodsKey(dynamicMethodSymbol, this.types);
                    Pool.DynamicMethod.BootstrapMethodsValue bootstrapMethodsValue = this.bootstrapMethods.get(bootstrapMethodsKey);
                    if (bootstrapMethodsValue == null) {
                        Pool.DynamicMethod.BootstrapMethodsValue bootstrapMethodsValue2 = new Pool.DynamicMethod.BootstrapMethodsValue(methodHandle, this.bootstrapMethods.size());
                        this.bootstrapMethods.put(bootstrapMethodsKey, bootstrapMethodsValue2);
                        bootstrapMethodsValue = bootstrapMethodsValue2;
                    }
                    pool.put(this.names.BootstrapMethods);
                    pool.put(methodHandle);
                    for (Object obj2 : dynamicMethodSymbol.staticArgs) {
                        pool.put(obj2);
                    }
                    this.poolbuf.appendByte(18);
                    this.poolbuf.appendChar(bootstrapMethodsValue.index);
                    this.poolbuf.appendChar(pool.put(nameType(dynamicMethodSymbol)));
                } else {
                    this.poolbuf.appendByte((methodSymbol.owner.flags() & 512) != 0 ? 11 : 10);
                    this.poolbuf.appendChar(pool.put(methodSymbol.owner));
                    this.poolbuf.appendChar(pool.put(nameType(methodSymbol)));
                }
            } else if (obj instanceof Symbol.VarSymbol) {
                Symbol symbol = (Symbol.VarSymbol) obj;
                this.poolbuf.appendByte(9);
                this.poolbuf.appendChar(pool.put(symbol.owner));
                this.poolbuf.appendChar(pool.put(nameType(symbol)));
            } else if (obj instanceof Name) {
                this.poolbuf.appendByte(1);
                byte[] utf = ((Name) obj).toUtf();
                this.poolbuf.appendChar(utf.length);
                this.poolbuf.appendBytes(utf, 0, utf.length);
                if (utf.length > 65535) {
                    throw new StringOverflow(obj.toString());
                }
            } else if (obj instanceof Symbol.ClassSymbol) {
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) obj;
                Symbol symbol2 = classSymbol.owner;
                if (symbol2.kind == Kinds.Kind.TYP) {
                    pool.put(symbol2);
                }
                this.poolbuf.appendByte(7);
                if (classSymbol.type.hasTag(TypeTag.ARRAY)) {
                    this.poolbuf.appendChar(pool.put(typeSig(classSymbol.type)));
                } else {
                    this.poolbuf.appendChar(pool.put(this.names.fromUtf(ClassFile.externalize(classSymbol.flatname))));
                    enterInner(classSymbol);
                }
            } else if (obj instanceof ClassFile.NameAndType) {
                ClassFile.NameAndType nameAndType = (ClassFile.NameAndType) obj;
                this.poolbuf.appendByte(12);
                this.poolbuf.appendChar(pool.put(nameAndType.name));
                this.poolbuf.appendChar(pool.put(typeSig(nameAndType.uniqueType.type)));
            } else if (obj instanceof Integer) {
                this.poolbuf.appendByte(3);
                this.poolbuf.appendInt(((Integer) obj).intValue());
            } else {
                if (obj instanceof Long) {
                    this.poolbuf.appendByte(5);
                    this.poolbuf.appendLong(((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    this.poolbuf.appendByte(4);
                    this.poolbuf.appendFloat(((Float) obj).floatValue());
                } else if (obj instanceof Double) {
                    this.poolbuf.appendByte(6);
                    this.poolbuf.appendDouble(((Double) obj).doubleValue());
                } else if (obj instanceof String) {
                    this.poolbuf.appendByte(8);
                    this.poolbuf.appendChar(pool.put(this.names.fromString((String) obj)));
                } else if (obj instanceof Types.UniqueType) {
                    Type type = ((Types.UniqueType) obj).type;
                    if (type.hasTag(TypeTag.METHOD)) {
                        this.poolbuf.appendByte(16);
                        this.poolbuf.appendChar(pool.put(typeSig((Type.MethodType) type)));
                    } else {
                        Assert.check(type.hasTag(TypeTag.ARRAY));
                        this.poolbuf.appendByte(7);
                        this.poolbuf.appendChar(pool.put(xClassName(type)));
                    }
                } else if (obj instanceof Pool.MethodHandle) {
                    Pool.MethodHandle methodHandle2 = (Pool.MethodHandle) obj;
                    this.poolbuf.appendByte(15);
                    this.poolbuf.appendByte(methodHandle2.refKind);
                    this.poolbuf.appendChar(pool.put(methodHandle2.refSym));
                } else if (obj instanceof Symbol.ModuleSymbol) {
                    this.poolbuf.appendByte(19);
                    this.poolbuf.appendChar(pool.put(((Symbol.ModuleSymbol) obj).name));
                } else if (obj instanceof Symbol.PackageSymbol) {
                    this.poolbuf.appendByte(20);
                    this.poolbuf.appendChar(pool.put(this.names.fromUtf(ClassFile.externalize(((Symbol.PackageSymbol) obj).fullname))));
                } else {
                    Assert.error("writePool " + obj);
                }
                i11++;
            }
            i11++;
        }
    }

    public void writePosition(TypeAnnotationPosition typeAnnotationPosition) {
        this.databuf.appendByte(typeAnnotationPosition.type.targetTypeValue());
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TargetType[typeAnnotationPosition.type.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                this.databuf.appendChar(typeAnnotationPosition.offset);
                break;
            case 5:
            case 6:
                this.databuf.appendChar(typeAnnotationPosition.lvarOffset.length);
                int i10 = 0;
                while (true) {
                    int[] iArr = typeAnnotationPosition.lvarOffset;
                    if (i10 >= iArr.length) {
                        break;
                    } else {
                        this.databuf.appendChar(iArr[i10]);
                        this.databuf.appendChar(typeAnnotationPosition.lvarLength[i10]);
                        this.databuf.appendChar(typeAnnotationPosition.lvarIndex[i10]);
                        i10++;
                    }
                }
            case 7:
                this.databuf.appendChar(typeAnnotationPosition.getExceptionIndex());
                break;
            case 8:
            case 21:
            case 22:
                break;
            case 9:
            case 10:
                this.databuf.appendByte(typeAnnotationPosition.parameter_index);
                break;
            case 11:
            case 12:
                this.databuf.appendByte(typeAnnotationPosition.parameter_index);
                this.databuf.appendByte(typeAnnotationPosition.bound_index);
                break;
            case 13:
                this.databuf.appendChar(typeAnnotationPosition.type_index);
                break;
            case 14:
                this.databuf.appendChar(typeAnnotationPosition.type_index);
                break;
            case 15:
                this.databuf.appendByte(typeAnnotationPosition.parameter_index);
                break;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                this.databuf.appendChar(typeAnnotationPosition.offset);
                this.databuf.appendByte(typeAnnotationPosition.type_index);
                break;
            case 23:
                throw new AssertionError((Object) "jvm.ClassWriter: UNKNOWN target type should never occur!");
            default:
                throw new AssertionError((Object) ("jvm.ClassWriter: Unknown target type for position: " + ((Object) typeAnnotationPosition)));
        }
        this.databuf.appendByte(typeAnnotationPosition.location.size());
        Iterator<Integer> it = TypeAnnotationPosition.getBinaryFromTypePath(typeAnnotationPosition.location).iterator();
        while (it.hasNext()) {
            this.databuf.appendByte((byte) it.next().intValue());
        }
    }

    public void writeStackMap(Code code) {
        int i10 = code.stackMapBufferSize;
        if (this.debugstackmap) {
            System.out.println(" nframes = " + i10);
        }
        this.databuf.appendChar(i10);
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat[code.stackMap.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                throw new AssertionError((Object) "Unexpected stackmap format value");
            }
            Assert.checkNull(code.stackMapBuffer);
            for (int i12 = 0; i12 < i10; i12++) {
                if (this.debugstackmap) {
                    System.out.print(GlideException.a.f59088e + i12 + s.f32937c);
                }
                code.stackMapTableBuffer[i12].write(this);
                if (this.debugstackmap) {
                    System.out.println();
                }
            }
            return;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            if (this.debugstackmap) {
                System.out.print(GlideException.a.f59088e + i13 + s.f32937c);
            }
            Code.StackMapFrame stackMapFrame = code.stackMapBuffer[i13];
            if (this.debugstackmap) {
                System.out.print(" pc=" + stackMapFrame.f103248pc);
            }
            this.databuf.appendChar(stackMapFrame.f103248pc);
            int i14 = 0;
            int i15 = 0;
            while (true) {
                Type[] typeArr = stackMapFrame.locals;
                if (i14 >= typeArr.length) {
                    break;
                }
                i15++;
                i14 += Code.width(typeArr[i14]);
            }
            if (this.debugstackmap) {
                System.out.print(" nlocals=" + i15);
            }
            this.databuf.appendChar(i15);
            for (int i16 = 0; i16 < stackMapFrame.locals.length; i16 += Code.width(stackMapFrame.locals[i16])) {
                if (this.debugstackmap) {
                    System.out.print(" local[" + i16 + "]=");
                }
                writeStackMapType(stackMapFrame.locals[i16]);
            }
            int i17 = 0;
            int i18 = 0;
            while (true) {
                Type[] typeArr2 = stackMapFrame.stack;
                if (i17 >= typeArr2.length) {
                    break;
                }
                i18++;
                i17 += Code.width(typeArr2[i17]);
            }
            if (this.debugstackmap) {
                System.out.print(" nstack=" + i18);
            }
            this.databuf.appendChar(i18);
            for (int i19 = 0; i19 < stackMapFrame.stack.length; i19 += Code.width(stackMapFrame.stack[i19])) {
                if (this.debugstackmap) {
                    System.out.print(" stack[" + i19 + "]=");
                }
                writeStackMapType(stackMapFrame.stack[i19]);
            }
            if (this.debugstackmap) {
                System.out.println();
            }
        }
    }

    public void writeStackMapType(Type type) {
        if (type == null) {
            if (this.debugstackmap) {
                System.out.print("empty");
            }
            this.databuf.appendByte(0);
            return;
        }
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
            case 1:
                if (this.debugstackmap) {
                    System.out.print("uninit_this");
                }
                this.databuf.appendByte(6);
                return;
            case 2:
                UninitializedType uninitializedType = (UninitializedType) type;
                this.databuf.appendByte(8);
                if (this.debugstackmap) {
                    System.out.print("uninit_object@" + uninitializedType.offset);
                }
                this.databuf.appendChar(uninitializedType.offset);
                return;
            case 3:
            case 4:
            case 5:
            case 6:
            case 10:
                if (this.debugstackmap) {
                    System.out.print("int");
                }
                this.databuf.appendByte(1);
                return;
            case 7:
                if (this.debugstackmap) {
                    System.out.print("long");
                }
                this.databuf.appendByte(4);
                return;
            case 8:
                if (this.debugstackmap) {
                    System.out.print(TypedValues.Custom.S_FLOAT);
                }
                this.databuf.appendByte(2);
                return;
            case 9:
                if (this.debugstackmap) {
                    System.out.print("double");
                }
                this.databuf.appendByte(3);
                return;
            case 11:
            case 13:
                if (this.debugstackmap) {
                    System.out.print("object(" + ((Object) type) + ")");
                }
                this.databuf.appendByte(7);
                this.databuf.appendChar(this.pool.put(type));
                return;
            case 12:
                if (this.debugstackmap) {
                    System.out.print("null");
                }
                this.databuf.appendByte(5);
                return;
            case 14:
                if (this.debugstackmap) {
                    System.out.print("object(" + ((Object) this.types.erasure(type).tsym) + ")");
                }
                this.databuf.appendByte(7);
                this.databuf.appendChar(this.pool.put(this.types.erasure(type).tsym));
                return;
            default:
                throw new AssertionError();
        }
    }

    public void writeTypeAnnotation(Attribute.TypeCompound typeCompound) {
        writePosition(typeCompound.position);
        writeCompoundAttribute(typeCompound);
    }

    public int writeTypeAnnotations(List<Attribute.TypeCompound> list, boolean z10) {
        int i10 = 0;
        if (list.isEmpty()) {
            return 0;
        }
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        Iterator<Attribute.TypeCompound> it = list.iterator();
        while (it.hasNext()) {
            Attribute.TypeCompound next = it.next();
            if (next.hasUnknownPosition() && !next.tryFixPosition()) {
                this.log.getWriter(Log.WriterKind.ERROR).println("ClassWriter: Position UNKNOWN in type annotation: " + ((Object) next));
            } else if (next.position.type.isLocal() == z10 && next.position.emitToClassfile()) {
                int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy[this.types.getRetention(next).ordinal()];
                if (i11 == 2) {
                    listBuffer2.append(next);
                } else if (i11 == 3) {
                    listBuffer.append(next);
                }
            }
        }
        if (listBuffer.length() != 0) {
            int writeAttr = writeAttr(this.names.RuntimeVisibleTypeAnnotations);
            this.databuf.appendChar(listBuffer.length());
            Iterator it2 = listBuffer.iterator();
            while (it2.hasNext()) {
                writeTypeAnnotation((Attribute.TypeCompound) it2.next());
            }
            endAttr(writeAttr);
            i10 = 1;
        }
        if (listBuffer2.length() == 0) {
            return i10;
        }
        int writeAttr2 = writeAttr(this.names.RuntimeInvisibleTypeAnnotations);
        this.databuf.appendChar(listBuffer2.length());
        Iterator it3 = listBuffer2.iterator();
        while (it3.hasNext()) {
            writeTypeAnnotation((Attribute.TypeCompound) it3.next());
        }
        endAttr(writeAttr2);
        return i10 + 1;
    }

    public Name xClassName(Type type) {
        if (type.hasTag(TypeTag.CLASS)) {
            return this.names.fromUtf(ClassFile.externalize(type.tsym.flatName()));
        }
        if (type.hasTag(TypeTag.ARRAY)) {
            return typeSig(this.types.erasure(type));
        }
        throw new AssertionError((Object) ("xClassName expects class or array type, got " + ((Object) type)));
    }

    public int writeEnclosingMethodAttribute(Name name, Symbol.ClassSymbol classSymbol) {
        Kinds.Kind kind = classSymbol.owner.kind;
        Kinds.Kind kind2 = Kinds.Kind.MTH;
        if (kind != kind2 && classSymbol.name != this.names.empty) {
            return 0;
        }
        int writeAttr = writeAttr(name);
        Symbol.ClassSymbol enclClass = classSymbol.owner.enclClass();
        Symbol symbol = classSymbol.owner;
        Symbol.MethodSymbol methodSymbol = (symbol.type == null || symbol.kind != kind2) ? null : (Symbol.MethodSymbol) symbol;
        this.databuf.appendChar(this.pool.put(enclClass));
        this.databuf.appendChar(methodSymbol != null ? this.pool.put(nameType(classSymbol.owner)) : 0);
        endAttr(writeAttr);
        return 1;
    }

    private void writeParamAnnotations(Symbol.MethodSymbol methodSymbol, Attribute.RetentionPolicy retentionPolicy) {
        this.databuf.appendByte(methodSymbol.params.length());
        writeParamAnnotations(methodSymbol.params, retentionPolicy);
    }
}
