package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.ClassSignature;
import java.lang.classfile.FieldElement;
import java.lang.classfile.MethodElement;
import java.lang.classfile.MethodSignature;
import java.lang.classfile.Signature;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface SignatureAttribute extends Attribute<SignatureAttribute>, ClassElement, MethodElement, FieldElement {
    Utf8Entry signature();

    default ClassSignature asClassSignature() {
        return ClassSignature.parseFrom(signature().stringValue());
    }

    default MethodSignature asMethodSignature() {
        return MethodSignature.parseFrom(signature().stringValue());
    }

    default Signature asTypeSignature() {
        return Signature.parseFrom(signature().stringValue());
    }

    static SignatureAttribute of(ClassSignature classSignature) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(classSignature.signatureString()));
    }

    static SignatureAttribute of(MethodSignature methodSignature) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(methodSignature.signatureString()));
    }

    static SignatureAttribute of(Signature signature) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(signature.signatureString()));
    }

    static SignatureAttribute of(Utf8Entry signature) {
        return new UnboundAttribute.UnboundSignatureAttribute(signature);
    }
}
