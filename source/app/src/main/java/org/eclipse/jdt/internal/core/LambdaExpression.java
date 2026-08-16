package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public class LambdaExpression extends SourceType {
    protected int arrowPosition;
    SourceTypeElementInfo elementInfo;
    protected String interphase;
    LambdaMethod lambdaMethod;
    protected int sourceEnd;
    protected int sourceStart;

    public LambdaExpression(JavaElement javaElement, org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        super(javaElement, new String(CharOperation.NO_CHAR));
        this.sourceStart = lambdaExpression.sourceStart;
        this.sourceEnd = lambdaExpression.sourceEnd;
        this.arrowPosition = lambdaExpression.arrowPosition;
        String str = new String(CharOperation.replaceOnCopy(findLambdaSuperType(lambdaExpression).genericTypeSignature(), '/', '.'));
        this.interphase = str;
        this.elementInfo = makeTypeElementInfo(this, str, this.sourceStart, this.sourceEnd, this.arrowPosition);
        LambdaMethod createLambdaMethod = LambdaFactory.createLambdaMethod(this, lambdaExpression);
        this.lambdaMethod = createLambdaMethod;
        this.elementInfo.children = new IJavaElement[]{createLambdaMethod};
    }

    private static SourceTypeElementInfo makeTypeElementInfo(LambdaExpression lambdaExpression, String str, int i10, int i11, int i12) {
        SourceTypeElementInfo sourceTypeElementInfo = new SourceTypeElementInfo();
        sourceTypeElementInfo.setFlags(0);
        sourceTypeElementInfo.setHandle(lambdaExpression);
        sourceTypeElementInfo.setSourceRangeStart(i10);
        sourceTypeElementInfo.setSourceRangeEnd(i11);
        sourceTypeElementInfo.setNameSourceStart(i10);
        sourceTypeElementInfo.setNameSourceEnd(i12);
        sourceTypeElementInfo.setSuperclassName(null);
        sourceTypeElementInfo.addCategories(lambdaExpression, null);
        sourceTypeElementInfo.setSuperInterfaceNames(new char[][]{JavaModelManager.getJavaModelManager().intern(Signature.toString(str).toCharArray())});
        return sourceTypeElementInfo;
    }

    @Override
    public void closing(Object obj) throws JavaModelException {
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LambdaExpression) {
            LambdaExpression lambdaExpression = (LambdaExpression) obj;
            if (this.sourceStart != lambdaExpression.sourceStart) {
                return false;
            }
            ITypeRoot typeRoot = getTypeRoot();
            ITypeRoot typeRoot2 = lambdaExpression.getTypeRoot();
            if (typeRoot.getElementName().equals(typeRoot2.getElementName()) && typeRoot.getParent().equals(typeRoot2.getParent())) {
                return true;
            }
        }
        return false;
    }

    public TypeBinding findLambdaSuperType(org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        TypeBinding original = lambdaExpression.resolvedType.original();
        ReferenceBinding referenceBinding = lambdaExpression.descriptor.declaringClass;
        if (!(referenceBinding instanceof ParameterizedTypeBinding)) {
            return original;
        }
        final ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) referenceBinding;
        final TypeBinding findSuperTypeOriginatingFrom = original.findSuperTypeOriginatingFrom(referenceBinding);
        return Scope.substitute(new Substitution() {
            @Override
            public LookupEnvironment environment() {
                return parameterizedTypeBinding.environment;
            }

            @Override
            public boolean isRawSubstitution() {
                return parameterizedTypeBinding.isRawType();
            }

            @Override
            public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
                TypeBinding typeBinding = findSuperTypeOriginatingFrom;
                if (typeBinding instanceof ParameterizedTypeBinding) {
                    TypeBinding[] typeBindingArr = ((ParameterizedTypeBinding) typeBinding).arguments;
                    for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
                        if (TypeBinding.equalsEquals(typeBindingArr[i10], typeVariableBinding)) {
                            return parameterizedTypeBinding.arguments[i10];
                        }
                    }
                }
                return parameterizedTypeBinding.substitute(typeVariableBinding);
            }
        }, original);
    }

    @Override
    public IJavaElement[] getChildren() throws JavaModelException {
        return new IJavaElement[]{this.lambdaMethod};
    }

    @Override
    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return this.elementInfo;
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        if (str.charAt(0) != '&') {
            return null;
        }
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        String nextToken = mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens() || mementoTokenizer.nextToken().charAt(0) != '!' || !mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        int parseInt = Integer.parseInt(mementoTokenizer.nextToken());
        String[] strArr = new String[parseInt];
        String[] strArr2 = new String[parseInt];
        for (int i10 = 0; i10 < parseInt; i10++) {
            if (mementoTokenizer.hasMoreTokens() && mementoTokenizer.nextToken().charAt(0) == '\"') {
                strArr[i10] = mementoTokenizer.nextToken();
                if (mementoTokenizer.hasMoreTokens() && mementoTokenizer.nextToken().charAt(0) == '\"') {
                    strArr2[i10] = mementoTokenizer.nextToken();
                }
            }
            return this;
        }
        if (mementoTokenizer.hasMoreTokens() && mementoTokenizer.nextToken().charAt(0) == '\"') {
            String nextToken2 = mementoTokenizer.nextToken();
            if (mementoTokenizer.hasMoreTokens() && mementoTokenizer.nextToken().charAt(0) == '\"') {
                this.lambdaMethod = LambdaFactory.createLambdaMethod(this, nextToken, mementoTokenizer.nextToken(), this.sourceStart, this.sourceEnd, this.arrowPosition, strArr, strArr2, nextToken2);
                ILocalVariable[] iLocalVariableArr = new ILocalVariable[parseInt];
                for (int i11 = 0; i11 < parseInt; i11++) {
                    iLocalVariableArr[i11] = (ILocalVariable) this.lambdaMethod.getHandleFromMemento(mementoTokenizer, workingCopyOwner);
                }
                LambdaMethod lambdaMethod = this.lambdaMethod;
                lambdaMethod.elementInfo.arguments = iLocalVariableArr;
                this.elementInfo.children = new IJavaElement[]{lambdaMethod};
                return !mementoTokenizer.hasMoreTokens() ? this.lambdaMethod : mementoTokenizer.nextToken().charAt(0) != '&' ? this : !mementoTokenizer.hasMoreTokens() ? this.lambdaMethod : this.lambdaMethod.getHandleFromMemento(mementoTokenizer, workingCopyOwner);
            }
        }
        return this;
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        getHandleMemento(stringBuffer, true, true);
        appendEscapedDelimiter(stringBuffer, getHandleMementoDelimiter());
    }

    @Override
    public char getHandleMementoDelimiter() {
        return ')';
    }

    public IMethod getMethod() {
        return this.lambdaMethod;
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        CompilationUnit compilationUnit;
        if (z10 && ((compilationUnit = (CompilationUnit) getAncestor(5)) == null || compilationUnit.isPrimary())) {
            return this;
        }
        IJavaElement primaryElement = this.parent.getPrimaryElement(false);
        if (!(primaryElement instanceof JavaElement)) {
            return this;
        }
        StringBuffer stringBuffer = new StringBuffer(32);
        getHandleMemento(stringBuffer, false, true);
        return ((JavaElement) primaryElement).getHandleFromMemento(new MementoTokenizer(stringBuffer.toString()), DefaultWorkingCopyOwner.PRIMARY).getParent();
    }

    @Override
    public String[] getSuperInterfaceTypeSignatures() throws JavaModelException {
        return new String[]{this.interphase};
    }

    @Override
    public int hashCode() {
        return Util.combineHashCodes(super.hashCode(), this.sourceStart);
    }

    @Override
    public boolean isAnonymous() {
        return false;
    }

    @Override
    public boolean isLambda() {
        return true;
    }

    @Override
    public boolean isLocal() {
        return true;
    }

    @Override
    public JavaElement resolved(Binding binding) {
        return new ResolvedLambdaExpression(this.parent, this, new String(binding.computeUniqueKey()));
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        super.toStringName(stringBuffer);
        stringBuffer.append("<lambda #");
        stringBuffer.append(this.occurrenceCount);
        stringBuffer.append(">");
    }

    public void getHandleMemento(StringBuffer stringBuffer, boolean z10, boolean z11) {
        if (z10) {
            ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        }
        appendEscapedDelimiter(stringBuffer, getHandleMementoDelimiter());
        appendEscapedDelimiter(stringBuffer, '\"');
        escapeMementoName(stringBuffer, this.interphase);
        stringBuffer.append('!');
        stringBuffer.append(this.sourceStart);
        stringBuffer.append('!');
        stringBuffer.append(this.sourceEnd);
        stringBuffer.append('!');
        stringBuffer.append(this.arrowPosition);
        if (z11) {
            this.lambdaMethod.getHandleMemento(stringBuffer, false);
        }
    }

    public LambdaExpression(JavaElement javaElement, String str, int i10, int i11, int i12) {
        super(javaElement, new String(CharOperation.NO_CHAR));
        this.sourceEnd = i11;
        this.arrowPosition = i12;
        this.interphase = str;
        this.sourceStart = i10;
        this.elementInfo = makeTypeElementInfo(this, str, i10, i11, i12);
    }

    public LambdaExpression(JavaElement javaElement, String str, int i10, int i11, int i12, LambdaMethod lambdaMethod) {
        super(javaElement, new String(CharOperation.NO_CHAR));
        this.sourceEnd = i11;
        this.arrowPosition = i12;
        this.interphase = str;
        this.sourceStart = i10;
        SourceTypeElementInfo makeTypeElementInfo = makeTypeElementInfo(this, str, i10, i11, i12);
        this.elementInfo = makeTypeElementInfo;
        this.lambdaMethod = lambdaMethod;
        makeTypeElementInfo.children = new IJavaElement[]{lambdaMethod};
    }
}
