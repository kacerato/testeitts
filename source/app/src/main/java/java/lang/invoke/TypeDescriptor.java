package java.lang.invoke;

import java.util.List;

public interface TypeDescriptor {

    public interface OfField<F extends OfField<F>> extends TypeDescriptor {
        boolean isArray();

        boolean isPrimitive();

        F componentType();

        F arrayType();
    }

    public interface OfMethod<F extends OfField<F>, M extends OfMethod<F, M>> extends TypeDescriptor {
        int parameterCount();

        F parameterType(int i10);

        F returnType();

        F[] parameterArray();

        List<F> parameterList();

        M changeReturnType(F f10);

        M changeParameterType(int i10, F f10);

        M dropParameterTypes(int i10, int i11);

        M insertParameterTypes(int i10, F... fArr);
    }

    String descriptorString();
}
