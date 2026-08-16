package java.lang.classfile;

import java.lang.constant.ClassDesc;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.classfile.impl.SignaturesImpl;
import jdk.internal.classfile.impl.Util;

public interface Signature {

    public interface RefTypeSig extends Signature {
    }

    public interface ThrowableSig extends Signature {
    }

    String signatureString();

    static Signature parseFrom(String javaTypeSignature) {
        return new SignaturesImpl(javaTypeSignature).parseSignature();
    }

    static Signature of(ClassDesc classDesc) {
        Objects.requireNonNull(classDesc);
        if (classDesc.isArray()) {
            return ArrayTypeSig.of(of(classDesc.componentType()));
        }
        if (classDesc.isPrimitive()) {
            return BaseTypeSig.of(classDesc);
        }
        return ClassTypeSig.of(classDesc, new TypeArg[0]);
    }

    public interface BaseTypeSig extends Signature {
        char baseType();

        static BaseTypeSig of(ClassDesc classDesc) {
            Objects.requireNonNull(classDesc);
            if (!classDesc.isPrimitive()) {
                throw new IllegalArgumentException("primitive class type required");
            }
            return new SignaturesImpl.BaseTypeSigImpl(classDesc.descriptorString().charAt(0));
        }

        static BaseTypeSig of(char baseType) {
            if ("VIJCSBFDZ".indexOf(baseType) < 0) {
                throw new IllegalArgumentException("invalid base type signature");
            }
            return new SignaturesImpl.BaseTypeSigImpl(baseType);
        }
    }

    public interface ClassTypeSig extends RefTypeSig, ThrowableSig {
        Optional<ClassTypeSig> outerType();

        String className();

        List<TypeArg> typeArgs();

        default ClassDesc classDesc() {
            Optional<ClassTypeSig> outer = outerType();
            return outer.isEmpty() ? ClassDesc.ofInternalName(className()) : outer.get().classDesc().nested(className());
        }

        static ClassTypeSig of(ClassDesc className, TypeArg... typeArgs) {
            return of((ClassTypeSig) null, className, typeArgs);
        }

        static ClassTypeSig of(ClassTypeSig outerType, ClassDesc className, TypeArg... typeArgs) {
            Objects.requireNonNull(className);
            return of(outerType, Util.toInternalName(className), typeArgs);
        }

        static ClassTypeSig of(String className, TypeArg... typeArgs) {
            return of((ClassTypeSig) null, className, typeArgs);
        }

        static ClassTypeSig of(ClassTypeSig outerType, String className, TypeArg... typeArgs) {
            Objects.requireNonNull(className);
            return new SignaturesImpl.ClassTypeSigImpl(Optional.ofNullable(outerType), className.replace(".", "/"), List.of(typeArgs));
        }
    }

    public interface TypeArg {

        public interface Bounded extends TypeArg {

            public enum WildcardIndicator {
                NONE,
                EXTENDS,
                SUPER
            }

            WildcardIndicator wildcardIndicator();

            RefTypeSig boundType();
        }

        public interface Unbounded extends TypeArg {
        }

        static Bounded of(RefTypeSig boundType) {
            Objects.requireNonNull(boundType);
            return bounded(Bounded.WildcardIndicator.NONE, boundType);
        }

        static Unbounded unbounded() {
            return SignaturesImpl.UnboundedTypeArgImpl.INSTANCE;
        }

        static Bounded extendsOf(RefTypeSig boundType) {
            Objects.requireNonNull(boundType);
            return bounded(Bounded.WildcardIndicator.EXTENDS, boundType);
        }

        static Bounded superOf(RefTypeSig boundType) {
            Objects.requireNonNull(boundType);
            return bounded(Bounded.WildcardIndicator.SUPER, boundType);
        }

        static Bounded bounded(Bounded.WildcardIndicator wildcard, RefTypeSig boundType) {
            Objects.requireNonNull(wildcard);
            Objects.requireNonNull(boundType);
            return new SignaturesImpl.TypeArgImpl(wildcard, boundType);
        }
    }

    public interface TypeVarSig extends RefTypeSig, ThrowableSig {
        String identifier();

        static TypeVarSig of(String identifier) {
            return new SignaturesImpl.TypeVarSigImpl((String) Objects.requireNonNull(identifier));
        }
    }

    public interface ArrayTypeSig extends RefTypeSig {
        Signature componentSignature();

        static ArrayTypeSig of(Signature componentSignature) {
            return of(1, (Signature) Objects.requireNonNull(componentSignature));
        }

        static ArrayTypeSig of(int dims, Signature componentSignature) {
            Objects.requireNonNull(componentSignature);
            if (componentSignature instanceof SignaturesImpl.ArrayTypeSigImpl) {
                SignaturesImpl.ArrayTypeSigImpl arr = (SignaturesImpl.ArrayTypeSigImpl) componentSignature;
                if (dims < 1 || dims > 255 - arr.arrayDepth()) {
                    throw new IllegalArgumentException("illegal array depth value");
                }
                return new SignaturesImpl.ArrayTypeSigImpl(dims + arr.arrayDepth(), arr.elemType());
            }
            if (dims < 1 || dims > 255) {
                throw new IllegalArgumentException("illegal array depth value");
            }
            return new SignaturesImpl.ArrayTypeSigImpl(dims, componentSignature);
        }
    }

    public interface TypeParam {
        String identifier();

        Optional<RefTypeSig> classBound();

        List<RefTypeSig> interfaceBounds();

        static TypeParam of(String identifier, RefTypeSig classBound, RefTypeSig... interfaceBounds) {
            return new SignaturesImpl.TypeParamImpl((String) Objects.requireNonNull(identifier), Optional.ofNullable(classBound), List.of(interfaceBounds));
        }

        static TypeParam of(String identifier, Optional<RefTypeSig> classBound, RefTypeSig... interfaceBounds) {
            return new SignaturesImpl.TypeParamImpl((String) Objects.requireNonNull(identifier), (Optional) Objects.requireNonNull(classBound), List.of(interfaceBounds));
        }
    }
}
