package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnMessageSend extends MessageSend {
    private MethodBinding findNonDefaultAbstractMethod(MethodBinding methodBinding) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] superInterfaces = methodBinding.declaringClass.superInterfaces();
        if (superInterfaces != Binding.NO_SUPERINTERFACES) {
            int length = superInterfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                ReferenceBinding referenceBinding = superInterfaces[i10];
                MethodBinding[] methods = referenceBinding.getMethods(methodBinding.selector);
                if (methods != null) {
                    for (int i11 = 0; i11 < methods.length; i11++) {
                        if (methodBinding.areParametersEqual(methods[i11])) {
                            return methods[i11];
                        }
                    }
                }
                ReferenceBinding[] superInterfaces2 = referenceBinding.superInterfaces();
                if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length2 = length + superInterfaces2.length;
                    if (length2 >= superInterfaces.length) {
                        referenceBindingArr = new ReferenceBinding[length2 + 5];
                        System.arraycopy(superInterfaces, 0, referenceBindingArr, 0, length);
                    } else {
                        referenceBindingArr = superInterfaces;
                    }
                    int i12 = length;
                    for (ReferenceBinding referenceBinding2 : superInterfaces2) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= i12) {
                                referenceBindingArr[i12] = referenceBinding2;
                                i12++;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr[i13])) {
                                break;
                            }
                            i13++;
                        }
                    }
                    superInterfaces = referenceBindingArr;
                    length = i12;
                }
            }
        }
        return methodBinding;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnMessageSend:");
        if (!this.receiver.isImplicitThis()) {
            this.receiver.printExpression(0, stringBuffer).append('.');
        }
        stringBuffer.append(this.selector);
        stringBuffer.append('(');
        if (this.arguments != null) {
            for (int i11 = 0; i11 < this.arguments.length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i11].printExpression(0, stringBuffer);
            }
        }
        stringBuffer.append(")>");
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding resolveType = super.resolveType(blockScope);
        if (resolveType != null && resolveType.isPolyType()) {
            return resolveType;
        }
        MethodBinding methodBinding = this.binding;
        if (methodBinding == null || !(methodBinding.isValidBinding() || this.binding.problemId() == 2 || this.binding.problemId() == 5 || this.binding.problemId() == 6 || this.binding.problemId() == 7)) {
            throw new SelectionNodeFound();
        }
        if (this.binding.isDefaultAbstract()) {
            throw new SelectionNodeFound(findNonDefaultAbstractMethod(this.binding));
        }
        throw new SelectionNodeFound(this.binding);
    }
}
