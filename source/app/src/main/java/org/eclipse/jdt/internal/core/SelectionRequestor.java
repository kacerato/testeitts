package org.eclipse.jdt.internal.core;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.Util;

public class SelectionRequestor implements ISelectionRequestor {
    protected NameLookup nameLookup;
    protected Openable openable;
    protected IJavaElement[] elements = JavaElement.NO_ELEMENTS;
    protected int elementIndex = -1;
    protected HandleFactory handleFactory = new HandleFactory();

    public SelectionRequestor(NameLookup nameLookup, Openable openable) {
        this.nameLookup = nameLookup;
        this.openable = openable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.eclipse.jdt.internal.core.SelectionRequestor] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.eclipse.jdt.core.IJavaElement, org.eclipse.jdt.core.ISourceReference, org.eclipse.jdt.core.IMethod, org.eclipse.jdt.core.IMember] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v7, types: [org.eclipse.jdt.core.IJavaElement, java.lang.Object] */
    private void acceptBinaryMethod(IType iType, IMethod iMethod, char[] cArr, boolean z10) {
        if (z10) {
            try {
                if (((JavaElement) iMethod).getClassFile().getBuffer() != null) {
                    ISourceRange sourceRange = iMethod.getSourceRange();
                    if (sourceRange.getOffset() != -1) {
                        ResolvedBinaryMethod resolvedBinaryMethod = iMethod;
                        if (sourceRange.getLength() != 0) {
                            if (cArr != null) {
                                ResolvedBinaryMethod resolvedBinaryMethod2 = new ResolvedBinaryMethod((JavaElement) iMethod.getParent(), iMethod.getElementName(), iMethod.getParameterTypes(), new String(cArr));
                                resolvedBinaryMethod2.occurrenceCount = iMethod.getOccurrenceCount();
                                resolvedBinaryMethod = resolvedBinaryMethod2;
                            }
                            addElement(resolvedBinaryMethod);
                            if (SelectionEngine.DEBUG) {
                                PrintStream printStream = System.out;
                                printStream.print("SELECTION - accept method(");
                                printStream.print(resolvedBinaryMethod.toString());
                                printStream.println(")");
                                return;
                            }
                            return;
                        }
                    }
                    addElement(iType);
                    if (SelectionEngine.DEBUG) {
                        PrintStream printStream2 = System.out;
                        printStream2.print("SELECTION - accept type(");
                        printStream2.print(iType.toString());
                        printStream2.println(")");
                        return;
                    }
                    return;
                }
            } catch (JavaModelException unused) {
                return;
            }
        }
        if (cArr != null) {
            ResolvedBinaryMethod resolvedBinaryMethod3 = new ResolvedBinaryMethod((JavaElement) iMethod.getParent(), iMethod.getElementName(), iMethod.getParameterTypes(), new String(cArr));
            resolvedBinaryMethod3.occurrenceCount = iMethod.getOccurrenceCount();
            iMethod = resolvedBinaryMethod3;
        }
        addElement(iMethod);
        if (SelectionEngine.DEBUG) {
            PrintStream printStream3 = System.out;
            printStream3.print("SELECTION - accept method(");
            printStream3.print(iMethod.toString());
            printStream3.println(")");
        }
    }

    private boolean areTypeParametersCompatible(IMethod iMethod, char[][] cArr, char[][][] cArr2) {
        try {
            ITypeParameter[] typeParameters = iMethod.getTypeParameters();
            int length = typeParameters == null ? 0 : typeParameters.length;
            if (length != (cArr == null ? 0 : cArr.length)) {
                return false;
            }
            for (int i10 = 0; i10 < length; i10++) {
                ITypeParameter iTypeParameter = typeParameters[i10];
                if (!iTypeParameter.getElementName().equals(new String(cArr[i10]))) {
                    return false;
                }
                String[] bounds = iTypeParameter.getBounds();
                char[][] cArr3 = cArr2[i10];
                int length2 = cArr3 == null ? 0 : cArr3.length;
                if (bounds.length != length2) {
                    return false;
                }
                for (int i11 = 0; i11 < length2; i11++) {
                    String simpleName = Signature.getSimpleName(bounds[i11]);
                    int indexOf = simpleName.indexOf(60);
                    if (indexOf != -1) {
                        simpleName = simpleName.substring(0, indexOf);
                    }
                    if (!simpleName.equals(new String(cArr2[i10][i11]))) {
                        return false;
                    }
                }
            }
            return true;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    @Override
    public void acceptError(CategorizedProblem categorizedProblem) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v8, types: [org.eclipse.jdt.internal.core.ResolvedBinaryField, org.eclipse.jdt.internal.core.SourceRefElement] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.eclipse.jdt.internal.core.SelectionRequestor] */
    @Override
    public void acceptField(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, char[] cArr4, int i10, int i11) {
        ResolvedSourceField resolvedSourceField;
        if (z10) {
            IType resolveTypeByLocation = resolveTypeByLocation(cArr, cArr2, 30, i10, i11);
            if (resolveTypeByLocation != null) {
                try {
                    IField[] fields = resolveTypeByLocation.getFields();
                    for (int i12 = 0; i12 < fields.length; i12++) {
                        IField iField = fields[i12];
                        ISourceRange nameRange = iField.getNameRange();
                        if (nameRange.getOffset() <= i10 && nameRange.getOffset() + nameRange.getLength() >= i11 && iField.getElementName().equals(new String(cArr3))) {
                            addElement(fields[i12]);
                            if (SelectionEngine.DEBUG) {
                                PrintStream printStream = System.out;
                                printStream.print("SELECTION - accept field(");
                                printStream.print(iField.toString());
                                printStream.println(")");
                                return;
                            }
                            return;
                        }
                    }
                    return;
                } catch (JavaModelException unused) {
                    return;
                }
            }
            return;
        }
        IType resolveType = resolveType(cArr, cArr2, 30);
        if (resolveType != null) {
            IField field = resolveType.getField(new String(cArr3));
            if (field.exists()) {
                if (cArr4 != null) {
                    if (field.isBinary()) {
                        ?? resolvedBinaryField = new ResolvedBinaryField((JavaElement) field.getParent(), field.getElementName(), new String(cArr4));
                        resolvedBinaryField.occurrenceCount = field.getOccurrenceCount();
                        resolvedSourceField = resolvedBinaryField;
                    } else {
                        ResolvedSourceField resolvedSourceField2 = new ResolvedSourceField((JavaElement) field.getParent(), field.getElementName(), new String(cArr4));
                        resolvedSourceField2.occurrenceCount = field.getOccurrenceCount();
                        resolvedSourceField = resolvedSourceField2;
                    }
                    field = resolvedSourceField;
                }
                addElement(field);
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream2 = System.out;
                    printStream2.print("SELECTION - accept field(");
                    printStream2.print(field.toString());
                    printStream2.println(")");
                }
            }
        }
    }

    public void acceptLocalField(FieldBinding fieldBinding) {
        NamedMember resolvedSourceField;
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        IJavaElement findLocalElement = referenceBinding instanceof ParameterizedTypeBinding ? findLocalElement(((LocalTypeBinding) ((ParameterizedTypeBinding) referenceBinding).genericType()).sourceStart()) : findLocalElement(((SourceTypeBinding) referenceBinding).sourceStart());
        if (findLocalElement == null || findLocalElement.getElementType() != 7) {
            return;
        }
        IField field = ((IType) findLocalElement).getField(new String(fieldBinding.name));
        if (field.exists()) {
            char[] computeUniqueKey = fieldBinding.computeUniqueKey();
            if (field.isBinary()) {
                resolvedSourceField = new ResolvedBinaryField((JavaElement) field.getParent(), field.getElementName(), new String(computeUniqueKey));
                resolvedSourceField.occurrenceCount = field.getOccurrenceCount();
            } else {
                resolvedSourceField = new ResolvedSourceField((JavaElement) field.getParent(), field.getElementName(), new String(computeUniqueKey));
                resolvedSourceField.occurrenceCount = field.getOccurrenceCount();
            }
            addElement(resolvedSourceField);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream = System.out;
                printStream.print("SELECTION - accept field(");
                printStream.print(resolvedSourceField.toString());
                printStream.println(")");
            }
        }
    }

    public void acceptLocalMethod(MethodBinding methodBinding) {
        NamedMember resolvedSourceMethod;
        IJavaElement findLocalElement = findLocalElement(methodBinding.original().sourceStart());
        if (findLocalElement != null) {
            if (findLocalElement.getElementType() != 9) {
                if (methodBinding.selector == TypeConstants.INIT && findLocalElement.getElementType() == 7) {
                    IJavaElement resolved = ((JavaElement) findLocalElement).resolved(methodBinding.declaringClass);
                    addElement(resolved);
                    if (SelectionEngine.DEBUG) {
                        PrintStream printStream = System.out;
                        printStream.print("SELECTION - accept type(");
                        printStream.print(resolved.toString());
                        printStream.println(")");
                        return;
                    }
                    return;
                }
                return;
            }
            IMethod iMethod = (IMethod) findLocalElement;
            char[] computeUniqueKey = methodBinding.computeUniqueKey();
            if (iMethod.isBinary()) {
                resolvedSourceMethod = new ResolvedBinaryMethod((JavaElement) findLocalElement.getParent(), iMethod.getElementName(), iMethod.getParameterTypes(), new String(computeUniqueKey));
                resolvedSourceMethod.occurrenceCount = iMethod.getOccurrenceCount();
            } else {
                resolvedSourceMethod = new ResolvedSourceMethod((JavaElement) findLocalElement.getParent(), iMethod.getElementName(), iMethod.getParameterTypes(), new String(computeUniqueKey));
                resolvedSourceMethod.occurrenceCount = iMethod.getOccurrenceCount();
            }
            addElement(resolvedSourceMethod);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream2 = System.out;
                printStream2.print("SELECTION - accept method(");
                printStream2.print(resolvedSourceMethod.toString());
                printStream2.println(")");
            }
        }
    }

    public void acceptLocalMethodTypeParameter(TypeVariableBinding typeVariableBinding) {
        IJavaElement findLocalElement = findLocalElement(((MethodBinding) typeVariableBinding.declaringElement).sourceStart());
        if (findLocalElement == null || findLocalElement.getElementType() != 9) {
            return;
        }
        ITypeParameter typeParameter = ((IMethod) findLocalElement).getTypeParameter(new String(typeVariableBinding.sourceName));
        if (typeParameter.exists()) {
            addElement(typeParameter);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream = System.out;
                printStream.print("SELECTION - accept type parameter(");
                printStream.print(typeParameter.toString());
                printStream.println(")");
            }
        }
    }

    public void acceptLocalType(TypeBinding typeBinding) {
        IJavaElement findLocalElement = typeBinding instanceof ParameterizedTypeBinding ? findLocalElement(((LocalTypeBinding) ((ParameterizedTypeBinding) typeBinding).genericType()).sourceStart()) : typeBinding instanceof SourceTypeBinding ? findLocalElement(((SourceTypeBinding) typeBinding).sourceStart()) : null;
        if (findLocalElement == null || findLocalElement.getElementType() != 7) {
            return;
        }
        JavaElement resolved = ((JavaElement) findLocalElement).resolved(typeBinding);
        addElement(resolved);
        if (SelectionEngine.DEBUG) {
            PrintStream printStream = System.out;
            printStream.print("SELECTION - accept type(");
            printStream.print(resolved.toString());
            printStream.println(")");
        }
    }

    public void acceptLocalTypeParameter(TypeVariableBinding typeVariableBinding) {
        Binding binding = typeVariableBinding.declaringElement;
        IJavaElement findLocalElement = binding instanceof ParameterizedTypeBinding ? findLocalElement(((LocalTypeBinding) ((ParameterizedTypeBinding) binding).genericType()).sourceStart()) : findLocalElement(((SourceTypeBinding) binding).sourceStart());
        if (findLocalElement == null || findLocalElement.getElementType() != 7) {
            return;
        }
        ITypeParameter typeParameter = ((IType) findLocalElement).getTypeParameter(new String(typeVariableBinding.sourceName));
        if (typeParameter.exists()) {
            addElement(typeParameter);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream = System.out;
                printStream.print("SELECTION - accept type parameter(");
                printStream.print(typeParameter.toString());
                printStream.println(")");
            }
        }
    }

    public void acceptLocalVariable(LocalVariableBinding localVariableBinding, ICompilationUnit iCompilationUnit) {
        LocalVariable localVariable;
        String typeSignature;
        LocalDeclaration localDeclaration = localVariableBinding.declaration;
        IJavaElement createElement = (localVariableBinding.declaringScope.isLambdaSubscope() && (iCompilationUnit instanceof org.eclipse.jdt.core.ICompilationUnit)) ? this.handleFactory.createElement(localVariableBinding.declaringScope, localDeclaration.sourceStart, (org.eclipse.jdt.core.ICompilationUnit) iCompilationUnit, new HashSet(), new HashMap()) : findLocalElement(localDeclaration.sourceStart, localVariableBinding.declaringScope.methodScope());
        if (createElement != null) {
            TypeReference typeReference = localDeclaration.type;
            if (typeReference == null || typeReference.isTypeNameVar(localVariableBinding.declaringScope)) {
                Expression expression = localDeclaration.initialization;
                typeSignature = expression instanceof CastExpression ? Util.typeSignature(((CastExpression) expression).type) : Signature.createTypeSignature(localVariableBinding.type.signableName(), true);
            } else {
                typeSignature = Util.typeSignature(localDeclaration.type);
            }
            localVariable = new LocalVariable((JavaElement) createElement, new String(localDeclaration.name), localDeclaration.declarationSourceStart, localDeclaration.declarationSourceEnd, localDeclaration.sourceStart, localDeclaration.sourceEnd, typeSignature, localDeclaration.annotations, localDeclaration.modifiers, localDeclaration.getKind() == 5);
        } else {
            localVariable = null;
        }
        if (localVariable != null) {
            addElement(localVariable);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream = System.out;
                printStream.print("SELECTION - accept local variable(");
                printStream.print(localVariable.toString());
                printStream.println(")");
            }
        }
    }

    @Override
    public void acceptMethod(char[] cArr, char[] cArr2, String str, char[] cArr3, char[][] cArr4, char[][] cArr5, String[] strArr, char[][] cArr6, char[][][] cArr7, boolean z10, boolean z11, char[] cArr8, int i10, int i11) {
        boolean z12;
        char[][] cArr9;
        String[] strArr2;
        char[][] cArr10 = cArr4;
        IJavaElement[] iJavaElementArr = this.elements;
        int i12 = this.elementIndex;
        this.elements = JavaElement.NO_ELEMENTS;
        this.elementIndex = -1;
        if (z11) {
            IType resolveTypeByLocation = resolveTypeByLocation(cArr, cArr2, 30, i10, i11);
            if (resolveTypeByLocation != null) {
                acceptMethodDeclaration(resolveTypeByLocation, cArr3, i10, i11);
            }
        } else {
            IType resolveType = resolveType(cArr, cArr2, 30);
            if (resolveType != null) {
                if (resolveType.isBinary()) {
                    IType declaringType = resolveType.getDeclaringType();
                    try {
                        z12 = Flags.isStatic(resolveType.getFlags());
                    } catch (JavaModelException unused) {
                        z12 = false;
                    }
                    if (declaringType == null || !z10 || z12) {
                        cArr9 = cArr5;
                        strArr2 = strArr;
                    } else {
                        int length = cArr10.length;
                        int i13 = length + 1;
                        char[][] cArr11 = new char[i13];
                        System.arraycopy(cArr10, 0, cArr11, 1, length);
                        char[][] cArr12 = new char[i13];
                        System.arraycopy(cArr5, 0, cArr12, 1, length);
                        strArr2 = new String[i13];
                        System.arraycopy(strArr, 0, strArr2, 1, length);
                        cArr11[0] = declaringType.getPackageFragment().getElementName().toCharArray();
                        cArr12[0] = declaringType.getTypeQualifiedName().toCharArray();
                        strArr2[0] = Signature.getTypeErasure(str);
                        cArr9 = cArr12;
                        cArr10 = cArr11;
                    }
                    acceptBinaryMethod(resolveType, cArr3, cArr10, cArr9, strArr2, cArr6, cArr7, cArr8, z10);
                } else {
                    acceptSourceMethod(resolveType, cArr3, cArr4, cArr5, strArr, cArr6, cArr7, cArr8);
                }
            }
        }
        if (i12 > -1) {
            int i14 = this.elementIndex;
            int i15 = i14 + i12 + 2;
            IJavaElement[] iJavaElementArr2 = this.elements;
            if (i15 > iJavaElementArr2.length) {
                IJavaElement[] iJavaElementArr3 = new IJavaElement[(i15 * 2) + 1];
                this.elements = iJavaElementArr3;
                System.arraycopy(iJavaElementArr2, 0, iJavaElementArr3, 0, i14 + 1);
            }
            int i16 = i12 + 1;
            System.arraycopy(iJavaElementArr, 0, this.elements, this.elementIndex + 1, i16);
            this.elementIndex += i16;
        }
    }

    public void acceptMethodDeclaration(IType iType, char[] cArr, int i10, int i11) {
        String str = new String(cArr);
        try {
            IMethod[] methods = iType.getMethods();
            for (int i12 = 0; i12 < methods.length; i12++) {
                ISourceRange nameRange = methods[i12].getNameRange();
                if (nameRange.getOffset() <= i10 && nameRange.getOffset() + nameRange.getLength() >= i11 && methods[i12].getElementName().equals(str)) {
                    addElement(methods[i12]);
                    if (SelectionEngine.DEBUG) {
                        PrintStream printStream = System.out;
                        printStream.print("SELECTION - accept method(");
                        printStream.print(this.elements[0].toString());
                        printStream.println(")");
                        return;
                    }
                    return;
                }
            }
            addElement(iType);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream2 = System.out;
                printStream2.print("SELECTION - accept type(");
                printStream2.print(iType.toString());
                printStream2.println(")");
            }
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public void acceptMethodTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, char[] cArr4, boolean z10, int i12, int i13) {
        IMethod iMethod;
        IType resolveTypeByLocation = resolveTypeByLocation(cArr, cArr2, 30, i10, i11);
        if (resolveTypeByLocation != null) {
            Object str = new String(cArr3);
            try {
                IMethod[] methods = resolveTypeByLocation.getMethods();
                for (int i14 = 0; i14 < methods.length; i14++) {
                    ISourceRange nameRange = methods[i14].getNameRange();
                    if (nameRange.getOffset() >= i10 && nameRange.getOffset() + nameRange.getLength() <= i11 && methods[i14].getElementName().equals(str)) {
                        iMethod = methods[i14];
                        break;
                    }
                }
            } catch (JavaModelException unused) {
            }
            iMethod = null;
            if (iMethod == null) {
                addElement(resolveTypeByLocation);
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream = System.out;
                    printStream.print("SELECTION - accept type(");
                    printStream.print(resolveTypeByLocation.toString());
                    printStream.println(")");
                    return;
                }
                return;
            }
            IJavaElement typeParameter = iMethod.getTypeParameter(new String(cArr4));
            if (typeParameter == null) {
                addElement(iMethod);
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream2 = System.out;
                    printStream2.print("SELECTION - accept method(");
                    printStream2.print(iMethod.toString());
                    printStream2.println(")");
                    return;
                }
                return;
            }
            addElement(typeParameter);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream3 = System.out;
                printStream3.print("SELECTION - accept method type parameter(");
                printStream3.print(typeParameter.toString());
                printStream3.println(")");
            }
        }
    }

    @Override
    public void acceptModule(char[] cArr, char[] cArr2, int i10, int i11) {
        addElement(resolveModule(cArr));
    }

    @Override
    public void acceptPackage(char[] cArr) {
        NameLookup nameLookup = this.nameLookup;
        String str = new String(cArr);
        IPackageFragment[] findPackageFragments = nameLookup.findPackageFragments(str, false);
        if (findPackageFragments != null) {
            int length = findPackageFragments.length;
            for (int i10 = 0; i10 < length; i10++) {
                addElement(findPackageFragments[i10]);
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream = System.out;
                    printStream.print("SELECTION - accept package(");
                    printStream.print(findPackageFragments[i10].toString());
                    printStream.println(")");
                }
            }
        }
    }

    public void acceptSourceMethod(IType iType, char[] cArr, char[][] cArr2, char[][] cArr3, String[] strArr, char[][] cArr4, char[][][] cArr5, char[] cArr6) {
        boolean z10;
        String str = new String(cArr);
        try {
            IMethod[] methods = iType.getMethods();
            for (int i10 = 0; i10 < methods.length; i10++) {
                if (methods[i10].getElementName().equals(str) && methods[i10].getParameterTypes().length == cArr3.length) {
                    IMethod iMethod = methods[i10];
                    if (cArr6 != null) {
                        ResolvedSourceMethod resolvedSourceMethod = new ResolvedSourceMethod((JavaElement) iMethod.getParent(), iMethod.getElementName(), iMethod.getParameterTypes(), new String(cArr6));
                        resolvedSourceMethod.occurrenceCount = iMethod.getOccurrenceCount();
                        iMethod = resolvedSourceMethod;
                    }
                    addElement(iMethod);
                }
            }
            int i11 = this.elementIndex;
            if (i11 == -1) {
                addElement(iType);
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream = System.out;
                    printStream.print("SELECTION - accept type(");
                    printStream.print(iType.toString());
                    printStream.println(")");
                    return;
                }
                return;
            }
            if (i11 == 0) {
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream2 = System.out;
                    printStream2.print("SELECTION - accept method(");
                    printStream2.print(this.elements[0].toString());
                    printStream2.println(")");
                    return;
                }
                return;
            }
            IJavaElement[] iJavaElementArr = this.elements;
            this.elements = JavaElement.NO_ELEMENTS;
            this.elementIndex = -1;
            for (int i12 = 0; i12 <= i11; i12++) {
                IMethod iMethod2 = (IMethod) iJavaElementArr[i12];
                String[] parameterTypes = iMethod2.getParameterTypes();
                int i13 = 0;
                while (true) {
                    if (i13 >= parameterTypes.length) {
                        z10 = true;
                        break;
                    } else {
                        if (!Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(parameterTypes[i13]))).equals(new String(CharOperation.lastSegment(cArr3[i13], '.')))) {
                            z10 = false;
                            break;
                        }
                        i13++;
                    }
                }
                if (z10 && !areTypeParametersCompatible(iMethod2, cArr4, cArr5)) {
                    z10 = false;
                }
                if (z10) {
                    addElement(iMethod2);
                    if (SelectionEngine.DEBUG) {
                        PrintStream printStream3 = System.out;
                        printStream3.print("SELECTION - accept method(");
                        printStream3.print(iMethod2.toString());
                        printStream3.println(")");
                    }
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v7, types: [org.eclipse.jdt.internal.core.ResolvedBinaryType, org.eclipse.jdt.internal.core.SourceRefElement] */
    @Override
    public void acceptType(char[] cArr, char[] cArr2, int i10, boolean z10, char[] cArr3, int i11, int i12) {
        IType resolveType;
        ResolvedSourceType resolvedSourceType;
        int i13 = i10 & 25088;
        int i14 = i13 != 512 ? (i13 == 8192 || i13 == 8704) ? 16 : i13 != 16384 ? 2 : 8 : 4;
        if (z10) {
            resolveType = resolveTypeByLocation(cArr, cArr2, i14, i11, i12);
        } else {
            resolveType = resolveType(cArr, cArr2, i14);
            if (resolveType != null) {
                String key = cArr3 == null ? resolveType.getKey() : new String(cArr3);
                if (resolveType.isBinary()) {
                    ?? resolvedBinaryType = new ResolvedBinaryType((JavaElement) resolveType.getParent(), resolveType.getElementName(), key);
                    resolvedBinaryType.occurrenceCount = resolveType.getOccurrenceCount();
                    resolvedSourceType = resolvedBinaryType;
                } else {
                    ResolvedSourceType resolvedSourceType2 = new ResolvedSourceType((JavaElement) resolveType.getParent(), resolveType.getElementName(), key);
                    resolvedSourceType2.occurrenceCount = resolveType.getOccurrenceCount();
                    resolvedSourceType = resolvedSourceType2;
                }
                resolveType = resolvedSourceType;
            }
        }
        if (resolveType != null) {
            addElement(resolveType);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream = System.out;
                printStream.print("SELECTION - accept type(");
                printStream.print(resolveType.toString());
                printStream.println(")");
            }
        }
    }

    @Override
    public void acceptTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, int i10, int i11) {
        IType resolveTypeByLocation = z10 ? resolveTypeByLocation(cArr, cArr2, 30, i10, i11) : resolveType(cArr, cArr2, 30);
        if (resolveTypeByLocation != null) {
            ITypeParameter typeParameter = resolveTypeByLocation.getTypeParameter(new String(cArr3));
            if (typeParameter == null) {
                addElement(resolveTypeByLocation);
                if (SelectionEngine.DEBUG) {
                    PrintStream printStream = System.out;
                    printStream.print("SELECTION - accept type(");
                    printStream.print(resolveTypeByLocation.toString());
                    printStream.println(")");
                    return;
                }
                return;
            }
            addElement(typeParameter);
            if (SelectionEngine.DEBUG) {
                PrintStream printStream2 = System.out;
                printStream2.print("SELECTION - accept type parameter(");
                printStream2.print(typeParameter.toString());
                printStream2.println(")");
            }
        }
    }

    public void addElement(IJavaElement iJavaElement) {
        int i10 = this.elementIndex + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.elements[i11].equals(iJavaElement)) {
                return;
            }
        }
        IJavaElement[] iJavaElementArr = this.elements;
        if (i10 == iJavaElementArr.length) {
            IJavaElement[] iJavaElementArr2 = new IJavaElement[(i10 * 2) + 1];
            this.elements = iJavaElementArr2;
            System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
        }
        IJavaElement[] iJavaElementArr3 = this.elements;
        int i12 = this.elementIndex + 1;
        this.elementIndex = i12;
        iJavaElementArr3[i12] = iJavaElement;
    }

    public IJavaElement findLocalElement(int i10) {
        IJavaElement elementAtConsideringSibling;
        IAdaptable iAdaptable = this.openable;
        if (iAdaptable instanceof org.eclipse.jdt.core.ICompilationUnit) {
            elementAtConsideringSibling = ((org.eclipse.jdt.core.ICompilationUnit) iAdaptable).getElementAt(i10);
        } else {
            if (iAdaptable instanceof ClassFile) {
                elementAtConsideringSibling = ((ClassFile) iAdaptable).getElementAtConsideringSibling(i10);
            }
            return null;
        }
        return elementAtConsideringSibling;
    }

    public IJavaElement findMethodFromBinding(MethodBinding methodBinding, String[] strArr, ReferenceBinding referenceBinding) {
        IType resolveType = resolveType(referenceBinding.qualifiedPackageName(), referenceBinding.qualifiedSourceName(), 0);
        if (resolveType == null) {
            return null;
        }
        if (!(resolveType instanceof BinaryType)) {
            return resolveType.getMethod(new String(methodBinding.selector), strArr);
        }
        try {
            return Util.findMethod(resolveType, methodBinding.selector, strArr, methodBinding.isConstructor());
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public IJavaElement[] getElements() {
        int i10 = this.elementIndex + 1;
        IJavaElement[] iJavaElementArr = this.elements;
        if (iJavaElementArr.length != i10) {
            IJavaElement[] iJavaElementArr2 = new IJavaElement[i10];
            this.elements = iJavaElementArr2;
            System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i10);
        }
        return this.elements;
    }

    public IModuleDescription resolveModule(char[] cArr) {
        NameLookup.Answer findModule = this.nameLookup.findModule(cArr);
        if (findModule != null) {
            return findModule.module;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r19.length == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
    
        if (r3.getPackageDeclaration(new java.lang.String(r19)).exists() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        r4 = org.eclipse.jdt.core.compiler.CharOperation.splitOn('.', r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        if (r4.length <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
    
        r3 = r3.getType(new java.lang.String(r4[0]));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
    
        r8 = r4.length;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
    
        if (r9 < r8) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
    
        r3 = r3.getType(new java.lang.String(r4[r9]));
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
    
        if (r3 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
    
        if (r3.exists() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0061, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x001f, code lost:
    
        if (r19.length == 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        if (r3.getPackageDeclarations().length != 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
    
        if (r19 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IType resolveType(char[] cArr, char[] cArr2, int i10) {
        Openable openable = this.openable;
        if ((openable instanceof CompilationUnit) && ((CompilationUnit) openable).isWorkingCopy()) {
            CompilationUnit compilationUnit = (CompilationUnit) this.openable;
            if (cArr != null) {
            }
        }
        IType iType = null;
        if (iType == null) {
            IPackageFragment[] findPackageFragments = this.nameLookup.findPackageFragments((cArr == null || cArr.length == 0) ? "" : new String(cArr), false);
            int length = findPackageFragments == null ? 0 : findPackageFragments.length;
            for (int i11 = 0; i11 < length; i11++) {
                iType = this.nameLookup.findType(new String(cArr2), findPackageFragments[i11], false, i10, false, true);
                if (iType != null) {
                    break;
                }
            }
            if (iType == null) {
                String str = cArr != null ? new String(cArr) : "";
                Openable openable2 = this.openable;
                if (openable2 != null && openable2.getParent().getElementName().equals(str)) {
                    String replace = new String(cArr2).replace('.', '$');
                    try {
                        ArrayList childrenOfType = this.openable.getChildrenOfType(7);
                        int size = childrenOfType.size();
                        IType[] iTypeArr = new IType[size];
                        childrenOfType.toArray(iTypeArr);
                        for (int i12 = 0; i12 < size; i12++) {
                            if (iTypeArr[i12].getTypeQualifiedName().equals(replace)) {
                                return iTypeArr[i12];
                            }
                        }
                    } catch (JavaModelException unused) {
                        return null;
                    }
                }
            }
        }
        return iType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r19.length == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
    
        if (r3.getPackageDeclaration(new java.lang.String(r19)).exists() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        r4 = org.eclipse.jdt.core.compiler.CharOperation.splitOn('.', r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        if (r4.length <= 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
    
        r3 = r3.getTypes();
        r8 = 0;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        if (r8 < r3.length) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        r10 = r3[r8].getSourceRange();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        if (r10.getOffset() > r22) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
    
        if ((r10.getOffset() + r10.getLength()) < r23) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
    
        if (r3[r8].getElementName().equals(new java.lang.String(r4[r9])) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007e, code lost:
    
        if (r9 != (r4.length - 1)) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        r3 = r3[r8].getTypes();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0089, code lost:
    
        r9 = r9 + 1;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
    
        r3 = r3[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0093, code lost:
    
        if (r3 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0099, code lost:
    
        if (r3.exists() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        if (r3.getPackageDeclarations().length != 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0092, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x001f, code lost:
    
        if (r19.length == 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
    
        if (r19 == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IType resolveTypeByLocation(char[] cArr, char[] cArr2, int i10, int i11, int i12) {
        Openable openable = this.openable;
        if ((openable instanceof CompilationUnit) && ((CompilationUnit) openable).isOpen()) {
            CompilationUnit compilationUnit = (CompilationUnit) this.openable;
            if (cArr != null) {
            }
        }
        IType iType = null;
        if (iType == null) {
            IPackageFragment[] findPackageFragments = this.nameLookup.findPackageFragments((cArr == null || cArr.length == 0) ? "" : new String(cArr), false);
            int length = findPackageFragments == null ? 0 : findPackageFragments.length;
            for (int i13 = 0; i13 < length; i13++) {
                iType = this.nameLookup.findType(new String(cArr2), findPackageFragments[i13], false, i10, false, true);
                if (iType != null) {
                    break;
                }
            }
            if (iType == null) {
                String str = cArr != null ? new String(cArr) : "";
                Openable openable2 = this.openable;
                if (openable2 != null && openable2.getParent().getElementName().equals(str)) {
                    String replace = new String(cArr2).replace('.', '$');
                    try {
                        ArrayList childrenOfType = this.openable.getChildrenOfType(7);
                        int size = childrenOfType.size();
                        IType[] iTypeArr = new IType[size];
                        childrenOfType.toArray(iTypeArr);
                        for (int i14 = 0; i14 < size; i14++) {
                            if (iTypeArr[i14].getTypeQualifiedName().equals(replace)) {
                                return iTypeArr[i14];
                            }
                        }
                    } catch (JavaModelException unused) {
                        return null;
                    }
                }
            }
        }
        return iType;
    }

    public IJavaElement findLocalElement(int i10, MethodScope methodScope) {
        TypeBinding typeBinding;
        if (methodScope != null && methodScope.isLambdaScope()) {
            IJavaElement findLocalElement = findLocalElement(i10, methodScope.enclosingMethodScope());
            org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression = (org.eclipse.jdt.internal.compiler.ast.LambdaExpression) methodScope.originalReferenceContext();
            return (lambdaExpression == null || (typeBinding = lambdaExpression.resolvedType) == null || !typeBinding.isValidBinding()) ? findLocalElement : LambdaFactory.createLambdaExpression((JavaElement) findLocalElement, lambdaExpression).getMethod();
        }
        return findLocalElement(i10);
    }

    public void acceptType(IType iType) {
        NamedMember resolvedSourceType;
        String key = iType.getKey();
        if (iType.isBinary()) {
            resolvedSourceType = new ResolvedBinaryType((JavaElement) iType.getParent(), iType.getElementName(), key);
            resolvedSourceType.occurrenceCount = iType.getOccurrenceCount();
        } else {
            resolvedSourceType = new ResolvedSourceType((JavaElement) iType.getParent(), iType.getElementName(), key);
            resolvedSourceType.occurrenceCount = iType.getOccurrenceCount();
        }
        addElement(resolvedSourceType);
        if (SelectionEngine.DEBUG) {
            PrintStream printStream = System.out;
            printStream.print("SELECTION - accept type(");
            printStream.print(resolvedSourceType.toString());
            printStream.println(")");
        }
    }

    public void acceptBinaryMethod(IType iType, char[] cArr, char[][] cArr2, char[][] cArr3, String[] strArr, char[][] cArr4, char[][][] cArr5, char[] cArr6, boolean z10) {
        IMethod[] findMethods;
        IMethod method = iType.getMethod(new String(cArr), strArr);
        if (method.exists()) {
            if (cArr4 != null && cArr4.length != 0 && (findMethods = iType.findMethods(method)) != null && findMethods.length > 1) {
                for (IMethod iMethod : findMethods) {
                    if (areTypeParametersCompatible(iMethod, cArr4, cArr5)) {
                        acceptBinaryMethod(iType, method, cArr6, z10);
                    }
                }
                return;
            }
            acceptBinaryMethod(iType, method, cArr6, z10);
        }
    }
}
