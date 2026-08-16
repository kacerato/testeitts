package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class LambdaFactory {
    public static LambdaExpression createLambdaExpression(JavaElement javaElement, org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        if (isBinaryMember(javaElement)) {
            return new BinaryLambdaExpression(javaElement, lambdaExpression);
        }
        return new LambdaExpression(javaElement, lambdaExpression);
    }

    public static LambdaMethod createLambdaMethod(JavaElement javaElement, org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        int length = lambdaExpression.descriptor.parameters.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = getTypeSignature(javaModelManager, lambdaExpression.descriptor.parameters[i10]);
        }
        String[] strArr2 = new String[length];
        for (int i11 = 0; i11 < length; i11++) {
            strArr2[i11] = javaModelManager.intern(new String(lambdaExpression.arguments[i11].name));
        }
        LambdaMethod createLambdaMethod = createLambdaMethod(javaElement, javaModelManager.intern(new String(lambdaExpression.descriptor.selector)), new String(lambdaExpression.descriptor.computeUniqueKey()), lambdaExpression.sourceStart, lambdaExpression.sourceEnd, lambdaExpression.arrowPosition, strArr, strArr2, getTypeSignature(javaModelManager, lambdaExpression.descriptor.returnType));
        int length2 = lambdaExpression.arguments.length;
        ILocalVariable[] iLocalVariableArr = new ILocalVariable[length2];
        for (int i12 = 0; i12 < length2; i12++) {
            Argument argument = lambdaExpression.arguments[i12];
            iLocalVariableArr[i12] = new LocalVariable(createLambdaMethod, new String(argument.name), argument.declarationSourceStart, argument.declarationSourceEnd, argument.sourceStart, argument.sourceEnd, javaModelManager.intern(new String(lambdaExpression.descriptor.parameters[i12].signature())), null, argument.modifiers, true);
        }
        createLambdaMethod.elementInfo.arguments = iLocalVariableArr;
        return createLambdaMethod;
    }

    private static String getTypeSignature(JavaModelManager javaModelManager, TypeBinding typeBinding) {
        return javaModelManager.intern(new String(CharOperation.replaceOnCopy(typeBinding.genericTypeSignature(), '/', '.')));
    }

    private static boolean isBinaryMember(JavaElement javaElement) {
        return javaElement instanceof BinaryMember;
    }

    public static LambdaExpression createLambdaExpression(JavaElement javaElement, String str, int i10, int i11, int i12) {
        if (isBinaryMember(javaElement)) {
            return new BinaryLambdaExpression(javaElement, str, i10, i11, i12);
        }
        return new LambdaExpression(javaElement, str, i10, i11, i12);
    }

    public static LambdaMethod createLambdaMethod(JavaElement javaElement, String str, String str2, int i10, int i11, int i12, String[] strArr, String[] strArr2, String str3) {
        boolean z10 = javaElement instanceof BinaryLambdaExpression;
        SourceMethodInfo sourceMethodInfo = new SourceMethodInfo();
        sourceMethodInfo.setSourceRangeStart(i10);
        sourceMethodInfo.setSourceRangeEnd(i11);
        sourceMethodInfo.setFlags(0);
        sourceMethodInfo.setNameSourceStart(i10);
        sourceMethodInfo.setNameSourceEnd(i12);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        int length = strArr2.length;
        char[][] cArr = new char[length];
        for (int i13 = 0; i13 < length; i13++) {
            cArr[i13] = javaModelManager.intern(strArr2[i13].toCharArray());
        }
        sourceMethodInfo.setArgumentNames(cArr);
        sourceMethodInfo.setReturnType(javaModelManager.intern(Signature.toCharArray(str3.toCharArray())));
        sourceMethodInfo.setExceptionTypeNames(CharOperation.NO_CHAR_CHAR);
        sourceMethodInfo.arguments = null;
        if (z10) {
            return new BinaryLambdaMethod(javaElement, str, str2, i10, strArr, strArr2, str3, sourceMethodInfo);
        }
        return new LambdaMethod(javaElement, str, str2, i10, strArr, strArr2, str3, sourceMethodInfo);
    }
}
