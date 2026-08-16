package org.openjdk.tools.javac.code;

import java.util.Iterator;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;

public class TypeAnnotationPosition {
    public static final List<TypePathEntry> emptyPath;
    public static final TypeAnnotationPosition unknown;
    public final int bound_index;
    public List<TypePathEntry> location;
    public final JCTree.JCLambda onLambda;
    public int parameter_index;
    public final int pos;
    public final TargetType type;
    public final int type_index;
    public boolean isValidOffset = false;
    public int offset = -1;
    public int[] lvarOffset = null;
    public int[] lvarLength = null;
    public int[] lvarIndex = null;
    private int exception_index = Integer.MIN_VALUE;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TargetType;

        static {
            int[] iArr = new int[TargetType.values().length];
            $SwitchMap$com$sun$tools$javac$code$TargetType = iArr;
            try {
                iArr[TargetType.INSTANCEOF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.NEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_REFERENCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.LOCAL_VARIABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.RESOURCE_VARIABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_RECEIVER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_TYPE_PARAMETER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_TYPE_PARAMETER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_TYPE_PARAMETER_BOUND.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_TYPE_PARAMETER_BOUND.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_EXTENDS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.THROWS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.EXCEPTION_PARAMETER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_FORMAL_PARAMETER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CAST.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_INVOCATION_TYPE_ARGUMENT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_REFERENCE_TYPE_ARGUMENT.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_RETURN.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.FIELD.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.UNKNOWN.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    public enum TypePathEntryKind {
        ARRAY(0),
        INNER_TYPE(1),
        WILDCARD(2),
        TYPE_ARGUMENT(3);

        public final int tag;

        TypePathEntryKind(int i10) {
            this.tag = i10;
        }
    }

    static {
        List<TypePathEntry> nil = List.nil();
        emptyPath = nil;
        unknown = new TypeAnnotationPosition(TargetType.UNKNOWN, -1, Integer.MIN_VALUE, null, Integer.MIN_VALUE, Integer.MIN_VALUE, nil);
    }

    private TypeAnnotationPosition(TargetType targetType, int i10, int i11, JCTree.JCLambda jCLambda, int i12, int i13, List<TypePathEntry> list) {
        Assert.checkNonNull(list);
        this.type = targetType;
        this.pos = i10;
        this.parameter_index = i11;
        this.onLambda = jCLambda;
        this.type_index = i12;
        this.bound_index = i13;
        this.location = list;
    }

    public static TypeAnnotationPosition classExtends(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.CLASS_EXTENDS, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition constructorInvocationTypeArg(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition constructorRef(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.CONSTRUCTOR_REFERENCE, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition constructorRefTypeArg(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition exceptionParameter(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.EXCEPTION_PARAMETER, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition field(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.FIELD, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static List<Integer> getBinaryFromTypePath(java.util.List<TypePathEntry> list) {
        ListBuffer listBuffer = new ListBuffer();
        for (TypePathEntry typePathEntry : list) {
            listBuffer = listBuffer.append(Integer.valueOf(typePathEntry.tag.tag)).append(Integer.valueOf(typePathEntry.arg));
        }
        return listBuffer.toList();
    }

    public static List<TypePathEntry> getTypePathFromBinary(java.util.List<Integer> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            Assert.check(it.hasNext());
            listBuffer = listBuffer.append(TypePathEntry.fromBinary(next.intValue(), it.next().intValue()));
        }
        return listBuffer.toList();
    }

    public static TypeAnnotationPosition instanceOf(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.INSTANCEOF, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition localVariable(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.LOCAL_VARIABLE, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodInvocationTypeArg(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.METHOD_INVOCATION_TYPE_ARGUMENT, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodParameter(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.METHOD_FORMAL_PARAMETER, i11, i10, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodReceiver(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.METHOD_RECEIVER, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodRef(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.METHOD_REFERENCE, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodRefTypeArg(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.METHOD_REFERENCE_TYPE_ARGUMENT, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodReturn(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.METHOD_RETURN, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodThrows(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.THROWS, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodTypeParameter(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.METHOD_TYPE_PARAMETER, i11, i10, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition methodTypeParameterBound(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11, int i12) {
        return new TypeAnnotationPosition(TargetType.METHOD_TYPE_PARAMETER_BOUND, i12, i10, jCLambda, Integer.MIN_VALUE, i11, list);
    }

    public static TypeAnnotationPosition newObj(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.NEW, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition resourceVariable(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return new TypeAnnotationPosition(TargetType.RESOURCE_VARIABLE, i10, Integer.MIN_VALUE, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition typeCast(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.CAST, i11, Integer.MIN_VALUE, jCLambda, i10, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition typeParameter(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11) {
        return new TypeAnnotationPosition(TargetType.CLASS_TYPE_PARAMETER, i11, i10, jCLambda, Integer.MIN_VALUE, Integer.MIN_VALUE, list);
    }

    public static TypeAnnotationPosition typeParameterBound(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10, int i11, int i12) {
        return new TypeAnnotationPosition(TargetType.CLASS_TYPE_PARAMETER_BOUND, i12, i10, jCLambda, Integer.MIN_VALUE, i11, list);
    }

    public boolean emitToClassfile() {
        return !this.type.isLocal() || this.isValidOffset;
    }

    public int getCatchType() {
        Assert.check(hasCatchType(), "exception_index does not contain valid catch info");
        return ((-this.exception_index) - 1) & 255;
    }

    public int getExceptionIndex() {
        Assert.check(this.exception_index >= 0, "exception_index is not set");
        return this.exception_index;
    }

    public int getStartPos() {
        Assert.check(hasCatchType(), "exception_index does not contain valid catch info");
        return ((-this.exception_index) - 1) >> 8;
    }

    public boolean hasCatchType() {
        int i10 = this.exception_index;
        return i10 < 0 && i10 != Integer.MIN_VALUE;
    }

    public boolean hasExceptionIndex() {
        return this.exception_index >= 0;
    }

    public boolean matchesPos(int i10) {
        return this.pos == i10;
    }

    public void setCatchInfo(int i10, int i11) {
        Assert.check(!hasExceptionIndex(), "exception_index is already set");
        Assert.check(i10 >= 0, "Expected a valid catch type");
        this.exception_index = -((i10 | (i11 << 8)) + 1);
    }

    public void setExceptionIndex(int i10) {
        Assert.check(!hasExceptionIndex(), "exception_index already set");
        Assert.check(i10 >= 0, "Expected a valid index into exception table");
        this.exception_index = i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        sb2.append((Object) this.type);
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TargetType[this.type.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                sb2.append(", offset = ");
                sb2.append(this.offset);
                break;
            case 5:
            case 6:
                if (this.lvarOffset == null) {
                    sb2.append(", lvarOffset is null!");
                    break;
                } else {
                    sb2.append(", {");
                    for (int i10 = 0; i10 < this.lvarOffset.length; i10++) {
                        if (i10 != 0) {
                            sb2.append(VectorFormat.DEFAULT_SEPARATOR);
                        }
                        sb2.append("start_pc = ");
                        sb2.append(this.lvarOffset[i10]);
                        sb2.append(", length = ");
                        sb2.append(this.lvarLength[i10]);
                        sb2.append(", index = ");
                        sb2.append(this.lvarIndex[i10]);
                    }
                    sb2.append(VectorFormat.DEFAULT_SUFFIX);
                    break;
                }
            case 7:
            case 21:
            case 22:
                break;
            case 8:
            case 9:
                sb2.append(", param_index = ");
                sb2.append(this.parameter_index);
                break;
            case 10:
            case 11:
                sb2.append(", param_index = ");
                sb2.append(this.parameter_index);
                sb2.append(", bound_index = ");
                sb2.append(this.bound_index);
                break;
            case 12:
                sb2.append(", type_index = ");
                sb2.append(this.type_index);
                break;
            case 13:
                sb2.append(", type_index = ");
                sb2.append(this.type_index);
                break;
            case 14:
                sb2.append(", exception_index = ");
                sb2.append(this.exception_index);
                break;
            case 15:
                sb2.append(", param_index = ");
                sb2.append(this.parameter_index);
                break;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                sb2.append(", offset = ");
                sb2.append(this.offset);
                sb2.append(", type_index = ");
                sb2.append(this.type_index);
                break;
            case 23:
                sb2.append(", position UNKNOWN!");
                break;
            default:
                Assert.error("Unknown target type: " + ((Object) this.type));
                break;
        }
        if (!this.location.isEmpty()) {
            sb2.append(", location = (");
            sb2.append((Object) this.location);
            sb2.append(")");
        }
        sb2.append(", pos = ");
        sb2.append(this.pos);
        if (this.onLambda != null) {
            sb2.append(", onLambda hash = ");
            sb2.append(this.onLambda.hashCode());
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public void updatePosOffset(int i10) {
        this.offset = i10;
        this.lvarOffset = new int[]{i10};
        this.isValidOffset = true;
    }

    public static TypeAnnotationPosition classExtends(List<TypePathEntry> list, JCTree.JCLambda jCLambda, int i10) {
        return classExtends(list, jCLambda, 65535, i10);
    }

    public static TypeAnnotationPosition constructorInvocationTypeArg(List<TypePathEntry> list, int i10) {
        return constructorInvocationTypeArg(list, null, i10, -1);
    }

    public static TypeAnnotationPosition constructorRef(List<TypePathEntry> list) {
        return constructorRef(list, null, -1);
    }

    public static TypeAnnotationPosition constructorRefTypeArg(List<TypePathEntry> list, int i10) {
        return constructorRefTypeArg(list, null, i10, -1);
    }

    public static TypeAnnotationPosition exceptionParameter(JCTree.JCLambda jCLambda, int i10) {
        return exceptionParameter(emptyPath, jCLambda, i10);
    }

    public static TypeAnnotationPosition field(List<TypePathEntry> list) {
        return field(list, null, -1);
    }

    public static TypeAnnotationPosition instanceOf(List<TypePathEntry> list) {
        return instanceOf(list, null, -1);
    }

    public static TypeAnnotationPosition localVariable(JCTree.JCLambda jCLambda, int i10) {
        return localVariable(emptyPath, jCLambda, i10);
    }

    public static TypeAnnotationPosition methodInvocationTypeArg(List<TypePathEntry> list, int i10) {
        return methodInvocationTypeArg(list, null, i10, -1);
    }

    public static TypeAnnotationPosition methodParameter(JCTree.JCLambda jCLambda, int i10, int i11) {
        return methodParameter(emptyPath, jCLambda, i10, i11);
    }

    public static TypeAnnotationPosition methodReceiver(List<TypePathEntry> list) {
        return methodReceiver(list, null, -1);
    }

    public static TypeAnnotationPosition methodRef(List<TypePathEntry> list) {
        return methodRef(list, null, -1);
    }

    public static TypeAnnotationPosition methodRefTypeArg(List<TypePathEntry> list, int i10) {
        return methodRefTypeArg(list, null, i10, -1);
    }

    public static TypeAnnotationPosition methodReturn(List<TypePathEntry> list) {
        return methodReturn(list, null, -1);
    }

    public static TypeAnnotationPosition methodThrows(List<TypePathEntry> list, int i10) {
        return methodThrows(list, null, i10, -1);
    }

    public static TypeAnnotationPosition methodTypeParameter(List<TypePathEntry> list, int i10) {
        return methodTypeParameter(list, null, i10, -1);
    }

    public static TypeAnnotationPosition methodTypeParameterBound(List<TypePathEntry> list, int i10, int i11) {
        return methodTypeParameterBound(list, null, i10, i11, -1);
    }

    public static TypeAnnotationPosition newObj(int i10) {
        return newObj(emptyPath, null, i10);
    }

    public static TypeAnnotationPosition resourceVariable(JCTree.JCLambda jCLambda, int i10) {
        return resourceVariable(emptyPath, jCLambda, i10);
    }

    public static TypeAnnotationPosition typeCast(List<TypePathEntry> list, int i10) {
        return typeCast(list, null, i10, -1);
    }

    public static TypeAnnotationPosition typeParameter(List<TypePathEntry> list, int i10) {
        return typeParameter(list, null, i10, -1);
    }

    public static TypeAnnotationPosition typeParameterBound(List<TypePathEntry> list, int i10, int i11) {
        return typeParameterBound(list, null, i10, i11, -1);
    }

    public static TypeAnnotationPosition classExtends(List<TypePathEntry> list, int i10) {
        return classExtends(list, null, i10, -1);
    }

    public static TypeAnnotationPosition exceptionParameter(List<TypePathEntry> list) {
        return exceptionParameter(list, null, -1);
    }

    public static TypeAnnotationPosition field(int i10) {
        return field(emptyPath, null, i10);
    }

    public static TypeAnnotationPosition localVariable(List<TypePathEntry> list) {
        return localVariable(list, null, -1);
    }

    public static TypeAnnotationPosition methodParameter(int i10, int i11) {
        return methodParameter(null, i10, i11);
    }

    public static TypeAnnotationPosition methodReceiver(int i10) {
        return methodReceiver(emptyPath, null, i10);
    }

    public static TypeAnnotationPosition methodReturn(int i10) {
        return methodReturn(emptyPath, null, i10);
    }

    public static TypeAnnotationPosition newObj(List<TypePathEntry> list) {
        return newObj(list, null, -1);
    }

    public static TypeAnnotationPosition resourceVariable(List<TypePathEntry> list) {
        return resourceVariable(list, null, -1);
    }

    public static class TypePathEntry {
        public static final TypePathEntry ARRAY = new TypePathEntry(TypePathEntryKind.ARRAY);
        public static final TypePathEntry INNER_TYPE = new TypePathEntry(TypePathEntryKind.INNER_TYPE);
        public static final TypePathEntry WILDCARD = new TypePathEntry(TypePathEntryKind.WILDCARD);
        public static final int bytesPerEntry = 2;
        public final int arg;
        public final TypePathEntryKind tag;

        private TypePathEntry(TypePathEntryKind typePathEntryKind) {
            Assert.check(typePathEntryKind == TypePathEntryKind.ARRAY || typePathEntryKind == TypePathEntryKind.INNER_TYPE || typePathEntryKind == TypePathEntryKind.WILDCARD);
            this.tag = typePathEntryKind;
            this.arg = 0;
        }

        public static TypePathEntry fromBinary(int i10, int i11) {
            Assert.check(i11 == 0 || i10 == TypePathEntryKind.TYPE_ARGUMENT.tag);
            if (i10 == 0) {
                return ARRAY;
            }
            if (i10 == 1) {
                return INNER_TYPE;
            }
            if (i10 == 2) {
                return WILDCARD;
            }
            if (i10 == 3) {
                return new TypePathEntry(TypePathEntryKind.TYPE_ARGUMENT, i11);
            }
            Assert.error("Invalid TypePathEntryKind tag: " + i10);
            return null;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof TypePathEntry)) {
                return false;
            }
            TypePathEntry typePathEntry = (TypePathEntry) obj;
            return this.tag == typePathEntry.tag && this.arg == typePathEntry.arg;
        }

        public int hashCode() {
            return (this.tag.hashCode() * 17) + this.arg;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.tag.toString());
            if (this.tag == TypePathEntryKind.TYPE_ARGUMENT) {
                str = "(" + this.arg + ")";
            } else {
                str = "";
            }
            sb2.append(str);
            return sb2.toString();
        }

        public TypePathEntry(TypePathEntryKind typePathEntryKind, int i10) {
            Assert.check(typePathEntryKind == TypePathEntryKind.TYPE_ARGUMENT);
            this.tag = typePathEntryKind;
            this.arg = i10;
        }
    }

    public static TypeAnnotationPosition classExtends(int i10, int i11) {
        return classExtends(emptyPath, null, i10, i11);
    }

    public static TypeAnnotationPosition methodParameter(List<TypePathEntry> list, int i10) {
        return methodParameter(list, null, i10, -1);
    }

    public static TypeAnnotationPosition classExtends(int i10) {
        return classExtends(65535, i10);
    }
}
