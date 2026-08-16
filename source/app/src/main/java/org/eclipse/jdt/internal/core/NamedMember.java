package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import java.io.PrintStream;
import org.eclipse.jdt.core.BindingKey;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IModularClassFile;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class NamedMember extends Member {
    protected String name;

    public class C1TypeResolveRequestor implements ISelectionRequestor {
        String[][] answers = null;

        public C1TypeResolveRequestor() {
        }

        @Override
        public void acceptError(CategorizedProblem categorizedProblem) {
        }

        @Override
        public void acceptField(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, char[] cArr4, int i10, int i11) {
        }

        @Override
        public void acceptMethod(char[] cArr, char[] cArr2, String str, char[] cArr3, char[][] cArr4, char[][] cArr5, String[] strArr, char[][] cArr6, char[][][] cArr7, boolean z10, boolean z11, char[] cArr8, int i10, int i11) {
        }

        @Override
        public void acceptMethodTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, int i10, int i11, char[] cArr4, boolean z10, int i12, int i13) {
        }

        @Override
        public void acceptModule(char[] cArr, char[] cArr2, int i10, int i11) {
        }

        @Override
        public void acceptPackage(char[] cArr) {
        }

        @Override
        public void acceptType(char[] cArr, char[] cArr2, int i10, boolean z10, char[] cArr3, int i11, int i12) {
            String[] strArr = {new String(cArr), new String(cArr2)};
            String[][] strArr2 = this.answers;
            if (strArr2 == null) {
                this.answers = new String[][]{strArr};
                return;
            }
            int length = strArr2.length;
            String[][] strArr3 = new String[length + 1];
            this.answers = strArr3;
            System.arraycopy(strArr2, 0, strArr3, 0, length);
            this.answers[length] = strArr;
        }

        @Override
        public void acceptTypeParameter(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, int i10, int i11) {
        }
    }

    public NamedMember(JavaElement javaElement, String str) {
        super(javaElement);
        this.name = str;
    }

    private void appendTypeParameters(StringBuffer stringBuffer) throws JavaModelException {
        ITypeParameter[] typeParameters = getTypeParameters();
        int length = typeParameters.length;
        if (length == 0) {
            return;
        }
        stringBuffer.append('<');
        for (int i10 = 0; i10 < length; i10++) {
            ITypeParameter iTypeParameter = typeParameters[i10];
            stringBuffer.append(iTypeParameter.getElementName());
            String[] bounds = iTypeParameter.getBounds();
            int length2 = bounds.length;
            if (length2 > 0) {
                stringBuffer.append(" extends ");
                for (int i11 = 0; i11 < length2; i11++) {
                    stringBuffer.append(bounds[i11]);
                    if (i11 < length2 - 1) {
                        stringBuffer.append(" & ");
                    }
                }
            }
            if (i10 < length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append('>');
    }

    @Override
    public String getElementName() {
        return this.name;
    }

    public String getFullyQualifiedName(char c10, boolean z10) throws JavaModelException {
        String elementName = getPackageFragment().getElementName();
        if (elementName.equals("")) {
            return getTypeQualifiedName(c10, z10);
        }
        return elementName + '.' + getTypeQualifiedName(c10, z10);
    }

    public String getFullyQualifiedParameterizedName(String str, String str2) throws JavaModelException {
        String[] typeArguments = new BindingKey(str2).getTypeArguments();
        int length = typeArguments.length;
        if (length == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append('<');
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(Signature.toString(typeArguments[i10]));
            if (i10 < length - 1) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        stringBuffer.append('>');
        return stringBuffer.toString();
    }

    public String getKey(IField iField, boolean z10) throws JavaModelException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getKey((IType) iField.getParent(), z10));
        stringBuffer.append('.');
        stringBuffer.append(iField.getElementName());
        return stringBuffer.toString();
    }

    public String getOccurrenceCountSignature() {
        return Integer.toString(this.occurrenceCount);
    }

    public IPackageFragment getPackageFragment() {
        return null;
    }

    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        return null;
    }

    public String getTypeQualifiedName(char c10, boolean z10) throws JavaModelException {
        NamedMember namedMember;
        switch (this.parent.getElementType()) {
            case 5:
                if (!z10) {
                    return this.name;
                }
                StringBuffer stringBuffer = new StringBuffer(this.name);
                appendTypeParameters(stringBuffer);
                return stringBuffer.toString();
            case 6:
                JavaElement javaElement = this.parent;
                if (javaElement instanceof IModularClassFile) {
                    return null;
                }
                String elementName = javaElement.getElementName();
                String replace = elementName.indexOf(36) == -1 ? this.name : elementName.substring(0, elementName.lastIndexOf(46)).replace('$', c10);
                if (!z10) {
                    return replace;
                }
                StringBuffer stringBuffer2 = new StringBuffer(replace);
                appendTypeParameters(stringBuffer2);
                return stringBuffer2.toString();
            case 7:
                namedMember = (NamedMember) this.parent;
                break;
            case 8:
            case 9:
            case 10:
                namedMember = (NamedMember) ((IMember) this.parent).getDeclaringType();
                break;
            default:
                return null;
        }
        StringBuffer stringBuffer3 = new StringBuffer(namedMember.getTypeQualifiedName(c10, z10));
        stringBuffer3.append(c10);
        stringBuffer3.append(this.name.length() == 0 ? getOccurrenceCountSignature() : this.name);
        if (z10) {
            appendTypeParameters(stringBuffer3);
        }
        return stringBuffer3.toString();
    }

    public String[][] resolveType(String str) throws JavaModelException {
        return resolveType(str, DefaultWorkingCopyOwner.PRIMARY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String[][] resolveType(String str, WorkingCopyOwner workingCopyOwner) throws JavaModelException {
        JavaProject javaProject = (JavaProject) getJavaProject();
        SearchableEnvironment newSearchableNameEnvironment = javaProject.newSearchableNameEnvironment(workingCopyOwner);
        C1TypeResolveRequestor c1TypeResolveRequestor = new C1TypeResolveRequestor();
        new SelectionEngine(newSearchableNameEnvironment, c1TypeResolveRequestor, javaProject.getOptions(true), workingCopyOwner).selectType(str.toCharArray(), (IType) this);
        if (NameLookup.VERBOSE) {
            PrintStream printStream = System.out;
            printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInSourcePackage + DateFormat.MINUTE_SECOND);
            printStream.println(((Object) Thread.currentThread()) + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + newSearchableNameEnvironment.nameLookup.timeSpentInSeekTypesInBinaryPackage + DateFormat.MINUTE_SECOND);
        }
        return c1TypeResolveRequestor.answers;
    }

    public String getKey(IMethod iMethod, boolean z10) throws JavaModelException {
        ITypeParameter[] typeParameters;
        int length;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getKey((IType) iMethod.getParent(), z10));
        stringBuffer.append('.');
        if (!iMethod.isConstructor()) {
            stringBuffer.append(iMethod.getElementName());
        }
        if (z10 && (length = (typeParameters = iMethod.getTypeParameters()).length) > 0) {
            stringBuffer.append('<');
            for (int i10 = 0; i10 < length; i10++) {
                ITypeParameter iTypeParameter = typeParameters[i10];
                String[] bounds = iTypeParameter.getBounds();
                int length2 = bounds.length;
                char[][] cArr = new char[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    char[] createCharArrayTypeSignature = Signature.createCharArrayTypeSignature(bounds[i11].toCharArray(), iMethod.isBinary());
                    cArr[i11] = createCharArrayTypeSignature;
                    CharOperation.replace(createCharArrayTypeSignature, '.', '/');
                }
                stringBuffer.append(Signature.createTypeParameterSignature(iTypeParameter.getElementName().toCharArray(), cArr));
            }
            stringBuffer.append('>');
        }
        stringBuffer.append('(');
        for (String str : iMethod.getParameterTypes()) {
            stringBuffer.append(str.replace('.', '/'));
        }
        stringBuffer.append(')');
        if (z10) {
            stringBuffer.append(iMethod.getReturnType().replace('.', '/'));
        } else {
            stringBuffer.append('V');
        }
        return stringBuffer.toString();
    }

    public String getKey(IType iType, boolean z10) throws JavaModelException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('L');
        String elementName = iType.getPackageFragment().getElementName();
        stringBuffer.append(elementName.replace('.', '/'));
        if (elementName.length() > 0) {
            stringBuffer.append('/');
        }
        String typeQualifiedName = iType.getTypeQualifiedName('$');
        ICompilationUnit iCompilationUnit = (ICompilationUnit) iType.getAncestor(5);
        if (iCompilationUnit != null) {
            String elementName2 = iCompilationUnit.getElementName();
            String substring = elementName2.substring(0, elementName2.lastIndexOf(46));
            int indexOf = typeQualifiedName.indexOf(36);
            if (indexOf == -1) {
                indexOf = typeQualifiedName.length();
            }
            if (!substring.equals(typeQualifiedName.substring(0, indexOf))) {
                stringBuffer.append(substring);
                stringBuffer.append(JavaElement.JEM_METHOD);
            }
        }
        stringBuffer.append(typeQualifiedName);
        stringBuffer.append(';');
        return stringBuffer.toString();
    }

    public String getKey(IModuleDescription iModuleDescription, boolean z10) throws JavaModelException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('\"');
        stringBuffer.append(iModuleDescription.getElementName());
        return stringBuffer.toString();
    }
}
