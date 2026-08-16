package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;

public abstract class Member extends SourceRefElement implements IMember {
    public Member(JavaElement javaElement) {
        super(javaElement);
    }

    public static boolean areSimilarMethods(String str, String[] strArr, String str2, String[] strArr2, String[] strArr3) {
        int length;
        if (!str.equals(str2) || (length = strArr.length) != strArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!(strArr3 == null ? Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(strArr[i10]))) : strArr3[i10]).equals(Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(strArr2[i10]))))) {
                return false;
            }
        }
        return true;
    }

    public static Object convertConstant(Constant constant) {
        if (constant == null || constant == Constant.NotAConstant) {
            return null;
        }
        switch (constant.typeID()) {
            case 2:
                return Character.valueOf(constant.charValue());
            case 3:
                return Byte.valueOf(constant.byteValue());
            case 4:
                return Short.valueOf(constant.shortValue());
            case 5:
                return constant.booleanValue() ? Boolean.TRUE : Boolean.FALSE;
            case 6:
            default:
                return null;
            case 7:
                return Long.valueOf(constant.longValue());
            case 8:
                return new Double(constant.doubleValue());
            case 9:
                return new Float(constant.floatValue());
            case 10:
                return Integer.valueOf(constant.intValue());
            case 11:
                return constant.stringValue();
        }
    }

    public static IMethod[] findMethods(IMethod iMethod, IMethod[] iMethodArr) {
        String elementName = iMethod.getElementName();
        String[] parameterTypes = iMethod.getParameterTypes();
        int length = parameterTypes.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = Signature.getSimpleName(Signature.toString(Signature.getTypeErasure(parameterTypes[i10])));
        }
        ArrayList arrayList = new ArrayList();
        for (IMethod iMethod2 : iMethodArr) {
            if (areSimilarMethods(elementName, parameterTypes, iMethod2.getElementName(), iMethod2.getParameterTypes(), strArr)) {
                arrayList.add(iMethod2);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        IMethod[] iMethodArr2 = new IMethod[size];
        arrayList.toArray(iMethodArr2);
        return iMethodArr2;
    }

    public String[] getCategories() throws JavaModelException {
        HashMap<IJavaElement, String[]> categories;
        String[] strArr;
        IType iType = (IType) getAncestor(7);
        return (iType == null || iType.isBinary() || (categories = ((SourceTypeElementInfo) ((SourceType) iType).getElementInfo()).getCategories()) == null || (strArr = categories.get(this)) == null) ? CharOperation.NO_STRINGS : strArr;
    }

    @Override
    public IClassFile getClassFile() {
        IJavaElement parent = getParent();
        while (parent instanceof IMember) {
            parent = parent.getParent();
        }
        if (parent instanceof IClassFile) {
            return (IClassFile) parent;
        }
        return null;
    }

    public IType getDeclaringType() {
        IJavaElement iJavaElement = (JavaElement) getParent();
        if (iJavaElement.getElementType() == 7) {
            return (IType) iJavaElement;
        }
        return null;
    }

    public int getFlags() throws JavaModelException {
        return ((MemberElementInfo) getElementInfo()).getModifiers();
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        String nextToken;
        char charAt = str.charAt(0);
        if (charAt == '!') {
            return getHandleUpdatingCountFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt == ')') {
            if (!mementoTokenizer.hasMoreTokens() || mementoTokenizer.nextToken() != MementoTokenizer.STRING || !mementoTokenizer.hasMoreTokens()) {
                return this;
            }
            String nextToken2 = mementoTokenizer.nextToken();
            if (mementoTokenizer.hasMoreTokens()) {
                String nextToken3 = mementoTokenizer.nextToken();
                String str2 = MementoTokenizer.COUNT;
                if (nextToken3 == str2) {
                    int parseInt = Integer.parseInt(mementoTokenizer.nextToken());
                    if (mementoTokenizer.hasMoreTokens() && mementoTokenizer.nextToken() == str2) {
                        int parseInt2 = Integer.parseInt(mementoTokenizer.nextToken());
                        if (mementoTokenizer.hasMoreTokens() && mementoTokenizer.nextToken() == str2) {
                            LambdaExpression createLambdaExpression = LambdaFactory.createLambdaExpression(this, nextToken2, parseInt, parseInt2, Integer.parseInt(mementoTokenizer.nextToken()));
                            return (mementoTokenizer.hasMoreTokens() && (nextToken = mementoTokenizer.nextToken()) == MementoTokenizer.LAMBDA_METHOD) ? createLambdaExpression.getHandleFromMemento(nextToken, mementoTokenizer, workingCopyOwner) : createLambdaExpression;
                        }
                    }
                }
            }
            return this;
        }
        if (charAt != '@') {
            String str3 = null;
            if (charAt != '[') {
                if (charAt == ']') {
                    return !mementoTokenizer.hasMoreTokens() ? this : new TypeParameter(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
                }
                if (charAt != '}') {
                    return null;
                }
                return !mementoTokenizer.hasMoreTokens() ? this : new Annotation(this, mementoTokenizer.nextToken()).getHandleFromMemento(mementoTokenizer, workingCopyOwner);
            }
            String str4 = "";
            if (mementoTokenizer.hasMoreTokens()) {
                String nextToken4 = mementoTokenizer.nextToken();
                char charAt2 = nextToken4.charAt(0);
                if (charAt2 == '^' || charAt2 == '|' || charAt2 == '~' || charAt2 == '[' || charAt2 == '!') {
                    str3 = nextToken4;
                } else {
                    str4 = nextToken4;
                }
            }
            JavaElement javaElement = (JavaElement) getType(str4, 1);
            return str3 == null ? javaElement.getHandleFromMemento(mementoTokenizer, workingCopyOwner) : javaElement.getHandleFromMemento(str3, mementoTokenizer, workingCopyOwner);
        }
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        String nextToken5 = mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        int parseInt3 = Integer.parseInt(mementoTokenizer.nextToken());
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        int parseInt4 = Integer.parseInt(mementoTokenizer.nextToken());
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        int parseInt5 = Integer.parseInt(mementoTokenizer.nextToken());
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        int parseInt6 = Integer.parseInt(mementoTokenizer.nextToken());
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        String nextToken6 = mementoTokenizer.nextToken();
        mementoTokenizer.nextToken();
        if (!mementoTokenizer.hasMoreTokens()) {
            return this;
        }
        int parseInt7 = Integer.parseInt(mementoTokenizer.nextToken());
        mementoTokenizer.nextToken();
        return !mementoTokenizer.hasMoreTokens() ? this : new LocalVariable(this, nextToken5, parseInt3, parseInt4, parseInt5, parseInt6, nextToken6, null, parseInt7, Boolean.valueOf(mementoTokenizer.nextToken()).booleanValue());
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '[';
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0054. Please report as an issue. */
    @Override
    public ISourceRange getJavadocRange() throws JavaModelException {
        IBuffer buffer;
        ISourceRange sourceRange = getSourceRange();
        if (sourceRange == null) {
            return null;
        }
        if (isBinary()) {
            buffer = getClassFile().getBuffer();
        } else {
            ICompilationUnit compilationUnit = getCompilationUnit();
            if (!compilationUnit.isConsistent()) {
                return null;
            }
            buffer = compilationUnit.getBuffer();
        }
        int offset = sourceRange.getOffset();
        int length = sourceRange.getLength();
        if (length > 0 && buffer.getChar(offset) == '/') {
            IScanner createScanner = ToolFactory.createScanner(true, false, false, false);
            try {
                createScanner.setSource(buffer.getText(offset, length).toCharArray());
                int nextToken = createScanner.getNextToken();
                int i10 = -1;
                int i11 = -1;
                while (true) {
                    if (nextToken != 90) {
                        switch (nextToken) {
                            case 1003:
                                i10 = createScanner.getCurrentTokenStartPosition();
                                i11 = createScanner.getCurrentTokenEndPosition() + 1;
                                nextToken = createScanner.getNextToken();
                        }
                        if (i10 != -1) {
                            return new SourceRange(offset + i10, i11 - i10);
                        }
                    }
                    nextToken = createScanner.getNextToken();
                }
            } catch (IndexOutOfBoundsException | InvalidInputException unused) {
            }
        }
        return null;
    }

    public ISourceRange getNameRange() throws JavaModelException {
        MemberElementInfo memberElementInfo = (MemberElementInfo) getElementInfo();
        return new SourceRange(memberElementInfo.getNameSourceStart(), (memberElementInfo.getNameSourceEnd() - memberElementInfo.getNameSourceStart()) + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Member getOuterMostLocalContext() {
        Member member = null;
        Member member2 = this;
        while (true) {
            switch (member2.getElementType()) {
                case 8:
                case 9:
                case 10:
                    member = member2;
                    break;
            }
            member2 = member2.getParent();
        }
    }

    public IType getType(String str, int i10) {
        if (isBinary()) {
            throw new IllegalArgumentException("Not a source member " + toStringWithAncestors());
        }
        SourceType sourceType = new SourceType(this, str);
        sourceType.occurrenceCount = i10;
        return sourceType;
    }

    public ITypeRoot getTypeRoot() {
        IJavaElement parent = getParent();
        while (parent instanceof IMember) {
            parent = parent.getParent();
        }
        return (ITypeRoot) parent;
    }

    public boolean isBinary() {
        return false;
    }

    public boolean isMainMethod(IMethod iMethod) throws JavaModelException {
        IType declaringType;
        if (T5.b.f24045b.equals(iMethod.getElementName()) && "V".equals(iMethod.getReturnType())) {
            int flags = iMethod.getFlags();
            if (Flags.isStatic(flags) && (Flags.isPublic(flags) || ((declaringType = getDeclaringType()) != null && declaringType.isInterface()))) {
                String[] parameterTypes = iMethod.getParameterTypes();
                if (parameterTypes.length == 1) {
                    return "String[]".equals(Signature.getSimpleName(Signature.toString(parameterTypes[0])));
                }
            }
        }
        return false;
    }

    @Override
    public boolean isReadOnly() {
        return getClassFile() != null;
    }

    @Override
    public String readableName() {
        if (getDeclaringType() == null) {
            return super.readableName();
        }
        StringBuffer stringBuffer = new StringBuffer(((JavaElement) getDeclaringType()).readableName());
        stringBuffer.append('.');
        stringBuffer.append(getElementName());
        return stringBuffer.toString();
    }
}
