package java.lang.constant;

import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.invoke.TypeDescriptor;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import org.openjdk.tools.doclint.DocLint;

public interface MethodTypeDesc extends ConstantDesc, TypeDescriptor.OfMethod<ClassDesc, MethodTypeDesc> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    ClassDesc returnType();

    @Override
    int parameterCount();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    ClassDesc parameterType(int i10);

    @Override
    List<ClassDesc> parameterList();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    ClassDesc[] parameterArray();

    @Override
    MethodTypeDesc changeReturnType(ClassDesc classDesc);

    @Override
    MethodTypeDesc changeParameterType(int i10, ClassDesc classDesc);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    MethodTypeDesc dropParameterTypes(int i10, int i11);

    @Override
    MethodTypeDesc insertParameterTypes(int i10, ClassDesc... classDescArr);

    @Override
    String descriptorString();

    @Override
    MethodType resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException;

    boolean equals(Object obj);

    static MethodTypeDesc ofDescriptor(String descriptor) {
        return MethodTypeDescImpl.ofDescriptor(descriptor);
    }

    static MethodTypeDesc of(ClassDesc returnDesc) {
        return MethodTypeDescImpl.ofValidated((ClassDesc) Objects.requireNonNull(returnDesc), ConstantUtils.EMPTY_CLASSDESC);
    }

    static MethodTypeDesc of(ClassDesc returnDesc, List<ClassDesc> paramDescs) {
        return of(returnDesc, (ClassDesc[]) paramDescs.toArray(ConstantUtils.EMPTY_CLASSDESC));
    }

    static MethodTypeDesc of(ClassDesc returnDesc, ClassDesc... paramDescs) {
        return MethodTypeDescImpl.ofTrusted(returnDesc, (ClassDesc[]) paramDescs.clone());
    }

    default String displayDescriptor() {
        return String.format("(%s)%s", Stream.of((Object[]) parameterArray()).map((v0) -> {
            return v0.displayName();
        }).collect(Collectors.joining(DocLint.SEPARATOR)), returnType().displayName());
    }
}
