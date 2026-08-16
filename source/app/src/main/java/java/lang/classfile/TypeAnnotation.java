package java.lang.classfile;

import java.util.List;
import jdk.internal.classfile.impl.TargetInfoImpl;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface TypeAnnotation {

    public interface CatchTarget extends TargetInfo {
        int exceptionTableIndex();
    }

    public interface EmptyTarget extends TargetInfo {
    }

    public interface FormalParameterTarget extends TargetInfo {
        int formalParameterIndex();
    }

    public interface LocalVarTarget extends TargetInfo {
        List<LocalVarTargetInfo> table();
    }

    public interface OffsetTarget extends TargetInfo {
        Label target();
    }

    public interface SupertypeTarget extends TargetInfo {
        int supertypeIndex();
    }

    public interface ThrowsTarget extends TargetInfo {
        int throwsTargetIndex();
    }

    public interface TypeArgumentTarget extends TargetInfo {
        Label target();

        int typeArgumentIndex();
    }

    public interface TypeParameterBoundTarget extends TargetInfo {
        int typeParameterIndex();

        int boundIndex();
    }

    public interface TypeParameterTarget extends TargetInfo {
        int typeParameterIndex();
    }

    TargetInfo targetInfo();

    List<TypePathComponent> targetPath();

    Annotation annotation();

    public enum TargetType {
        CLASS_TYPE_PARAMETER(0, 1),
        METHOD_TYPE_PARAMETER(1, 1),
        CLASS_EXTENDS(16, 2),
        CLASS_TYPE_PARAMETER_BOUND(17, 2),
        METHOD_TYPE_PARAMETER_BOUND(18, 2),
        FIELD(19, 0),
        METHOD_RETURN(20, 0),
        METHOD_RECEIVER(21, 0),
        METHOD_FORMAL_PARAMETER(22, 1),
        THROWS(23, 2),
        LOCAL_VARIABLE(64, -1),
        RESOURCE_VARIABLE(65, -1),
        EXCEPTION_PARAMETER(66, 2),
        INSTANCEOF(67, 2),
        NEW(68, 2),
        CONSTRUCTOR_REFERENCE(69, 2),
        METHOD_REFERENCE(70, 2),
        CAST(71, 3),
        CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT(72, 3),
        METHOD_INVOCATION_TYPE_ARGUMENT(73, 3),
        CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT(74, 3),
        METHOD_REFERENCE_TYPE_ARGUMENT(75, 3);

        private final int targetTypeValue;
        private final int sizeIfFixed;

        TargetType(int targetTypeValue, int sizeIfFixed) {
            this.targetTypeValue = targetTypeValue;
            this.sizeIfFixed = sizeIfFixed;
        }

        public int targetTypeValue() {
            return this.targetTypeValue;
        }

        public int sizeIfFixed() {
            return this.sizeIfFixed;
        }
    }

    static TypeAnnotation of(TargetInfo targetInfo, List<TypePathComponent> targetPath, Annotation annotation) {
        return new UnboundAttribute.UnboundTypeAnnotation(targetInfo, targetPath, annotation);
    }

    public interface TargetInfo {
        public static final int TARGET_CLASS_TYPE_PARAMETER = 0;
        public static final int TARGET_METHOD_TYPE_PARAMETER = 1;
        public static final int TARGET_CLASS_EXTENDS = 16;
        public static final int TARGET_CLASS_TYPE_PARAMETER_BOUND = 17;
        public static final int TARGET_METHOD_TYPE_PARAMETER_BOUND = 18;
        public static final int TARGET_FIELD = 19;
        public static final int TARGET_METHOD_RETURN = 20;
        public static final int TARGET_METHOD_RECEIVER = 21;
        public static final int TARGET_METHOD_FORMAL_PARAMETER = 22;
        public static final int TARGET_THROWS = 23;
        public static final int TARGET_LOCAL_VARIABLE = 64;
        public static final int TARGET_RESOURCE_VARIABLE = 65;
        public static final int TARGET_EXCEPTION_PARAMETER = 66;
        public static final int TARGET_INSTANCEOF = 67;
        public static final int TARGET_NEW = 68;
        public static final int TARGET_CONSTRUCTOR_REFERENCE = 69;
        public static final int TARGET_METHOD_REFERENCE = 70;
        public static final int TARGET_CAST = 71;
        public static final int TARGET_CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT = 72;
        public static final int TARGET_METHOD_INVOCATION_TYPE_ARGUMENT = 73;
        public static final int TARGET_CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT = 74;
        public static final int TARGET_METHOD_REFERENCE_TYPE_ARGUMENT = 75;

        TargetType targetType();

        default int size() {
            return targetType().sizeIfFixed;
        }

        static TypeParameterTarget ofTypeParameter(TargetType targetType, int typeParameterIndex) {
            return new TargetInfoImpl.TypeParameterTargetImpl(targetType, typeParameterIndex);
        }

        static TypeParameterTarget ofClassTypeParameter(int typeParameterIndex) {
            return ofTypeParameter(TargetType.CLASS_TYPE_PARAMETER, typeParameterIndex);
        }

        static TypeParameterTarget ofMethodTypeParameter(int typeParameterIndex) {
            return ofTypeParameter(TargetType.METHOD_TYPE_PARAMETER, typeParameterIndex);
        }

        static SupertypeTarget ofClassExtends(int supertypeIndex) {
            return new TargetInfoImpl.SupertypeTargetImpl(supertypeIndex);
        }

        static TypeParameterBoundTarget ofTypeParameterBound(TargetType targetType, int typeParameterIndex, int boundIndex) {
            return new TargetInfoImpl.TypeParameterBoundTargetImpl(targetType, typeParameterIndex, boundIndex);
        }

        static TypeParameterBoundTarget ofClassTypeParameterBound(int typeParameterIndex, int boundIndex) {
            return ofTypeParameterBound(TargetType.CLASS_TYPE_PARAMETER_BOUND, typeParameterIndex, boundIndex);
        }

        static TypeParameterBoundTarget ofMethodTypeParameterBound(int typeParameterIndex, int boundIndex) {
            return ofTypeParameterBound(TargetType.METHOD_TYPE_PARAMETER_BOUND, typeParameterIndex, boundIndex);
        }

        static EmptyTarget of(TargetType targetType) {
            return new TargetInfoImpl.EmptyTargetImpl(targetType);
        }

        static EmptyTarget ofField() {
            return of(TargetType.FIELD);
        }

        static EmptyTarget ofMethodReturn() {
            return of(TargetType.METHOD_RETURN);
        }

        static EmptyTarget ofMethodReceiver() {
            return of(TargetType.METHOD_RECEIVER);
        }

        static FormalParameterTarget ofMethodFormalParameter(int formalParameterIndex) {
            return new TargetInfoImpl.FormalParameterTargetImpl(formalParameterIndex);
        }

        static ThrowsTarget ofThrows(int throwsTargetIndex) {
            return new TargetInfoImpl.ThrowsTargetImpl(throwsTargetIndex);
        }

        static LocalVarTarget ofVariable(TargetType targetType, List<LocalVarTargetInfo> table) {
            return new TargetInfoImpl.LocalVarTargetImpl(targetType, table);
        }

        static LocalVarTarget ofLocalVariable(List<LocalVarTargetInfo> table) {
            return ofVariable(TargetType.LOCAL_VARIABLE, table);
        }

        static LocalVarTarget ofResourceVariable(List<LocalVarTargetInfo> table) {
            return ofVariable(TargetType.RESOURCE_VARIABLE, table);
        }

        static CatchTarget ofExceptionParameter(int exceptionTableIndex) {
            return new TargetInfoImpl.CatchTargetImpl(exceptionTableIndex);
        }

        static OffsetTarget ofOffset(TargetType targetType, Label target) {
            return new TargetInfoImpl.OffsetTargetImpl(targetType, target);
        }

        static OffsetTarget ofInstanceofExpr(Label target) {
            return ofOffset(TargetType.INSTANCEOF, target);
        }

        static OffsetTarget ofNewExpr(Label target) {
            return ofOffset(TargetType.NEW, target);
        }

        static OffsetTarget ofConstructorReference(Label target) {
            return ofOffset(TargetType.CONSTRUCTOR_REFERENCE, target);
        }

        static OffsetTarget ofMethodReference(Label target) {
            return ofOffset(TargetType.METHOD_REFERENCE, target);
        }

        static TypeArgumentTarget ofTypeArgument(TargetType targetType, Label target, int typeArgumentIndex) {
            return new TargetInfoImpl.TypeArgumentTargetImpl(targetType, target, typeArgumentIndex);
        }

        static TypeArgumentTarget ofCastExpr(Label target, int typeArgumentIndex) {
            return ofTypeArgument(TargetType.CAST, target, typeArgumentIndex);
        }

        static TypeArgumentTarget ofConstructorInvocationTypeArgument(Label target, int typeArgumentIndex) {
            return ofTypeArgument(TargetType.CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT, target, typeArgumentIndex);
        }

        static TypeArgumentTarget ofMethodInvocationTypeArgument(Label target, int typeArgumentIndex) {
            return ofTypeArgument(TargetType.METHOD_INVOCATION_TYPE_ARGUMENT, target, typeArgumentIndex);
        }

        static TypeArgumentTarget ofConstructorReferenceTypeArgument(Label target, int typeArgumentIndex) {
            return ofTypeArgument(TargetType.CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT, target, typeArgumentIndex);
        }

        static TypeArgumentTarget ofMethodReferenceTypeArgument(Label target, int typeArgumentIndex) {
            return ofTypeArgument(TargetType.METHOD_REFERENCE_TYPE_ARGUMENT, target, typeArgumentIndex);
        }
    }

    public interface LocalVarTargetInfo {
        Label startLabel();

        Label endLabel();

        int index();

        static LocalVarTargetInfo of(Label startLabel, Label endLabel, int index) {
            return new TargetInfoImpl.LocalVarTargetInfoImpl(startLabel, endLabel, index);
        }
    }

    public interface TypePathComponent {
        public static final TypePathComponent ARRAY = new UnboundAttribute.TypePathComponentImpl(Kind.ARRAY, 0);
        public static final TypePathComponent INNER_TYPE = new UnboundAttribute.TypePathComponentImpl(Kind.INNER_TYPE, 0);
        public static final TypePathComponent WILDCARD = new UnboundAttribute.TypePathComponentImpl(Kind.WILDCARD, 0);

        Kind typePathKind();

        int typeArgumentIndex();

        public enum Kind {
            ARRAY(0),
            INNER_TYPE(1),
            WILDCARD(2),
            TYPE_ARGUMENT(3);

            private final int tag;

            Kind(int tag) {
                this.tag = tag;
            }

            public int tag() {
                return this.tag;
            }
        }

        static TypePathComponent of(Kind typePathKind, int typeArgumentIndex) {
            switch (typePathKind) {
                case ARRAY:
                    return ARRAY;
                case INNER_TYPE:
                    return INNER_TYPE;
                case WILDCARD:
                    return WILDCARD;
                case TYPE_ARGUMENT:
                    return new UnboundAttribute.TypePathComponentImpl(Kind.TYPE_ARGUMENT, typeArgumentIndex);
                default:
                    throw new MatchException(null, null);
            }
        }
    }
}
