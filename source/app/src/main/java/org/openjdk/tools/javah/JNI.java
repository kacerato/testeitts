package org.openjdk.tools.javah;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.ElementFilter;
import org.openjdk.tools.javah.TypeSignature;
import org.openjdk.tools.javah.Util;

public class JNI extends Gen {

    public static class AnonymousClass1 {
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

    public JNI(Util util) {
        super(util);
    }

    @Override
    public String getIncludes() {
        return "#include <jni.h>";
    }

    public final String jniType(TypeMirror typeMirror) throws Util.Exit {
        TypeElement typeElement = this.elems.getTypeElement("java.lang.Throwable");
        TypeElement typeElement2 = this.elems.getTypeElement("java.lang.Class");
        TypeElement typeElement3 = this.elems.getTypeElement("java.lang.String");
        Element asElement = this.types.asElement(typeMirror);
        int[] iArr = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind;
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

    @Override
    public void write(OutputStream outputStream, TypeElement typeElement) throws Util.Exit {
        String defineForStatic;
        try {
            String mangle = this.mangler.mangle(typeElement.getQualifiedName(), 1);
            PrintWriter wrapWriter = wrapWriter(outputStream);
            wrapWriter.println(guardBegin(mangle));
            wrapWriter.println(cppGuardBegin());
            for (VariableElement variableElement : getAllFields(typeElement)) {
                if (variableElement.getModifiers().contains(Modifier.STATIC) && (defineForStatic = defineForStatic(typeElement, variableElement)) != null) {
                    wrapWriter.println(defineForStatic);
                }
            }
            List<ExecutableElement> methodsIn = ElementFilter.methodsIn(typeElement.getEnclosedElements());
            for (ExecutableElement executableElement : methodsIn) {
                if (executableElement.getModifiers().contains(Modifier.NATIVE)) {
                    TypeMirror erasure = this.types.erasure(executableElement.getReturnType());
                    String signature = signature(executableElement);
                    TypeSignature typeSignature = new TypeSignature(this.elems);
                    Name simpleName = executableElement.getSimpleName();
                    boolean z10 = false;
                    for (ExecutableElement executableElement2 : methodsIn) {
                        if (executableElement2 != executableElement && simpleName.equals(executableElement2.getSimpleName()) && executableElement2.getModifiers().contains(Modifier.NATIVE)) {
                            z10 = true;
                        }
                    }
                    wrapWriter.println("/*");
                    wrapWriter.println(" * Class:     " + mangle);
                    wrapWriter.println(" * Method:    " + this.mangler.mangle(simpleName, 2));
                    wrapWriter.println(" * Signature: " + typeSignature.getTypeSignature(signature, erasure));
                    wrapWriter.println(" */");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("JNIEXPORT ");
                    sb2.append(jniType(erasure));
                    sb2.append(" JNICALL ");
                    sb2.append(this.mangler.mangleMethod(executableElement, typeElement, z10 ? 8 : 7));
                    wrapWriter.println(sb2.toString());
                    wrapWriter.print("  (JNIEnv *, ");
                    List<? extends VariableElement> parameters = executableElement.getParameters();
                    ArrayList<TypeMirror> arrayList = new ArrayList();
                    Iterator<? extends VariableElement> it = parameters.iterator();
                    while (it.hasNext()) {
                        arrayList.add(this.types.erasure(it.next().asType()));
                    }
                    if (executableElement.getModifiers().contains(Modifier.STATIC)) {
                        wrapWriter.print("jclass");
                    } else {
                        wrapWriter.print("jobject");
                    }
                    for (TypeMirror typeMirror : arrayList) {
                        wrapWriter.print(", ");
                        wrapWriter.print(jniType(typeMirror));
                    }
                    wrapWriter.println(");" + this.lineSep);
                }
            }
            wrapWriter.println(cppGuardEnd());
            wrapWriter.println(guardEnd(mangle));
        } catch (TypeSignature.SignatureException e10) {
            this.util.error("jni.sigerror", e10.getMessage());
        }
    }
}
