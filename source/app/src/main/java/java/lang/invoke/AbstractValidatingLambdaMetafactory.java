package java.lang.invoke;

import java.lang.invoke.MethodHandles;
import java.lang.reflect.Modifier;
import sun.invoke.util.Wrapper;

abstract class AbstractValidatingLambdaMetafactory {
    final MethodHandles.Lookup caller;
    final Class<?> targetClass;
    final MethodType factoryType;
    final Class<?> interfaceClass;
    final String interfaceMethodName;
    final MethodType interfaceMethodType;
    final MethodHandle implementation;
    final MethodType implMethodType;
    final MethodHandleInfo implInfo;
    final int implKind;
    final boolean implIsInstanceMethod;
    final Class<?> implClass;
    final MethodType dynamicMethodType;
    final boolean isSerializable;
    final Class<?>[] altInterfaces;
    final MethodType[] altMethods;

    public abstract CallSite buildCallSite() throws LambdaConversionException;

    public AbstractValidatingLambdaMetafactory(MethodHandles.Lookup caller, MethodType factoryType, String interfaceMethodName, MethodType interfaceMethodType, MethodHandle implementation, MethodType dynamicMethodType, boolean isSerializable, Class<?>[] altInterfaces, MethodType[] altMethods) throws LambdaConversionException {
        if (!caller.hasFullPrivilegeAccess()) {
            throw new LambdaConversionException(String.format("Invalid caller: %s", caller.lookupClass().getName()));
        }
        this.caller = caller;
        this.targetClass = caller.lookupClass();
        this.factoryType = factoryType;
        this.interfaceClass = factoryType.returnType();
        this.interfaceMethodName = interfaceMethodName;
        this.interfaceMethodType = interfaceMethodType;
        this.implementation = implementation;
        this.implMethodType = implementation.type();
        try {
            this.implInfo = caller.revealDirect(implementation);
            switch (this.implInfo.getReferenceKind()) {
                case 5:
                case 9:
                    this.implClass = this.implMethodType.parameterType(0);
                    this.implKind = this.implClass.isInterface() ? 9 : 5;
                    this.implIsInstanceMethod = true;
                    break;
                case 6:
                case 8:
                    this.implClass = this.implInfo.getDeclaringClass();
                    this.implKind = this.implInfo.getReferenceKind();
                    this.implIsInstanceMethod = false;
                    break;
                case 7:
                    this.implClass = this.implInfo.getDeclaringClass();
                    this.implIsInstanceMethod = true;
                    if (this.targetClass == this.implClass && Modifier.isPrivate(this.implInfo.getModifiers())) {
                        this.implKind = this.implClass.isInterface() ? 9 : 5;
                        break;
                    } else {
                        this.implKind = 7;
                        break;
                    }
                    break;
                default:
                    throw new LambdaConversionException(String.format("Unsupported MethodHandle kind: %s", this.implInfo));
            }
            this.dynamicMethodType = dynamicMethodType;
            this.isSerializable = isSerializable;
            this.altInterfaces = altInterfaces;
            this.altMethods = altMethods;
            if (interfaceMethodName.isEmpty() || interfaceMethodName.indexOf(46) >= 0 || interfaceMethodName.indexOf(59) >= 0 || interfaceMethodName.indexOf(91) >= 0 || interfaceMethodName.indexOf(47) >= 0 || interfaceMethodName.indexOf(60) >= 0 || interfaceMethodName.indexOf(62) >= 0) {
                throw new LambdaConversionException(String.format("Method name '%s' is not legal", interfaceMethodName));
            }
            if (!this.interfaceClass.isInterface()) {
                throw new LambdaConversionException(String.format("%s is not an interface", this.interfaceClass.getName()));
            }
            for (Class<?> c10 : altInterfaces) {
                if (!c10.isInterface()) {
                    throw new LambdaConversionException(String.format("%s is not an interface", c10.getName()));
                }
            }
        } catch (IllegalArgumentException e10) {
            throw new LambdaConversionException(((Object) implementation) + " is not direct or cannot be cracked");
        }
    }

    public void validateMetafactoryArgs() throws LambdaConversionException {
        int capturedStart;
        int samStart;
        Class<?> receiverClass;
        int implArity = this.implMethodType.parameterCount();
        int capturedArity = this.factoryType.parameterCount();
        int samArity = this.interfaceMethodType.parameterCount();
        int dynamicArity = this.dynamicMethodType.parameterCount();
        if (implArity != capturedArity + samArity) {
            Object[] objArr = new Object[5];
            objArr[0] = this.implIsInstanceMethod ? "instance" : "static";
            objArr[1] = this.implInfo;
            objArr[2] = Integer.valueOf(capturedArity);
            objArr[3] = Integer.valueOf(samArity);
            objArr[4] = Integer.valueOf(implArity);
            throw new LambdaConversionException(String.format("Incorrect number of parameters for %s method %s; %d captured parameters, %d functional interface method parameters, %d implementation parameters", objArr));
        }
        if (dynamicArity != samArity) {
            Object[] objArr2 = new Object[4];
            objArr2[0] = this.implIsInstanceMethod ? "instance" : "static";
            objArr2[1] = this.implInfo;
            objArr2[2] = Integer.valueOf(dynamicArity);
            objArr2[3] = Integer.valueOf(samArity);
            throw new LambdaConversionException(String.format("Incorrect number of parameters for %s method %s; %d dynamic parameters, %d functional interface method parameters", objArr2));
        }
        for (MethodType bridgeMT : this.altMethods) {
            if (bridgeMT.parameterCount() != samArity) {
                throw new LambdaConversionException(String.format("Incorrect number of parameters for bridge signature %s; incompatible with %s", bridgeMT, this.interfaceMethodType));
            }
        }
        if (this.implIsInstanceMethod) {
            if (capturedArity == 0) {
                capturedStart = 0;
                samStart = 1;
                receiverClass = this.dynamicMethodType.parameterType(0);
            } else {
                capturedStart = 1;
                samStart = capturedArity;
                receiverClass = this.factoryType.parameterType(0);
            }
            if (!this.implClass.isAssignableFrom(receiverClass)) {
                throw new LambdaConversionException(String.format("Invalid receiver type %s; not a subtype of implementation type %s", receiverClass, this.implClass));
            }
        } else {
            capturedStart = 0;
            samStart = capturedArity;
        }
        for (int i10 = capturedStart; i10 < capturedArity; i10++) {
            Class<?> implParamType = this.implMethodType.parameterType(i10);
            Class<?> capturedParamType = this.factoryType.parameterType(i10);
            if (!capturedParamType.equals(implParamType)) {
                throw new LambdaConversionException(String.format("Type mismatch in captured lambda parameter %d: expecting %s, found %s", Integer.valueOf(i10), capturedParamType, implParamType));
            }
        }
        for (int i11 = samStart; i11 < implArity; i11++) {
            Class<?> implParamType2 = this.implMethodType.parameterType(i11);
            Class<?> dynamicParamType = this.dynamicMethodType.parameterType(i11 - capturedArity);
            if (!isAdaptableTo(dynamicParamType, implParamType2, true)) {
                throw new LambdaConversionException(String.format("Type mismatch for lambda argument %d: %s is not convertible to %s", Integer.valueOf(i11), dynamicParamType, implParamType2));
            }
        }
        Class<?> expectedType = this.dynamicMethodType.returnType();
        Class<?> actualReturnType = this.implMethodType.returnType();
        if (!isAdaptableToAsReturn(actualReturnType, expectedType)) {
            throw new LambdaConversionException(String.format("Type mismatch for lambda return: %s is not convertible to %s", actualReturnType, expectedType));
        }
        checkDescriptor(this.interfaceMethodType);
        for (MethodType methodType : this.altMethods) {
            checkDescriptor(methodType);
        }
    }

    private void checkDescriptor(MethodType descriptor) throws LambdaConversionException {
        for (int i10 = 0; i10 < this.dynamicMethodType.parameterCount(); i10++) {
            Class<?> dynamicParamType = this.dynamicMethodType.parameterType(i10);
            Class<?> descriptorParamType = descriptor.parameterType(i10);
            if (!descriptorParamType.isAssignableFrom(dynamicParamType)) {
                String msg = String.format("Type mismatch for dynamic parameter %d: %s is not a subtype of %s", Integer.valueOf(i10), dynamicParamType, descriptorParamType);
                throw new LambdaConversionException(msg);
            }
        }
        Class<?> dynamicReturnType = this.dynamicMethodType.returnType();
        Class<?> descriptorReturnType = descriptor.returnType();
        if (!isAdaptableToAsReturnStrict(dynamicReturnType, descriptorReturnType)) {
            String msg2 = String.format("Type mismatch for lambda expected return: %s is not convertible to %s", dynamicReturnType, descriptorReturnType);
            throw new LambdaConversionException(msg2);
        }
    }

    private boolean isAdaptableTo(Class<?> fromType, Class<?> toType, boolean strict) {
        if (fromType.equals(toType)) {
            return true;
        }
        if (fromType.isPrimitive()) {
            Wrapper wfrom = Wrapper.forPrimitiveType(fromType);
            if (toType.isPrimitive()) {
                Wrapper wto = Wrapper.forPrimitiveType(toType);
                return wto.isConvertibleFrom(wfrom);
            }
            return toType.isAssignableFrom(wfrom.wrapperType());
        }
        if (!toType.isPrimitive()) {
            return !strict || toType.isAssignableFrom(fromType);
        }
        if (Wrapper.isWrapperType(fromType)) {
            Wrapper wfrom2 = Wrapper.forWrapperType(fromType);
            if (wfrom2.primitiveType().isPrimitive()) {
                Wrapper wto2 = Wrapper.forPrimitiveType(toType);
                return wto2.isConvertibleFrom(wfrom2);
            }
        }
        return !strict;
    }

    private boolean isAdaptableToAsReturn(Class<?> fromType, Class<?> toType) {
        return toType.equals(Void.TYPE) || (!fromType.equals(Void.TYPE) && isAdaptableTo(fromType, toType, false));
    }

    private boolean isAdaptableToAsReturnStrict(Class<?> fromType, Class<?> toType) {
        return (fromType.equals(Void.TYPE) || toType.equals(Void.TYPE)) ? fromType.equals(toType) : isAdaptableTo(fromType, toType, true);
    }
}
