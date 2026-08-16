package org.openjdk.tools.javac.jvm;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C14021s;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.model.JavacElements;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class JNIWriter {
    private boolean checkAll;
    private Context context;
    private final JavaFileManager fileManager;
    private final Log log;
    public boolean multiModuleMode;
    Symtab syms;
    Types types;
    private boolean verbose;
    protected static final Context.Key<JNIWriter> jniWriterKey = new Context.Key<>();
    private static final boolean isWindows = System.getProperty("os.name").startsWith("Windows");

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType;
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[EncoderType.values().length];
            $SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType = iArr;
            try {
                iArr[EncoderType.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType[EncoderType.JNI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType[EncoderType.SIGNATURE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType[EncoderType.FIELDSTUB.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr2;
            try {
                iArr2[TypeKind.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.CHAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.ARRAY.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DECLARED.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.VOID.ordinal()] = 11;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public enum EncoderType {
        CLASS,
        FIELDSTUB,
        FIELD,
        JNI,
        SIGNATURE
    }

    public static class TypeSignature {
        private static final String SIG_ARRAY = "[";
        private static final String SIG_BOOLEAN = "Z";
        private static final String SIG_BYTE = "B";
        private static final String SIG_CHAR = "C";
        private static final String SIG_CLASS = "L";
        private static final String SIG_DOUBLE = "D";
        private static final String SIG_FLOAT = "F";
        private static final String SIG_INT = "I";
        private static final String SIG_LONG = "J";
        private static final String SIG_SHORT = "S";
        private static final String SIG_VOID = "V";
        JavacElements elems;
        Types types;

        public static class JvmTypeVisitor extends SimpleTypeVisitor<Type, StringBuilder> {
            private String getJvmPrimitiveSignature(Type type) {
                int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[type.getKind().ordinal()];
                if (i10 == 11) {
                    return "V";
                }
                switch (i10) {
                    case 1:
                        return "Z";
                    case 2:
                        return "B";
                    case 3:
                        return "S";
                    case 4:
                        return "I";
                    case 5:
                        return "J";
                    case 6:
                        return "C";
                    case 7:
                        return "F";
                    case 8:
                        return "D";
                    default:
                        Assert.error("unknown type: should not happen");
                        return null;
                }
            }

            private void setDeclaredType(Type type, StringBuilder sb2) {
                String replace = type.tsym.getQualifiedName().toString().replace('.', '/');
                sb2.append(TypeSignature.SIG_CLASS);
                sb2.append(replace);
                sb2.append(";");
            }

            @Override
            public Type visitArrayType(Type.ArrayType arrayType, StringBuilder sb2) {
                sb2.append(TypeSignature.SIG_ARRAY);
                return (Type) arrayType.getComponentType().accept((Type.Visitor<R, JvmTypeVisitor>) this, (JvmTypeVisitor) sb2);
            }

            @Override
            public Type visitClassType(Type.ClassType classType, StringBuilder sb2) {
                setDeclaredType(classType, sb2);
                return null;
            }

            @Override
            public Type visitType(Type type, StringBuilder sb2) {
                if (type.isPrimitiveOrVoid()) {
                    sb2.append(getJvmPrimitiveSignature(type));
                    return null;
                }
                return (Type) type.accept((Type.Visitor<R, JvmTypeVisitor>) this, (JvmTypeVisitor) sb2);
            }
        }

        public static class SignatureException extends Exception {
            private static final long serialVersionUID = 1;

            public SignatureException(String str) {
                super(str);
            }
        }

        public TypeSignature(Types types) {
            this.types = types;
        }

        public StringBuilder getJvmSignature(Type type) {
            Type erasure = this.types.erasure(type);
            StringBuilder sb2 = new StringBuilder();
            new JvmTypeVisitor().visitType(erasure, sb2);
            return sb2;
        }

        public StringBuilder getParameterSignature(Type type) throws SignatureException {
            StringBuilder sb2 = new StringBuilder();
            Iterator<Type> it = type.getParameterTypes().iterator();
            while (it.hasNext()) {
                sb2.append((CharSequence) getJvmSignature(it.next()));
            }
            return sb2;
        }

        public StringBuilder getReturnSignature(Type type) throws SignatureException {
            return getJvmSignature(type.getReturnType());
        }

        public StringBuilder getSignature(Type type) throws SignatureException {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("(");
            sb2.append((CharSequence) getParameterSignature(type));
            sb2.append(")");
            sb2.append((CharSequence) getReturnSignature(type));
            return sb2;
        }
    }

    private JNIWriter(Context context) {
        context.put((Context.Key<Context.Key<JNIWriter>>) jniWriterKey, (Context.Key<JNIWriter>) this);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.log = Log.instance(context);
        Options instance = Options.instance(context);
        this.verbose = instance.isSet(Option.VERBOSE);
        this.checkAll = instance.isSet("javah:full");
        this.context = context;
    }

    public static String encode(CharSequence charSequence, EncoderType encoderType) {
        StringBuilder sb2 = new StringBuilder(100);
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            if (isalnum(charAt)) {
                sb2.append(charAt);
            } else {
                int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$jvm$JNIWriter$EncoderType[encoderType.ordinal()];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            sb2.append(isprint(charAt) ? Character.valueOf(charAt) : encodeChar(charAt));
                        } else if (i11 != 4) {
                            sb2.append(encodeChar(charAt));
                        } else {
                            sb2.append(charAt == '_' ? Character.valueOf(charAt) : encodeChar(charAt));
                        }
                    } else if (charAt == '.' || charAt == '/') {
                        sb2.append(ConstantDescs.DEFAULT_NAME);
                    } else if (charAt == ';') {
                        sb2.append("_2");
                    } else if (charAt == '[') {
                        sb2.append("_3");
                    } else if (charAt != '_') {
                        sb2.append(encodeChar(charAt));
                    } else {
                        sb2.append("_1");
                    }
                } else if (charAt == '$') {
                    sb2.append("__");
                } else if (charAt == '.' || charAt == '_') {
                    sb2.append(ConstantDescs.DEFAULT_NAME);
                } else {
                    sb2.append(encodeChar(charAt));
                }
            }
        }
        return sb2.toString();
    }

    public static String encodeChar(char c10) {
        String hexString = Integer.toHexString(c10);
        int length = hexString.length();
        int i10 = 5 - length;
        char[] cArr = new char[6];
        int i11 = 0;
        cArr[0] = '_';
        for (int i12 = 1; i12 <= i10; i12++) {
            cArr[i12] = '0';
        }
        int i13 = 6 - length;
        while (i13 < 6) {
            cArr[i13] = hexString.charAt(i11);
            i13++;
            i11++;
        }
        return new String(cArr);
    }

    private static boolean hasFlag(Symbol symbol, int i10) {
        return (((long) i10) & symbol.flags()) != 0;
    }

    public static JNIWriter instance(Context context) {
        JNIWriter jNIWriter = (JNIWriter) context.get(jniWriterKey);
        return jNIWriter == null ? new JNIWriter(context) : jNIWriter;
    }

    public static boolean isFinal(Symbol symbol) {
        return hasFlag(symbol, 16);
    }

    public static boolean isNative(Symbol symbol) {
        return hasFlag(symbol, 256);
    }

    public static boolean isStatic(Symbol symbol) {
        return hasFlag(symbol, 8);
    }

    public static boolean isSynthetic(Symbol symbol) {
        return hasFlag(symbol, 4096);
    }

    private static boolean isalnum(char c10) {
        return c10 <= '\u007f' && ((c10 >= 'A' && c10 <= 'Z') || ((c10 >= 'a' && c10 <= 'z') || (c10 >= '0' && c10 <= '9')));
    }

    private static boolean isprint(char c10) {
        return c10 >= ' ' && c10 <= '~';
    }

    private void lazyInit() {
        if (this.types == null) {
            this.types = Types.instance(this.context);
        }
        if (this.syms == null) {
            this.syms = Symtab.instance(this.context);
        }
    }

    public static void printStaticDefines(PrintWriter printWriter, Pair<Symbol.ClassSymbol, Symbol.VarSymbol> pair) {
        String str;
        Symbol.ClassSymbol classSymbol = pair.fst;
        Symbol.VarSymbol varSymbol = pair.snd;
        Object constantValue = varSymbol.getConstantValue();
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[varSymbol.asType().getKind().ordinal()]) {
            case 1:
                if (!((Boolean) constantValue).booleanValue()) {
                    str = "0L";
                    break;
                } else {
                    str = "1L";
                    break;
                }
            case 2:
            case 3:
            case 4:
                str = constantValue.toString() + "L";
                break;
            case 5:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(constantValue.toString());
                sb2.append(isWindows ? "i64" : "LL");
                str = sb2.toString();
                break;
            case 6:
                str = String.valueOf(((Character) constantValue).charValue() & C14021s.f95775c) + "L";
                break;
            case 7:
                float floatValue = ((Float) constantValue).floatValue();
                if (!Float.isInfinite(floatValue)) {
                    str = constantValue.toString() + "f";
                    break;
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(floatValue < 0.0f ? "-" : "");
                    sb3.append("Inff");
                    str = sb3.toString();
                    break;
                }
            case 8:
                double doubleValue = ((Double) constantValue).doubleValue();
                if (!Double.isInfinite(doubleValue)) {
                    str = constantValue.toString();
                    break;
                } else {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(doubleValue < 0.0d ? "-" : "");
                    sb4.append("InfD");
                    str = sb4.toString();
                    break;
                }
            default:
                str = null;
                break;
        }
        if (str != null) {
            printWriter.print("#undef ");
            String encode = encode(classSymbol.getQualifiedName(), EncoderType.CLASS);
            String encode2 = encode(varSymbol.getSimpleName(), EncoderType.FIELDSTUB);
            printWriter.println(encode + ConstantDescs.DEFAULT_NAME + encode2);
            printWriter.print("#define " + encode + ConstantDescs.DEFAULT_NAME);
            printWriter.println(encode2 + " " + str);
        }
    }

    public void cppGuardBegin(PrintWriter printWriter) {
        printWriter.println("#ifdef __cplusplus");
        printWriter.println("extern \"C\" {");
        printWriter.println("#endif");
    }

    public void cppGuardEnd(PrintWriter printWriter) {
        printWriter.println("#ifdef __cplusplus");
        printWriter.println(VectorFormat.DEFAULT_SUFFIX);
        printWriter.println("#endif");
    }

    public String encodeMethod(Symbol symbol, Symbol.ClassSymbol classSymbol, boolean z10) throws TypeSignature.SignatureException {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append("Java_");
        String name = classSymbol.flatname.toString();
        EncoderType encoderType = EncoderType.JNI;
        sb2.append(encode(name, encoderType));
        sb2.append('_');
        sb2.append(encode(symbol.getSimpleName(), encoderType));
        if (z10) {
            StringBuilder parameterSignature = new TypeSignature(this.types).getParameterSignature(symbol.type);
            sb2.append("__");
            sb2.append(encode(parameterSignature, encoderType));
        }
        return sb2.toString();
    }

    public void fileTop(PrintWriter printWriter) {
        printWriter.println("/* DO NOT EDIT THIS FILE - it is machine generated */");
    }

    public void guardBegin(PrintWriter printWriter, String str) {
        printWriter.println("/* Header for class " + str + " */");
        printWriter.println();
        printWriter.println("#ifndef _Included_" + str);
        printWriter.println("#define _Included_" + str);
    }

    public void guardEnd(PrintWriter printWriter) {
        printWriter.println("#endif");
    }

    public void includes(PrintWriter printWriter) {
        printWriter.println("#include <jni.h>");
    }

    public final String jniType(Type type) {
        int[] iArr = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind;
        switch (iArr[type.getKind().ordinal()]) {
            case 1:
                return "jboolean";
            case 2:
                return "jbyte";
            case 3:
                return "jshort";
            case 4:
                return "jint";
            case 5:
                return "jlong";
            case 6:
                return "jchar";
            case 7:
                return "jfloat";
            case 8:
                return "jdouble";
            case 9:
                Type componentType = ((Type.ArrayType) type).getComponentType();
                switch (iArr[componentType.getKind().ordinal()]) {
                    case 1:
                        return "jbooleanArray";
                    case 2:
                        return "jbyteArray";
                    case 3:
                        return "jshortArray";
                    case 4:
                        return "jintArray";
                    case 5:
                        return "jlongArray";
                    case 6:
                        return "jcharArray";
                    case 7:
                        return "jfloatArray";
                    case 8:
                        return "jdoubleArray";
                    case 9:
                    case 10:
                        return "jobjectArray";
                    default:
                        throw new Error(componentType.toString());
                }
            case 10:
                Type type2 = type.tsym.type;
                Symtab symtab = this.syms;
                return type2 == symtab.stringType ? "jstring" : this.types.isAssignable(type, symtab.throwableType) ? "jthrowable" : this.types.isAssignable(type, this.syms.classType) ? "jclass" : "jobject";
            case 11:
                return "void";
            default:
                Assert.check(false, "jni unknown type");
                return null;
        }
    }

    public boolean needsHeader(Symbol.ClassSymbol classSymbol) {
        lazyInit();
        if (classSymbol.isLocal() || isSynthetic(classSymbol)) {
            return false;
        }
        if (this.checkAll) {
            return needsHeader(classSymbol.outermostClass(), true);
        }
        return needsHeader(classSymbol, false);
    }

    public FileObject write(Symbol.ClassSymbol classSymbol) throws IOException {
        JavaFileManager.Location location;
        String name = classSymbol.flatName().toString();
        if (this.multiModuleMode) {
            Symbol symbol = classSymbol.owner;
            location = this.fileManager.getLocationForModule(StandardLocation.NATIVE_HEADER_OUTPUT, (symbol.kind == Kinds.Kind.MDL ? (Symbol.ModuleSymbol) symbol : classSymbol.packge().modle).name.toString());
        } else {
            location = StandardLocation.NATIVE_HEADER_OUTPUT;
        }
        FileObject fileForOutput = this.fileManager.getFileForOutput(location, "", name.replaceAll("[.$]", ConstantDescs.DEFAULT_NAME) + ".h", null);
        PrintWriter printWriter = new PrintWriter(fileForOutput.openWriter());
        try {
            write(printWriter, classSymbol);
            if (this.verbose) {
                this.log.printVerbose("wrote.file", fileForOutput);
            }
            printWriter.close();
            return fileForOutput;
        } catch (Throwable th2) {
            printWriter.close();
            fileForOutput.delete();
            throw th2;
        }
    }

    public void writeMethods(PrintWriter printWriter, Symbol.ClassSymbol classSymbol, String str) throws IOException, TypeSignature.SignatureException {
        List<Symbol> enclosedElements = classSymbol.getEnclosedElements();
        for (Symbol symbol : enclosedElements) {
            if (isNative(symbol)) {
                TypeSignature typeSignature = new TypeSignature(this.types);
                Name simpleName = symbol.getSimpleName();
                boolean z10 = false;
                for (Symbol symbol2 : enclosedElements) {
                    if (symbol2 != symbol && simpleName.equals(symbol2.getSimpleName()) && isNative(symbol2)) {
                        z10 = true;
                    }
                }
                printWriter.println("/*");
                printWriter.println(" * Class:     " + str);
                printWriter.println(" * Method:    " + encode(simpleName, EncoderType.FIELDSTUB));
                printWriter.println(" * Signature: " + ((Object) typeSignature.getSignature(symbol.type)));
                printWriter.println(" */");
                printWriter.println("JNIEXPORT " + jniType(this.types.erasure(symbol.type.getReturnType())) + " JNICALL " + encodeMethod(symbol, classSymbol, z10));
                printWriter.print("  (JNIEnv *, ");
                printWriter.print(symbol.isStatic() ? "jclass" : "jobject");
                Iterator<Type> it = this.types.erasure(symbol.type.getParameterTypes()).iterator();
                while (it.hasNext()) {
                    Type next = it.next();
                    printWriter.print(", ");
                    printWriter.print(jniType(next));
                }
                printWriter.println(");");
                printWriter.println();
            }
        }
    }

    public void writeStatics(PrintWriter printWriter, Symbol.ClassSymbol classSymbol) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Symbol.ClassSymbol classSymbol2 = classSymbol; classSymbol2 != null; classSymbol2 = (Symbol.ClassSymbol) classSymbol2.getSuperclass().tsym) {
            arrayList.add(classSymbol2);
        }
        Collections.reverse(arrayList);
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            for (Symbol symbol : ((Symbol.ClassSymbol) it.next()).getEnclosedElements()) {
                if (isFinal(symbol) && symbol.isStatic() && symbol.kind == Kinds.Kind.VAR) {
                    Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) symbol;
                    if (varSymbol.getConstantValue() != null) {
                        printStaticDefines(printWriter, new Pair(classSymbol, varSymbol));
                    }
                }
            }
        }
    }

    public static class SimpleTypeVisitor<R, P> implements Type.Visitor<R, P> {
        protected final R DEFAULT_VALUE;

        public SimpleTypeVisitor() {
            this.DEFAULT_VALUE = null;
        }

        public R defaultAction(Type type, P p10) {
            return this.DEFAULT_VALUE;
        }

        @Override
        public R visitArrayType(Type.ArrayType arrayType, P p10) {
            return defaultAction(arrayType, p10);
        }

        @Override
        public R visitCapturedType(Type.CapturedType capturedType, P p10) {
            return defaultAction(capturedType, p10);
        }

        @Override
        public R visitClassType(Type.ClassType classType, P p10) {
            return defaultAction(classType, p10);
        }

        @Override
        public R visitErrorType(Type.ErrorType errorType, P p10) {
            return defaultAction(errorType, p10);
        }

        @Override
        public R visitForAll(Type.ForAll forAll, P p10) {
            return defaultAction(forAll, p10);
        }

        @Override
        public R visitMethodType(Type.MethodType methodType, P p10) {
            return defaultAction(methodType, p10);
        }

        @Override
        public R visitModuleType(Type.ModuleType moduleType, P p10) {
            return defaultAction(moduleType, p10);
        }

        @Override
        public R visitPackageType(Type.PackageType packageType, P p10) {
            return defaultAction(packageType, p10);
        }

        @Override
        public R visitType(Type type, P p10) {
            return defaultAction(type, p10);
        }

        @Override
        public R visitTypeVar(Type.TypeVar typeVar, P p10) {
            return defaultAction(typeVar, p10);
        }

        @Override
        public R visitUndetVar(Type.UndetVar undetVar, P p10) {
            return defaultAction(undetVar, p10);
        }

        @Override
        public R visitWildcardType(Type.WildcardType wildcardType, P p10) {
            return defaultAction(wildcardType, p10);
        }

        public SimpleTypeVisitor(R r10) {
            this.DEFAULT_VALUE = r10;
        }
    }

    private boolean needsHeader(Symbol.ClassSymbol classSymbol, boolean z10) {
        if (!classSymbol.isLocal() && !isSynthetic(classSymbol)) {
            for (Symbol symbol : classSymbol.members_field.getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol.kind == Kinds.Kind.MTH && isNative(symbol)) {
                    return true;
                }
                Iterator<Attribute.Compound> it = symbol.getDeclarationAttributes().iterator();
                while (it.hasNext()) {
                    if (it.next().type.tsym == this.syms.nativeHeaderType.tsym) {
                        return true;
                    }
                }
            }
            if (z10) {
                for (Symbol symbol2 : classSymbol.members_field.getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                    if (symbol2.kind == Kinds.Kind.TYP && needsHeader((Symbol.ClassSymbol) symbol2, true)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void write(PrintWriter printWriter, Symbol.ClassSymbol classSymbol) throws IOException {
        lazyInit();
        try {
            String encode = encode(classSymbol.fullname, EncoderType.CLASS);
            fileTop(printWriter);
            includes(printWriter);
            guardBegin(printWriter, encode);
            cppGuardBegin(printWriter);
            writeStatics(printWriter, classSymbol);
            writeMethods(printWriter, classSymbol, encode);
            cppGuardEnd(printWriter);
            guardEnd(printWriter);
        } catch (TypeSignature.SignatureException e10) {
            throw new IOException(e10);
        }
    }
}
