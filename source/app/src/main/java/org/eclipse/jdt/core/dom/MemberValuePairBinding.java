package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class MemberValuePairBinding implements IMemberValuePairBinding {
    protected BindingResolver bindingResolver;
    private ElementValuePair internalPair;
    protected Object value = null;
    static final MemberValuePairBinding[] NoPair = new MemberValuePairBinding[0];
    private static final Object NoValue = new Object();
    private static final Object[] EmptyArray = new Object[0];

    public MemberValuePairBinding(ElementValuePair elementValuePair, BindingResolver bindingResolver) {
        this.internalPair = elementValuePair;
        this.bindingResolver = bindingResolver;
    }

    public static void appendValue(Object obj, StringBuffer stringBuffer) {
        if (!(obj instanceof Object[])) {
            if (!(obj instanceof ITypeBinding)) {
                stringBuffer.append(obj);
                return;
            } else {
                stringBuffer.append(((ITypeBinding) obj).getName());
                stringBuffer.append(".class");
                return;
            }
        }
        Object[] objArr = (Object[]) obj;
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
            }
            appendValue(objArr[i10], stringBuffer);
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }

    public static Object buildDOMValue(Object obj, BindingResolver bindingResolver) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Constant) {
            Constant constant = (Constant) obj;
            switch (constant.typeID()) {
                case 2:
                    return Character.valueOf(constant.charValue());
                case 3:
                    return Byte.valueOf(constant.byteValue());
                case 4:
                    return Short.valueOf(constant.shortValue());
                case 5:
                    return Boolean.valueOf(constant.booleanValue());
                case 6:
                default:
                    return constant.stringValue();
                case 7:
                    return Long.valueOf(constant.longValue());
                case 8:
                    return new Double(constant.doubleValue());
                case 9:
                    return new Float(constant.floatValue());
                case 10:
                    return Integer.valueOf(constant.intValue());
            }
        }
        if (obj instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
            return bindingResolver.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) obj);
        }
        if (obj instanceof org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding) {
            return bindingResolver.getAnnotationInstance((org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding) obj);
        }
        if (obj instanceof FieldBinding) {
            return bindingResolver.getVariableBinding((FieldBinding) obj);
        }
        if (!(obj instanceof Object[])) {
            return null;
        }
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        Object[] objArr2 = length == 0 ? EmptyArray : new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            objArr2[i10] = buildDOMValue(objArr[i10], bindingResolver);
        }
        return objArr2;
    }

    private void init() {
        Object buildDOMValue = buildDOMValue(this.internalPair.getValue(), this.bindingResolver);
        this.value = buildDOMValue;
        if (buildDOMValue == null) {
            this.value = NoValue;
        }
        if (!getMethodBinding().getReturnType().isArray() || this.value.getClass().isArray()) {
            return;
        }
        this.value = new Object[]{this.value};
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    @Override
    public IJavaElement getJavaElement() {
        return null;
    }

    @Override
    public String getKey() {
        return null;
    }

    @Override
    public int getKind() {
        return 6;
    }

    @Override
    public IMethodBinding getMethodBinding() {
        return this.bindingResolver.getMethodBinding(this.internalPair.getMethodBinding());
    }

    @Override
    public int getModifiers() {
        return 0;
    }

    @Override
    public String getName() {
        char[] name;
        ElementValuePair elementValuePair = this.internalPair;
        if (elementValuePair == null || (name = elementValuePair.getName()) == null) {
            return null;
        }
        return new String(name);
    }

    @Override
    public Object getValue() {
        if (this.value == null) {
            init();
        }
        Object obj = this.value;
        if (obj == NoValue) {
            return null;
        }
        return obj;
    }

    public char[] internalName() {
        ElementValuePair elementValuePair = this.internalPair;
        if (elementValuePair == null) {
            return null;
        }
        return elementValuePair.getName();
    }

    @Override
    public boolean isDefault() {
        Object value = getValue();
        Object defaultValue = getMethodBinding().getDefaultValue();
        if (value instanceof IBinding) {
            if (defaultValue instanceof IBinding) {
                return ((IBinding) value).isEqualTo((IBinding) defaultValue);
            }
            return false;
        }
        if (defaultValue == null) {
            return false;
        }
        return defaultValue.equals(value);
    }

    @Override
    public boolean isDeprecated() {
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = this.internalPair.getMethodBinding();
        if (methodBinding == null) {
            return false;
        }
        return methodBinding.isDeprecated();
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (this == iBinding) {
            return true;
        }
        if (iBinding.getKind() != 6) {
            return false;
        }
        IMemberValuePairBinding iMemberValuePairBinding = (IMemberValuePairBinding) iBinding;
        if (!getMethodBinding().isEqualTo(iMemberValuePairBinding.getMethodBinding())) {
            return false;
        }
        Object value = iMemberValuePairBinding.getValue();
        Object value2 = getValue();
        if (value2 == null) {
            return value == null;
        }
        if (value2 instanceof IBinding) {
            if (value instanceof IBinding) {
                return ((IBinding) value2).isEqualTo((IBinding) value);
            }
            return false;
        }
        if (!value2.getClass().isArray()) {
            return value2.equals(value);
        }
        if (!value.getClass().isArray()) {
            return false;
        }
        Object[] objArr = (Object[]) value2;
        Object[] objArr2 = (Object[]) value;
        int length = objArr.length;
        if (length != objArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = objArr[i10];
            Object obj2 = objArr2[i10];
            if (obj instanceof IBinding) {
                if (!(obj2 instanceof IBinding) || !((IBinding) obj).isEqualTo((IBinding) obj2)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isRecovered() {
        return false;
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getName());
        stringBuffer.append(" = ");
        appendValue(getValue(), stringBuffer);
        return stringBuffer.toString();
    }
}
