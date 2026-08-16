package java.lang.classfile;

import java.lang.classfile.Signature;
import java.lang.constant.MethodTypeDesc;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import jdk.internal.classfile.impl.SignaturesImpl;
import jdk.internal.classfile.impl.Util;

public interface MethodSignature {
    List<Signature.TypeParam> typeParameters();

    List<Signature> arguments();

    Signature result();

    List<Signature.ThrowableSig> throwableSignatures();

    String signatureString();

    static MethodSignature of(MethodTypeDesc methodDescriptor) {
        Objects.requireNonNull(methodDescriptor);
        return new SignaturesImpl.MethodSignatureImpl(List.of(), List.of(), Signature.of(methodDescriptor.returnType()), Util.mappedList(methodDescriptor.parameterList(), Signature::of));
    }

    static MethodSignature of(Signature result, Signature... arguments) {
        return new SignaturesImpl.MethodSignatureImpl(List.of(), List.of(), (Signature) Objects.requireNonNull(result), List.of(arguments));
    }

    static MethodSignature of(List<Signature.TypeParam> typeParameters, List<Signature.ThrowableSig> exceptions, Signature result, Signature... arguments) {
        return new SignaturesImpl.MethodSignatureImpl(List.copyOf((Collection) Objects.requireNonNull(typeParameters)), List.copyOf((Collection) Objects.requireNonNull(exceptions)), (Signature) Objects.requireNonNull(result), List.of(arguments));
    }

    static MethodSignature parseFrom(String methodSignature) {
        return new SignaturesImpl(methodSignature).parseMethodSignature();
    }
}
