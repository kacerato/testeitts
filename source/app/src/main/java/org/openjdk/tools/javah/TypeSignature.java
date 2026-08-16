package org.openjdk.tools.javah;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.StringTokenizer;
import okhttp3.v;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.TypeVariable;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.SimpleTypeVisitor9;
import org.openjdk.tools.doclint.DocLint;

public class TypeSignature {
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
    Elements elems;

    public static class SignatureException extends Exception {
        private static final long serialVersionUID = 1;

        public SignatureException(String str) {
            super(str);
        }
    }

    public TypeSignature(Elements elements) {
        this.elems = elements;
    }

    private String getComponentType(String str) throws SignatureException {
        if (str == null) {
            return "";
        }
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1325958191:
                if (str.equals("double")) {
                    c10 = 0;
                    break;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3039496:
                if (str.equals("byte")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3052374:
                if (str.equals("char")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3327612:
                if (str.equals("long")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3625364:
                if (str.equals("void")) {
                    c10 = 5;
                    break;
                }
                break;
            case 64711720:
                if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                    c10 = 6;
                    break;
                }
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = 7;
                    break;
                }
                break;
            case 109413500:
                if (str.equals("short")) {
                    c10 = '\b';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return "D";
            case 1:
                return "I";
            case 2:
                return "B";
            case 3:
                return "C";
            case 4:
                return "J";
            case 5:
                return "V";
            case 6:
                return "Z";
            case 7:
                return "F";
            case '\b':
                return "S";
            default:
                if (str.equals("")) {
                    return "";
                }
                TypeElement typeElement = this.elems.getTypeElement(str);
                if (typeElement == null) {
                    throw new SignatureException(str);
                }
                String replace = typeElement.getQualifiedName().toString().replace('.', '/');
                return (("" + SIG_CLASS) + replace) + ";";
        }
    }

    private String getParamJVMSignature(String str) throws SignatureException {
        String str2 = "";
        if (str == null) {
            return "";
        }
        if (str.contains(v.f99450n)) {
            int indexOf = str.indexOf(v.f99450n);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf);
            if (substring2 != null) {
                String str3 = "";
                while (substring2.contains(v.f99450n)) {
                    str3 = str3 + SIG_ARRAY;
                    int indexOf2 = substring2.indexOf("]") + 1;
                    substring2 = indexOf2 < substring2.length() ? substring2.substring(indexOf2) : "";
                }
                str2 = str3;
            }
            str = substring;
        }
        return str2 + getComponentType(str);
    }

    public int dimensions(TypeMirror typeMirror) {
        if (typeMirror.getKind() != TypeKind.ARRAY) {
            return 0;
        }
        return dimensions(((ArrayType) typeMirror).getComponentType()) + 1;
    }

    public String getTypeSignature(String str) throws SignatureException {
        return getParamJVMSignature(str);
    }

    public String qualifiedTypeName(TypeMirror typeMirror) {
        return new SimpleTypeVisitor9<Name, Void>() {
            @Override
            public Name visitArray(ArrayType arrayType, Void r22) {
                return (Name) arrayType.getComponentType().accept(this, r22);
            }

            @Override
            public Name visitDeclared(DeclaredType declaredType, Void r22) {
                return ((TypeElement) declaredType.asElement()).getQualifiedName();
            }

            @Override
            public Name visitNoType(NoType noType, Void r42) {
                if (noType.getKind() == TypeKind.VOID) {
                    return TypeSignature.this.elems.getName("void");
                }
                return defaultAction(noType, r42);
            }

            @Override
            public Name visitPrimitive(PrimitiveType primitiveType, Void r22) {
                return TypeSignature.this.elems.getName(primitiveType.toString());
            }

            @Override
            public Name visitTypeVariable(TypeVariable typeVariable, Void r22) {
                return (Name) typeVariable.getUpperBound().accept(this, r22);
            }
        }.visit(typeMirror).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getTypeSignature(String str, TypeMirror typeMirror) throws SignatureException {
        int i10;
        int i11;
        int i12;
        ArrayList arrayList = new ArrayList();
        String str2 = "(";
        if (str != null) {
            i10 = str.indexOf("(");
            i11 = str.indexOf(")");
        } else {
            i10 = -1;
            i11 = -1;
        }
        String substring = (i10 == -1 || i11 == -1 || (i12 = i10 + 1) >= str.length() || i11 >= str.length()) ? null : str.substring(i12, i11);
        if (substring != null) {
            if (substring.contains(DocLint.SEPARATOR)) {
                StringTokenizer stringTokenizer = new StringTokenizer(substring, DocLint.SEPARATOR);
                while (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(stringTokenizer.nextToken());
                }
            } else {
                arrayList.add(substring);
            }
        }
        while (true) {
            if (arrayList.isEmpty()) {
                break;
            }
            String paramJVMSignature = getParamJVMSignature(((String) arrayList.remove(0)).trim());
            if (paramJVMSignature != null) {
                str2 = str2 + paramJVMSignature;
            }
        }
        String str3 = str2 + ")";
        String str4 = "";
        int dimensions = typeMirror != null ? dimensions(typeMirror) : 0;
        while (true) {
            int i13 = dimensions - 1;
            if (dimensions <= 0) {
                break;
            }
            str4 = str4 + SIG_ARRAY;
            dimensions = i13;
        }
        if (typeMirror != null) {
            str4 = str4 + getComponentType(qualifiedTypeName(typeMirror));
        } else {
            System.out.println("Invalid return type.");
        }
        return str3 + str4;
    }
}
