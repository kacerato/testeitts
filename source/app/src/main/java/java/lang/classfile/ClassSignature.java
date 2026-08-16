package java.lang.classfile;

import java.lang.classfile.Signature;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import jdk.internal.classfile.impl.SignaturesImpl;

public interface ClassSignature {
    List<Signature.TypeParam> typeParameters();

    Signature.ClassTypeSig superclassSignature();

    List<Signature.ClassTypeSig> superinterfaceSignatures();

    String signatureString();

    static ClassSignature of(Signature.ClassTypeSig superclassSignature, Signature.ClassTypeSig... superinterfaceSignatures) {
        return of(List.of(), superclassSignature, superinterfaceSignatures);
    }

    static ClassSignature of(List<Signature.TypeParam> typeParameters, Signature.ClassTypeSig superclassSignature, Signature.ClassTypeSig... superinterfaceSignatures) {
        return new SignaturesImpl.ClassSignatureImpl(List.copyOf((Collection) Objects.requireNonNull(typeParameters)), (Signature.ClassTypeSig) Objects.requireNonNull(superclassSignature), List.of(superinterfaceSignatures));
    }

    static ClassSignature parseFrom(String classSignature) {
        return new SignaturesImpl(classSignature).parseClassSignature();
    }
}
