package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Util;

public class LocalVariable extends SourceRefElement implements ILocalVariable {
    public static final ILocalVariable[] NO_LOCAL_VARIABLES = new ILocalVariable[0];
    public IAnnotation[] annotations;
    public IAnnotation[][] annotationsOnDimensions;
    public int declarationSourceEnd;
    public int declarationSourceStart;
    private int flags;
    private boolean isParameter;
    String name;
    public int nameEnd;
    public int nameStart;
    String typeSignature;

    public class C1LocalVarAnnotation extends Annotation {
        IMemberValuePair[] memberValuePairs;
        private final int val$sourceEnd;
        private final int val$sourceStart;
        private final int val$typeEnd;
        private final int val$typeStart;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1LocalVarAnnotation(JavaElement javaElement, String str, int i10, int i11, int i12, int i13) {
            super(javaElement, str);
            this.val$typeStart = i10;
            this.val$typeEnd = i11;
            this.val$sourceStart = i12;
            this.val$sourceEnd = i13;
        }

        @Override
        public boolean exists() {
            return this.parent.exists();
        }

        @Override
        public IMemberValuePair[] getMemberValuePairs() throws JavaModelException {
            return this.memberValuePairs;
        }

        @Override
        public ISourceRange getNameRange() throws JavaModelException {
            int i10 = this.val$typeStart;
            return new SourceRange(i10, (this.val$typeEnd - i10) + 1);
        }

        @Override
        public ISourceRange getSourceRange() throws JavaModelException {
            int i10 = this.val$sourceStart;
            return new SourceRange(i10, (this.val$sourceEnd - i10) + 1);
        }
    }

    public LocalVariable(JavaElement javaElement, String str, int i10, int i11, int i12, int i13, String str2, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr, int i14, boolean z10) {
        super(javaElement);
        this.name = str;
        this.declarationSourceStart = i10;
        this.declarationSourceEnd = i11;
        this.nameStart = i12;
        this.nameEnd = i13;
        this.typeSignature = str2;
        this.annotations = getAnnotations(annotationArr);
        this.flags = i14;
        this.isParameter = z10;
    }

    private Object getAnnotationMemberValue(MemberValuePair memberValuePair, Expression expression, JavaElement javaElement) {
        if (expression instanceof NullLiteral) {
            return null;
        }
        if (expression instanceof Literal) {
            ((Literal) expression).computeConstant();
            return Util.getAnnotationMemberValue(memberValuePair, expression.constant);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            memberValuePair.valueKind = 10;
            return getAnnotation((org.eclipse.jdt.internal.compiler.ast.Annotation) expression, javaElement);
        }
        if (expression instanceof ClassLiteralAccess) {
            char[] concatWith = CharOperation.concatWith(((ClassLiteralAccess) expression).type.getTypeName(), '.');
            memberValuePair.valueKind = 11;
            return new String(concatWith);
        }
        if (expression instanceof QualifiedNameReference) {
            char[] concatWith2 = CharOperation.concatWith(((QualifiedNameReference) expression).tokens, '.');
            memberValuePair.valueKind = 12;
            return new String(concatWith2);
        }
        if (expression instanceof SingleNameReference) {
            char[] cArr = ((SingleNameReference) expression).token;
            if (cArr == RecoveryScanner.FAKE_IDENTIFIER) {
                memberValuePair.valueKind = 14;
                return null;
            }
            memberValuePair.valueKind = 13;
            return new String(cArr);
        }
        if (!(expression instanceof ArrayInitializer)) {
            if (!(expression instanceof UnaryExpression)) {
                memberValuePair.valueKind = 14;
                return null;
            }
            UnaryExpression unaryExpression = (UnaryExpression) expression;
            if (((unaryExpression.bits & ASTNode.OperatorMASK) >> 6) == 13) {
                Expression expression2 = unaryExpression.expression;
                if (expression2 instanceof Literal) {
                    Literal literal = (Literal) expression2;
                    literal.computeConstant();
                    return Util.getNegativeAnnotationMemberValue(memberValuePair, literal.constant);
                }
            }
            memberValuePair.valueKind = 14;
            return null;
        }
        memberValuePair.valueKind = -1;
        Expression[] expressionArr = ((ArrayInitializer) expression).expressions;
        int length = expressionArr == null ? 0 : expressionArr.length;
        Object[] objArr = new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = memberValuePair.valueKind;
            Object annotationMemberValue = getAnnotationMemberValue(memberValuePair, expressionArr[i10], javaElement);
            if (i11 != -1 && memberValuePair.valueKind != i11) {
                memberValuePair.valueKind = 14;
            }
            objArr[i10] = annotationMemberValue;
        }
        if (memberValuePair.valueKind == -1) {
            memberValuePair.valueKind = 14;
        }
        return objArr;
    }

    @Override
    public void closing(Object obj) {
    }

    @Override
    public Object createElementInfo() {
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof LocalVariable)) {
            return false;
        }
        LocalVariable localVariable = (LocalVariable) obj;
        return this.declarationSourceStart == localVariable.declarationSourceStart && this.declarationSourceEnd == localVariable.declarationSourceEnd && this.nameStart == localVariable.nameStart && this.nameEnd == localVariable.nameEnd && super.equals(obj);
    }

    @Override
    public boolean exists() {
        return this.parent.exists();
    }

    @Override
    public void generateInfos(Object obj, HashMap hashMap, IProgressMonitor iProgressMonitor) {
    }

    @Override
    public IAnnotation getAnnotation(String str) {
        int length = this.annotations.length;
        for (int i10 = 0; i10 < length; i10++) {
            IAnnotation iAnnotation = this.annotations[i10];
            if (iAnnotation.getElementName().equals(str)) {
                return iAnnotation;
            }
        }
        return super.getAnnotation(str);
    }

    @Override
    public IAnnotation[] getAnnotations() throws JavaModelException {
        return this.annotations;
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

    @Override
    public IResource getCorrespondingResource() {
        return null;
    }

    @Override
    public IMember getDeclaringMember() {
        return (IMember) this.parent;
    }

    @Override
    public String getElementName() {
        return this.name;
    }

    @Override
    public int getElementType() {
        return 14;
    }

    @Override
    public int getFlags() {
        int i10 = this.flags;
        if (i10 != -1) {
            return i10 & 65535;
        }
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null) {
            return 0;
        }
        try {
            IClassFile classFile = getClassFile();
            if (classFile == null) {
                return 0;
            }
            classFile.getBuffer();
            return sourceMapper.getFlags(this);
        } catch (JavaModelException unused) {
            return 0;
        }
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        return str.charAt(0) != '!' ? this : getHandleUpdatingCountFromMemento(mementoTokenizer, workingCopyOwner);
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        getHandleMemento(stringBuffer, true);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '@';
    }

    public String getKey(boolean z10) throws JavaModelException {
        if (this.parent.getElementType() != 9) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        IAdaptable iAdaptable = this.parent;
        if (iAdaptable instanceof BinaryMethod) {
            sb2.append(((BinaryMethod) iAdaptable).getKey(z10));
        } else {
            sb2.append(((IMethod) iAdaptable).getKey());
        }
        sb2.append(JavaElement.JEM_IMPORTDECLARATION);
        sb2.append(this.name);
        if (this.isParameter) {
            ILocalVariable[] parameters = ((IMethod) this.parent).getParameters();
            int i10 = 0;
            while (true) {
                if (i10 >= parameters.length) {
                    break;
                }
                if (equals(parameters[i10])) {
                    sb2.append("#0#");
                    sb2.append(i10);
                    break;
                }
                i10++;
            }
        }
        return sb2.toString();
    }

    @Override
    public ISourceRange getNameRange() {
        int i10 = this.nameEnd;
        if (i10 != -1) {
            int i11 = this.nameStart;
            return new SourceRange(i11, (i10 - i11) + 1);
        }
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper != null) {
            try {
                IClassFile classFile = getClassFile();
                if (classFile != null) {
                    classFile.getBuffer();
                    return sourceMapper.getNameRange(this);
                }
            } catch (JavaModelException unused) {
            }
        }
        return SourceMapper.UNKNOWN_RANGE;
    }

    @Override
    public IPath getPath() {
        return this.parent.getPath();
    }

    @Override
    public String getSource() throws JavaModelException {
        IBuffer buffer = this.parent.getOpenableParent().getBuffer();
        if (buffer == null) {
            return null;
        }
        ISourceRange sourceRange = getSourceRange();
        int offset = sourceRange.getOffset();
        int length = sourceRange.getLength();
        if (offset != -1 && length != 0) {
            try {
                return buffer.getText(offset, length);
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        IClassFile classFile;
        int i10 = this.declarationSourceEnd;
        if (i10 != -1) {
            int i11 = this.declarationSourceStart;
            return new SourceRange(i11, (i10 - i11) + 1);
        }
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null || (classFile = getClassFile()) == null) {
            return SourceMapper.UNKNOWN_RANGE;
        }
        classFile.getBuffer();
        return sourceMapper.getSourceRange(this);
    }

    @Override
    public ITypeRoot getTypeRoot() {
        return getDeclaringMember().getTypeRoot();
    }

    @Override
    public String getTypeSignature() {
        return this.typeSignature;
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        return this.parent.getUnderlyingResource();
    }

    @Override
    public int hashCode() {
        return Util.combineHashCodes(this.parent.hashCode(), this.nameStart);
    }

    @Override
    public boolean isParameter() {
        return this.isParameter;
    }

    @Override
    public boolean isStructureKnown() throws JavaModelException {
        return true;
    }

    @Override
    public IResource resource() {
        return this.parent.resource();
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (obj != JavaElement.NO_INFO) {
            stringBuffer.append(Signature.toString(getTypeSignature()));
            stringBuffer.append(" ");
        }
        toStringName(stringBuffer);
    }

    private IAnnotation[] getAnnotations(org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr) {
        int length;
        if (annotationArr != null && (length = annotationArr.length) != 0) {
            IAnnotation[] iAnnotationArr = new IAnnotation[length];
            for (int i10 = 0; i10 < length; i10++) {
                iAnnotationArr[i10] = getAnnotation(annotationArr[i10], this);
            }
            return iAnnotationArr;
        }
        return Annotation.NO_ANNOTATIONS;
    }

    public void getHandleMemento(StringBuffer stringBuffer, boolean z10) {
        if (z10) {
            ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        }
        stringBuffer.append(getHandleMementoDelimiter());
        stringBuffer.append(this.name);
        stringBuffer.append('!');
        stringBuffer.append(this.declarationSourceStart);
        stringBuffer.append('!');
        stringBuffer.append(this.declarationSourceEnd);
        stringBuffer.append('!');
        stringBuffer.append(this.nameStart);
        stringBuffer.append('!');
        stringBuffer.append(this.nameEnd);
        stringBuffer.append('!');
        escapeMementoName(stringBuffer, this.typeSignature);
        stringBuffer.append('!');
        stringBuffer.append(this.flags);
        stringBuffer.append('!');
        stringBuffer.append(this.isParameter);
        if (this.occurrenceCount > 1) {
            stringBuffer.append('!');
            stringBuffer.append(this.occurrenceCount);
        }
    }

    private IAnnotation getAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation annotation, JavaElement javaElement) {
        IMemberValuePair[] iMemberValuePairArr;
        int length;
        C1LocalVarAnnotation c1LocalVarAnnotation = new C1LocalVarAnnotation(javaElement, new String(CharOperation.concatWith(annotation.type.getTypeName(), '.')), annotation.type.sourceStart(), annotation.type.sourceEnd(), annotation.sourceStart(), annotation.declarationSourceEnd);
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
        if (memberValuePairs != null && (length = memberValuePairs.length) != 0) {
            iMemberValuePairArr = new IMemberValuePair[length];
            for (int i10 = 0; i10 < length; i10++) {
                org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair = memberValuePairs[i10];
                MemberValuePair memberValuePair2 = new MemberValuePair(new String(memberValuePair.name));
                memberValuePair2.value = getAnnotationMemberValue(memberValuePair2, memberValuePair.value, c1LocalVarAnnotation);
                iMemberValuePairArr[i10] = memberValuePair2;
            }
        } else {
            iMemberValuePairArr = Annotation.NO_MEMBER_VALUE_PAIRS;
        }
        c1LocalVarAnnotation.memberValuePairs = iMemberValuePairArr;
        return c1LocalVarAnnotation;
    }

    public LocalVariable(JavaElement javaElement, String str, int i10, int i11, int i12, int i13, String str2, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr, int i14, boolean z10, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr2) {
        this(javaElement, str, i10, i11, i12, i13, str2, annotationArr, i14, z10);
        int length = annotationArr2 == null ? 0 : annotationArr2.length;
        if (length > 0) {
            this.annotationsOnDimensions = new IAnnotation[length];
            for (int i15 = 0; i15 < length; i15++) {
                this.annotationsOnDimensions[i15] = getAnnotations(annotationArr2[i15]);
            }
        }
    }
}
