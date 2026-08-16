package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.core.util.Util;

public class Annotation extends SourceRefElement implements IAnnotation {
    public static final IAnnotation[] NO_ANNOTATIONS = new IAnnotation[0];
    public static final IMemberValuePair[] NO_MEMBER_VALUE_PAIRS = new IMemberValuePair[0];
    protected String memberValuePairName;
    protected String name;

    public Annotation(JavaElement javaElement, String str) {
        this(javaElement, str, null);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Annotation)) {
            return false;
        }
        Annotation annotation = (Annotation) obj;
        String str = this.memberValuePairName;
        if (str == null) {
            if (annotation.memberValuePairName != null) {
                return false;
            }
        } else if (!str.equals(annotation.memberValuePairName)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public IClassFile getClassFile() {
        return ((JavaElement) getParent()).getClassFile();
    }

    public IMember getDeclaringMember() {
        return (IMember) getParent();
    }

    @Override
    public String getElementName() {
        return this.name;
    }

    @Override
    public int getElementType() {
        return 16;
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_ANNOTATION;
    }

    @Override
    public IMemberValuePair[] getMemberValuePairs() throws JavaModelException {
        Object elementInfo = getElementInfo();
        if (elementInfo instanceof AnnotationInfo) {
            return ((AnnotationInfo) elementInfo).members;
        }
        IBinaryElementValuePair[] elementValuePairs = ((IBinaryAnnotation) elementInfo).getElementValuePairs();
        int length = elementValuePairs.length;
        IMemberValuePair[] iMemberValuePairArr = new IMemberValuePair[length];
        for (int i10 = 0; i10 < length; i10++) {
            IBinaryElementValuePair iBinaryElementValuePair = elementValuePairs[i10];
            MemberValuePair memberValuePair = new MemberValuePair(new String(iBinaryElementValuePair.getName()));
            memberValuePair.value = Util.getAnnotationMemberValue(this, memberValuePair, iBinaryElementValuePair.getValue());
            iMemberValuePairArr[i10] = memberValuePair;
        }
        return iMemberValuePairArr;
    }

    @Override
    public ISourceRange getNameRange() throws JavaModelException {
        IClassFile classFile;
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper != null && (classFile = getClassFile()) != null) {
            classFile.getBuffer();
            return sourceMapper.getNameRange(this);
        }
        Object elementInfo = getElementInfo();
        if (!(elementInfo instanceof AnnotationInfo)) {
            return null;
        }
        AnnotationInfo annotationInfo = (AnnotationInfo) elementInfo;
        int i10 = annotationInfo.nameStart;
        return new SourceRange(i10, (annotationInfo.nameEnd - i10) + 1);
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        IClassFile classFile;
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null || (classFile = getClassFile()) == null) {
            return super.getSourceRange();
        }
        classFile.getBuffer();
        return sourceMapper.getSourceRange(this);
    }

    @Override
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.memberValuePairName;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.name.hashCode();
    }

    @Override
    public void toStringName(StringBuffer stringBuffer) {
        stringBuffer.append('@');
        stringBuffer.append(getElementName());
    }

    public Annotation(JavaElement javaElement, String str, String str2) {
        super(javaElement);
        this.name = str.intern();
        this.memberValuePairName = str2;
    }
}
