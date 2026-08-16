package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.impl.Constant;

public class ElementValuePair {
    public MethodBinding binding;
    char[] name;
    public Object value;

    public static class UnresolvedEnumConstant {
        char[] enumConstantName;
        ReferenceBinding enumType;
        LookupEnvironment environment;

        public UnresolvedEnumConstant(ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment, char[] cArr) {
            this.enumType = referenceBinding;
            this.environment = lookupEnvironment;
            this.enumConstantName = cArr;
        }

        public char[] getEnumConstantName() {
            return this.enumConstantName;
        }

        public FieldBinding getResolved() {
            if (this.enumType.isUnresolvedType()) {
                this.enumType = (ReferenceBinding) BinaryTypeBinding.resolveType(this.enumType, this.environment, false);
            }
            return this.enumType.getField(this.enumConstantName, false);
        }
    }

    public ElementValuePair(char[] cArr, Expression expression, MethodBinding methodBinding) {
        this(cArr, getValue(expression), methodBinding);
    }

    public static Object getValue(Expression expression) {
        FieldBinding fieldBinding;
        Binding binding;
        if (expression == null) {
            return null;
        }
        Constant constant = expression.constant;
        if (constant != null && constant != Constant.NotAConstant) {
            return constant;
        }
        if (expression instanceof Annotation) {
            return ((Annotation) expression).getCompilerAnnotation();
        }
        if (expression instanceof ArrayInitializer) {
            Expression[] expressionArr = ((ArrayInitializer) expression).expressions;
            int length = expressionArr == null ? 0 : expressionArr.length;
            Object[] objArr = new Object[length];
            for (int i10 = 0; i10 < length; i10++) {
                objArr[i10] = getValue(expressionArr[i10]);
            }
            return objArr;
        }
        if (expression instanceof ClassLiteralAccess) {
            return ((ClassLiteralAccess) expression).targetType;
        }
        if (expression instanceof Reference) {
            if (expression instanceof FieldReference) {
                fieldBinding = ((FieldReference) expression).fieldBinding();
            } else {
                fieldBinding = ((expression instanceof NameReference) && (binding = ((NameReference) expression).binding) != null && binding.kind() == 1) ? (FieldBinding) binding : null;
            }
            if (fieldBinding != null && (fieldBinding.modifiers & 16384) > 0) {
                return fieldBinding;
            }
        }
        return null;
    }

    public MethodBinding getMethodBinding() {
        return this.binding;
    }

    public char[] getName() {
        return this.name;
    }

    public void setMethodBinding(MethodBinding methodBinding) {
        this.binding = methodBinding;
    }

    public void setValue(Object obj) {
        this.value = obj;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(5);
        stringBuffer.append(this.name);
        stringBuffer.append(" = ");
        stringBuffer.append(this.value);
        return stringBuffer.toString();
    }

    public ElementValuePair(char[] cArr, Object obj, MethodBinding methodBinding) {
        this.name = cArr;
        this.value = obj;
        this.binding = methodBinding;
    }

    public Object getValue() {
        Object obj = this.value;
        if (obj instanceof UnresolvedEnumConstant) {
            this.value = ((UnresolvedEnumConstant) obj).getResolved();
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj2 = objArr[i10];
                if (obj2 instanceof UnresolvedEnumConstant) {
                    objArr[i10] = ((UnresolvedEnumConstant) obj2).getResolved();
                }
            }
        }
        return this.value;
    }
}
