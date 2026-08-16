package org.openjdk.tools.javah;

import ei.C13155a;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C14021s;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.Signature;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.ElementFilter;
import org.openjdk.javax.lang.model.util.SimpleTypeVisitor9;
import org.openjdk.tools.javah.TypeSignature;
import org.openjdk.tools.javah.Util;

public class LLNI extends Gen {
    private static final boolean isWindows = System.getProperty("os.name").startsWith("Windows");
    protected Set<String> doneHandleTypes;
    private boolean doubleAlign;
    List<VariableElement> fields;
    protected final char innerDelim;
    List<ExecutableElement> methods;
    private int padFieldNum;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr;
            try {
                iArr[TypeKind.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.ARRAY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DECLARED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.VOID.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static class FieldDefsRes {
        public boolean bottomMost;
        public int byteSize;
        public String className;
        public FieldDefsRes parent;
        public boolean printedOne = false;

        public String f103314s;

        public FieldDefsRes(TypeElement typeElement, FieldDefsRes fieldDefsRes, boolean z10) {
            this.className = typeElement.getQualifiedName().toString();
            this.parent = fieldDefsRes;
            this.bottomMost = z10;
            if (fieldDefsRes == null) {
                this.f103314s = "";
            } else {
                this.f103314s = fieldDefsRes.f103314s;
            }
        }
    }

    public LLNI(boolean z10, Util util) {
        super(util);
        this.innerDelim = '$';
        this.padFieldNum = 0;
        this.doubleAlign = z10;
    }

    private boolean doField(FieldDefsRes fieldDefsRes, VariableElement variableElement, String str, boolean z10) {
        String addStructMember = addStructMember(variableElement, str, z10);
        if (addStructMember == null) {
            return false;
        }
        if (!fieldDefsRes.printedOne) {
            if (!fieldDefsRes.bottomMost) {
                fieldDefsRes.f103314s += "    /* inherited members from " + fieldDefsRes.className + ": */" + this.lineSep;
            } else if (fieldDefsRes.f103314s.length() != 0) {
                fieldDefsRes.f103314s += "    /* local members: */" + this.lineSep;
            }
            fieldDefsRes.printedOne = true;
        }
        fieldDefsRes.f103314s += addStructMember;
        return true;
    }

    private int doTwoWordFields(FieldDefsRes fieldDefsRes, TypeElement typeElement, int i10, String str, boolean z10) {
        boolean z11 = true;
        for (VariableElement variableElement : ElementFilter.fieldsIn(typeElement.getEnclosedElements())) {
            TypeKind kind = variableElement.asType().getKind();
            if (kind == TypeKind.LONG || kind == TypeKind.DOUBLE) {
                if (doField(fieldDefsRes, variableElement, str, z11 && z10)) {
                    i10 += 8;
                    z11 = false;
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String addStaticStructMember(VariableElement variableElement, String str) {
        Object constantValue;
        int intValue;
        long j10;
        String str2;
        if (!variableElement.getModifiers().contains(Modifier.STATIC) || !variableElement.getModifiers().contains(Modifier.FINAL) || (constantValue = variableElement.getConstantValue()) == null) {
            return null;
        }
        String str3 = str + ConstantDescs.DEFAULT_NAME + ((Object) variableElement.getSimpleName());
        if (!(constantValue instanceof Byte) && !(constantValue instanceof Short) && !(constantValue instanceof Integer)) {
            if (constantValue instanceof Long) {
                str2 = isWindows ? "i64" : "LL";
                j10 = ((Long) constantValue).longValue();
            } else {
                j10 = 0;
                if (constantValue instanceof Float) {
                    str2 = "f";
                } else if (constantValue instanceof Double) {
                    str2 = "";
                } else if (constantValue instanceof Character) {
                    intValue = ((Character) constantValue).charValue() & C14021s.f95775c;
                } else {
                    str2 = null;
                }
            }
            if (str2 != null) {
                return null;
            }
            if ((str2.equals("L") && j10 == -2147483648L) || (str2.equals("LL") && j10 == Long.MIN_VALUE)) {
                return "    #undef  " + str3 + this.lineSep + "    #define " + str3 + " (" + (j10 + 1) + str2 + "-1)" + this.lineSep;
            }
            if (str2.equals("L") || str2.endsWith("LL")) {
                return "    #undef  " + str3 + this.lineSep + "    #define " + str3 + " " + j10 + str2 + this.lineSep;
            }
            return "    #undef  " + str3 + this.lineSep + "    #define " + str3 + " " + constantValue + str2 + this.lineSep;
        }
        intValue = ((Number) constantValue).intValue();
        j10 = intValue;
        str2 = "L";
        if (str2 != null) {
        }
    }

    public String addStructMember(VariableElement variableElement, String str, boolean z10) {
        if (variableElement.getModifiers().contains(Modifier.STATIC)) {
            return addStaticStructMember(variableElement, str);
        }
        TypeMirror erasure = this.types.erasure(variableElement.asType());
        if (z10) {
            this.padFieldNum++;
        }
        String str2 = C13155a.f85806a + llniType(erasure, false, false) + " " + llniFieldName(variableElement);
        if (isLongOrDouble(erasure)) {
            str2 = str2 + "[2]";
        }
        return str2 + ";" + this.lineSep;
    }

    public final String cRcvrDecl(Element element, String str) {
        return element.getModifiers().contains(Modifier.STATIC) ? "jclass" : "jobject";
    }

    public String fieldDefs(TypeElement typeElement, String str) {
        return fieldDefs(typeElement, str, true).f103314s;
    }

    public void forwardDecls(PrintWriter printWriter, TypeElement typeElement) throws TypeSignature.SignatureException {
        if (typeElement.equals(this.elems.getTypeElement("java.lang.Object"))) {
            return;
        }
        genHandleType(printWriter, typeElement.getQualifiedName().toString());
        TypeElement typeElement2 = (TypeElement) this.types.asElement(typeElement.getSuperclass());
        if (typeElement2 != null) {
            typeElement2.getQualifiedName().toString();
            forwardDecls(printWriter, typeElement2);
        }
        for (VariableElement variableElement : this.fields) {
            if (!variableElement.getModifiers().contains(Modifier.STATIC)) {
                TypeMirror erasure = this.types.erasure(variableElement.asType());
                TypeSignature typeSignature = new TypeSignature(this.elems);
                String typeSignature2 = typeSignature.getTypeSignature(typeSignature.qualifiedTypeName(erasure));
                if (typeSignature2.charAt(0) != '[') {
                    forwardDeclsFromSig(printWriter, typeSignature2);
                }
            }
        }
        for (ExecutableElement executableElement : this.methods) {
            if (executableElement.getModifiers().contains(Modifier.NATIVE)) {
                TypeMirror erasure2 = this.types.erasure(executableElement.getReturnType());
                String typeSignature3 = new TypeSignature(this.elems).getTypeSignature(signature(executableElement), erasure2);
                if (typeSignature3.charAt(0) != '[') {
                    forwardDeclsFromSig(printWriter, typeSignature3);
                }
            }
        }
    }

    public void forwardDeclsFromSig(PrintWriter printWriter, String str) {
        int length = str.length();
        int i10 = str.charAt(0) == '(' ? 1 : 0;
        while (i10 < length) {
            if (str.charAt(i10) == 'L') {
                int i11 = i10 + 1;
                int i12 = i11;
                while (str.charAt(i12) != ';') {
                    i12++;
                }
                genHandleType(printWriter, str.substring(i11, i12));
                i10 = i12 + 1;
            } else {
                i10++;
            }
        }
    }

    public void genHandleType(PrintWriter printWriter, String str) {
        String mangleClassName = mangleClassName(str);
        if (this.doneHandleTypes.contains(mangleClassName)) {
            return;
        }
        this.doneHandleTypes.add(mangleClassName);
        if (printWriter != null) {
            printWriter.println("#ifndef DEFINED_" + mangleClassName);
            printWriter.println("    #define DEFINED_" + mangleClassName);
            printWriter.println("    GEN_HANDLE_TYPES(" + mangleClassName + ");");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("#endif");
            sb2.append(this.lineSep);
            printWriter.println(sb2.toString());
        }
    }

    public void generateDeclsForClass(PrintWriter printWriter, TypeElement typeElement, String str) throws TypeSignature.SignatureException, Util.Exit {
        this.doneHandleTypes = new HashSet();
        genHandleType(null, "java.lang.Class");
        genHandleType(null, "java.lang.ClassLoader");
        genHandleType(null, "java.lang.Object");
        genHandleType(null, "java.lang.String");
        genHandleType(null, "java.lang.Thread");
        genHandleType(null, "java.lang.ThreadGroup");
        genHandleType(null, "java.lang.Throwable");
        printWriter.println("/* LLNI Header for class " + ((Object) typeElement.getQualifiedName()) + " */" + this.lineSep);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("#ifndef _Included_");
        sb2.append(str);
        printWriter.println(sb2.toString());
        printWriter.println("#define _Included_" + str);
        printWriter.println("#include \"typedefs.h\"");
        printWriter.println("#include \"llni.h\"");
        printWriter.println("#include \"jni.h\"" + this.lineSep);
        forwardDecls(printWriter, typeElement);
        structSectionForClass(printWriter, typeElement, str);
        methodSectionForClass(printWriter, typeElement, str);
        printWriter.println("#endif");
    }

    @Override
    public String getIncludes() {
        return "";
    }

    public final boolean isASCIILetterOrDigit(char c10) {
        if (c10 >= 'A' && c10 <= 'Z') {
            return true;
        }
        if (c10 < 'a' || c10 > 'z') {
            return c10 >= '0' && c10 <= '9';
        }
        return true;
    }

    public final boolean isLongOrDouble(TypeMirror typeMirror) {
        return new SimpleTypeVisitor9<Boolean, Void>() {
            @Override
            public Boolean defaultAction(TypeMirror typeMirror2, Void r22) {
                return Boolean.FALSE;
            }

            @Override
            public Boolean visitArray(ArrayType arrayType, Void r22) {
                return visit(arrayType.getComponentType(), r22);
            }

            @Override
            public Boolean visitPrimitive(PrimitiveType primitiveType, Void r22) {
                TypeKind kind = primitiveType.getKind();
                return Boolean.valueOf(kind == TypeKind.LONG || kind == TypeKind.DOUBLE);
            }
        }.visit(typeMirror, null).booleanValue();
    }

    public final String jniMethodName(ExecutableElement executableElement, String str, boolean z10) throws TypeSignature.SignatureException {
        String str2 = "Java_" + str + ConstantDescs.DEFAULT_NAME + ((Object) executableElement.getSimpleName());
        if (!z10) {
            return str2;
        }
        this.types.erasure(executableElement.getReturnType());
        List<? extends VariableElement> parameters = executableElement.getParameters();
        ArrayList arrayList = new ArrayList();
        Iterator<? extends VariableElement> it = parameters.iterator();
        while (it.hasNext()) {
            arrayList.add(this.types.erasure(it.next().asType()));
        }
        String str3 = str2 + "__";
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            str3 = str3 + nameToIdentifier(new TypeSignature(this.elems).getTypeSignature(((TypeMirror) it2.next()).toString()));
        }
        return str3;
    }

    public final String jniType(TypeMirror typeMirror) throws Util.Exit {
        TypeElement typeElement = this.elems.getTypeElement("java.lang.Throwable");
        TypeElement typeElement2 = this.elems.getTypeElement("java.lang.Class");
        TypeElement typeElement3 = this.elems.getTypeElement("java.lang.String");
        Element asElement = this.types.asElement(typeMirror);
        int[] iArr = AnonymousClass2.$SwitchMap$javax$lang$model$type$TypeKind;
        switch (iArr[typeMirror.getKind().ordinal()]) {
            case 1:
                return "jboolean";
            case 2:
                return "jbyte";
            case 3:
                return "jchar";
            case 4:
                return "jshort";
            case 5:
                return "jint";
            case 6:
                return "jlong";
            case 7:
                return "jfloat";
            case 8:
                return "jdouble";
            case 9:
                TypeMirror componentType = ((ArrayType) typeMirror).getComponentType();
                switch (iArr[componentType.getKind().ordinal()]) {
                    case 1:
                        return "jbooleanArray";
                    case 2:
                        return "jbyteArray";
                    case 3:
                        return "jcharArray";
                    case 4:
                        return "jshortArray";
                    case 5:
                        return "jintArray";
                    case 6:
                        return "jlongArray";
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
                return asElement.equals(typeElement3) ? "jstring" : this.types.isAssignable(typeMirror, typeElement.asType()) ? "jthrowable" : this.types.isAssignable(typeMirror, typeElement2.asType()) ? "jclass" : "jobject";
            case 11:
                return "void";
            default:
                this.util.bug("jni.unknown.type");
                return null;
        }
    }

    public String llniFieldName(VariableElement variableElement) {
        return maskName(variableElement.getSimpleName().toString());
    }

    public String llniType(TypeMirror typeMirror, boolean z10, boolean z11) {
        String str;
        int[] iArr = AnonymousClass2.$SwitchMap$javax$lang$model$type$TypeKind;
        switch (iArr[typeMirror.getKind().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return "java_int";
            case 6:
                return z11 ? "java_long" : "val32 /* java_long */";
            case 7:
                return "java_float";
            case 8:
                return z11 ? "java_double" : "val32 /* java_double */";
            case 9:
                TypeMirror componentType = ((ArrayType) typeMirror).getComponentType();
                switch (iArr[componentType.getKind().ordinal()]) {
                    case 1:
                        str = "IArrayOfBoolean";
                        break;
                    case 2:
                        str = "IArrayOfByte";
                        break;
                    case 3:
                        str = "IArrayOfChar";
                        break;
                    case 4:
                        str = "IArrayOfShort";
                        break;
                    case 5:
                        str = "IArrayOfInt";
                        break;
                    case 6:
                        str = "IArrayOfLong";
                        break;
                    case 7:
                        str = "IArrayOfFloat";
                        break;
                    case 8:
                        str = "IArrayOfDouble";
                        break;
                    case 9:
                    case 10:
                        str = "IArrayOfRef";
                        break;
                    default:
                        throw new Error(((Object) componentType.getKind()) + " " + ((Object) componentType));
                }
                if (z10) {
                    return str;
                }
                return "DEREFERENCED_" + str;
            case 10:
                String str2 = Signature.SIG_INT + mangleClassName(((TypeElement) this.types.asElement(typeMirror)).getQualifiedName().toString());
                if (z10) {
                    return str2;
                }
                return "DEREFERENCED_" + str2;
            case 11:
                return "void";
            default:
                throw new Error(((Object) typeMirror.getKind()) + " " + ((Object) typeMirror));
        }
    }

    public String mangleClassName(String str) {
        return str.replace('.', '_').replace('/', '_').replace('$', '_');
    }

    public String maskName(String str) {
        return "LLNI_mask(" + str + ")";
    }

    public String methodDecl(ExecutableElement executableElement, TypeElement typeElement, String str) throws TypeSignature.SignatureException, Util.Exit {
        TypeMirror erasure = this.types.erasure(executableElement.getReturnType());
        String typeSignature = new TypeSignature(this.elems).getTypeSignature(signature(executableElement), erasure);
        boolean needLongName = needLongName(executableElement, typeElement);
        if (typeSignature.charAt(0) != '(') {
            this.util.error("invalid.method.signature", typeSignature);
        }
        String str2 = "JNIEXPORT " + jniType(erasure) + " JNICALL" + this.lineSep + jniMethodName(executableElement, str, needLongName) + "(JNIEnv *, " + cRcvrDecl(executableElement, str);
        List<? extends VariableElement> parameters = executableElement.getParameters();
        ArrayList arrayList = new ArrayList();
        Iterator<? extends VariableElement> it = parameters.iterator();
        while (it.hasNext()) {
            arrayList.add(this.types.erasure(it.next().asType()));
        }
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            str2 = str2 + ", " + jniType((TypeMirror) it2.next());
        }
        return str2 + ");" + this.lineSep;
    }

    public String methodDecls(TypeElement typeElement, String str) throws TypeSignature.SignatureException, Util.Exit {
        String str2 = "";
        for (ExecutableElement executableElement : this.methods) {
            if (executableElement.getModifiers().contains(Modifier.NATIVE)) {
                str2 = str2 + methodDecl(executableElement, typeElement, str);
            }
        }
        return str2;
    }

    public void methodSectionForClass(PrintWriter printWriter, TypeElement typeElement, String str) throws TypeSignature.SignatureException, Util.Exit {
        String methodDecls = methodDecls(typeElement, str);
        if (methodDecls.length() != 0) {
            printWriter.println("/* Native method declarations: */" + this.lineSep);
            printWriter.println("#ifdef __cplusplus");
            printWriter.println("extern \"C\" {");
            printWriter.println("#endif" + this.lineSep);
            printWriter.println(methodDecls);
            printWriter.println("#ifdef __cplusplus");
            printWriter.println(VectorFormat.DEFAULT_SUFFIX);
            printWriter.println("#endif");
        }
    }

    public final String nameToIdentifier(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length);
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (isASCIILetterOrDigit(charAt)) {
                sb2.append(charAt);
            } else if (charAt == '/') {
                sb2.append('_');
            } else if (charAt == '.') {
                sb2.append('_');
            } else if (charAt == '_') {
                sb2.append("_1");
            } else if (charAt == ';') {
                sb2.append("_2");
            } else if (charAt == '[') {
                sb2.append("_3");
            } else {
                sb2.append("_0" + ((int) charAt));
            }
        }
        return new String(sb2);
    }

    public final boolean needLongName(ExecutableElement executableElement, TypeElement typeElement) {
        Name simpleName = executableElement.getSimpleName();
        for (ExecutableElement executableElement2 : this.methods) {
            if (executableElement2 != executableElement && executableElement2.getModifiers().contains(Modifier.NATIVE) && simpleName.equals(executableElement2.getSimpleName())) {
                return true;
            }
        }
        return false;
    }

    public void structSectionForClass(PrintWriter printWriter, TypeElement typeElement, String str) {
        String obj = typeElement.getQualifiedName().toString();
        if (str.equals("java_lang_Object")) {
            printWriter.println("/* struct java_lang_Object is defined in typedefs.h. */");
            printWriter.println();
            return;
        }
        printWriter.println("#if !defined(__i386)");
        printWriter.println("#pragma pack(4)");
        printWriter.println("#endif");
        printWriter.println();
        printWriter.println("struct " + str + " {");
        printWriter.println("    ObjHeader h;");
        printWriter.print(fieldDefs(typeElement, str));
        if (obj.equals("java.lang.Class")) {
            printWriter.println("    Class *LLNI_mask(cClass);  /* Fake field; don't access (see oobj.h) */");
        }
        printWriter.println("};" + this.lineSep + this.lineSep + "#pragma pack()");
        printWriter.println();
    }

    @Override
    public void write(OutputStream outputStream, TypeElement typeElement) throws Util.Exit {
        try {
            String mangleClassName = mangleClassName(typeElement.getQualifiedName().toString());
            PrintWriter wrapWriter = wrapWriter(outputStream);
            this.fields = ElementFilter.fieldsIn(typeElement.getEnclosedElements());
            this.methods = ElementFilter.methodsIn(typeElement.getEnclosedElements());
            generateDeclsForClass(wrapWriter, typeElement, mangleClassName);
        } catch (TypeSignature.SignatureException e10) {
            this.util.error("llni.sigerror", e10.getMessage());
        }
    }

    public FieldDefsRes fieldDefs(TypeElement typeElement, String str, boolean z10) {
        FieldDefsRes fieldDefsRes;
        int i10;
        TypeElement typeElement2 = (TypeElement) this.types.asElement(typeElement.getSuperclass());
        if (typeElement2 != null) {
            typeElement2.getQualifiedName().toString();
            fieldDefsRes = new FieldDefsRes(typeElement, fieldDefs(typeElement2, str, false), z10);
            i10 = fieldDefsRes.parent.byteSize;
        } else {
            fieldDefsRes = new FieldDefsRes(typeElement, null, z10);
            i10 = 0;
        }
        FieldDefsRes fieldDefsRes2 = fieldDefsRes;
        int i11 = i10;
        boolean z11 = false;
        for (VariableElement variableElement : ElementFilter.fieldsIn(typeElement.getEnclosedElements())) {
            boolean z12 = true;
            if (this.doubleAlign && !z11 && i11 % 8 == 0) {
                i11 = doTwoWordFields(fieldDefsRes2, typeElement, i11, str, false);
                z11 = true;
            }
            TypeKind kind = variableElement.asType().getKind();
            if (kind != TypeKind.LONG && kind != TypeKind.DOUBLE) {
                z12 = false;
            }
            if (!this.doubleAlign || !z12) {
                if (doField(fieldDefsRes2, variableElement, str, false)) {
                    i11 += 4;
                }
            }
        }
        if (this.doubleAlign && !z11) {
            if (i11 % 8 != 0) {
                i11 += 4;
            }
            i11 = doTwoWordFields(fieldDefsRes2, typeElement, i11, str, true);
        }
        fieldDefsRes2.byteSize = i11;
        return fieldDefsRes2;
    }
}
