package org.eclipse.jdt.internal.core.jdom;

import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.jdom.IDOMCompilationUnit;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;

public class SimpleDOMBuilder extends AbstractDOMBuilder implements ISourceElementRequestor {
    @Override
    public void acceptImport(int i10, int i11, int i12, int i13, char[][] cArr, boolean z10, int i14) {
        int[] iArr = {i10, i11};
        String str = new String(CharOperation.concatWith(cArr, '.'));
        if (z10) {
            str = str + ".*";
        }
        DOMImport dOMImport = new DOMImport(this.fDocument, iArr, str, z10, i14);
        this.fNode = dOMImport;
        addChild(dOMImport);
    }

    @Override
    public void acceptPackage(ImportReference importReference) {
        DOMPackage dOMPackage = new DOMPackage(this.fDocument, new int[]{importReference.declarationSourceStart, importReference.declarationSourceEnd}, new String(CharOperation.concatWith(importReference.getImportName(), '.')));
        this.fNode = dOMPackage;
        addChild(dOMPackage);
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem) {
    }

    public IDOMCompilationUnit createCompilationUnit(String str, String str2) {
        return createCompilationUnit(str.toCharArray(), str2.toCharArray());
    }

    public void enterAbstractMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        DOMMethod dOMMethod = new DOMMethod(this.fDocument, new int[]{methodInfo.declarationStart, -1}, CharOperation.charToString(methodInfo.name), new int[]{methodInfo.nameSourceStart, methodInfo.nameSourceEnd}, methodInfo.modifiers, methodInfo.isConstructor, CharOperation.charToString(methodInfo.returnType), CharOperation.charArrayToStringArray(methodInfo.parameterTypes), CharOperation.charArrayToStringArray(methodInfo.parameterNames), CharOperation.charArrayToStringArray(methodInfo.exceptionTypes));
        this.fNode = dOMMethod;
        addChild(dOMMethod);
        this.fStack.push(this.fNode);
    }

    @Override
    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        char[] cArr = this.fDocument;
        int i10 = methodInfo.nameSourceStart;
        if (new String(cArr, i10, methodInfo.nameSourceEnd - i10).indexOf(40) > -1) {
            methodInfo.nameSourceEnd = (methodInfo.nameSourceStart + r0) - 1;
        }
        enterAbstractMethod(methodInfo);
    }

    @Override
    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        int i10 = fieldInfo.declarationStart;
        int[] iArr = {i10, -1};
        int[] iArr2 = {fieldInfo.nameSourceStart, fieldInfo.nameSourceEnd};
        DOMNode dOMNode = this.fNode;
        boolean z10 = false;
        if ((dOMNode instanceof DOMField) && i10 == dOMNode.fSourceRange[0]) {
            z10 = true;
        }
        DOMField dOMField = new DOMField(this.fDocument, iArr, CharOperation.charToString(fieldInfo.name), iArr2, fieldInfo.modifiers, CharOperation.charToString(fieldInfo.type), z10);
        this.fNode = dOMField;
        addChild(dOMField);
        this.fStack.push(this.fNode);
    }

    @Override
    public void enterInitializer(int i10, int i11) {
        DOMInitializer dOMInitializer = new DOMInitializer(this.fDocument, new int[]{i10, -1}, i11);
        this.fNode = dOMInitializer;
        addChild(dOMInitializer);
        this.fStack.push(this.fNode);
    }

    @Override
    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        enterAbstractMethod(methodInfo);
    }

    @Override
    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        if (this.fBuildingType) {
            DOMType dOMType = new DOMType(this.fDocument, new int[]{typeInfo.declarationStart, -1}, new String(typeInfo.name), new int[]{typeInfo.nameSourceStart, typeInfo.nameSourceEnd}, typeInfo.modifiers, CharOperation.charArrayToStringArray(typeInfo.superinterfaces), TypeDeclaration.kind(typeInfo.modifiers) == 1);
            this.fNode = dOMType;
            addChild(dOMType);
            this.fStack.push(this.fNode);
        }
    }

    @Override
    public void exitConstructor(int i10) {
        exitMember(i10);
    }

    @Override
    public void exitField(int i10, int i11, int i12) {
        exitMember(i11);
    }

    @Override
    public void exitInitializer(int i10) {
        exitMember(i10);
    }

    public void exitMember(int i10) {
        DOMMember dOMMember = (DOMMember) this.fStack.pop();
        dOMMember.setSourceRangeEnd(i10);
        this.fNode = dOMMember;
    }

    @Override
    public void exitMethod(int i10, Expression expression) {
        exitMember(i10);
    }

    @Override
    public void exitType(int i10) {
        exitType(i10, i10);
    }

    public SourceElementParser getParser(Map<String, String> map) {
        return new SourceElementParser(this, new DefaultProblemFactory(), new CompilerOptions(map), false, true);
    }

    @Override
    public IDOMCompilationUnit createCompilationUnit(ICompilationUnit iCompilationUnit) {
        initializeBuild(iCompilationUnit.getContents(), true, true);
        getParser(JavaCore.getOptions()).parseCompilationUnit(iCompilationUnit, false, null);
        return super.createCompilationUnit(iCompilationUnit);
    }
}
