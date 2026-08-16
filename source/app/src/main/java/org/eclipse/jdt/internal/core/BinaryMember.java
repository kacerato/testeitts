package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class BinaryMember extends NamedMember {
    public BinaryMember(JavaElement javaElement, String str) {
        super(javaElement, str);
    }

    private IAnnotation getAnnotation(char[][] cArr) {
        return new Annotation(this, new String(CharOperation.concatWith(cArr, '.')));
    }

    @Override
    public void copy(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    public IAnnotation[] getAnnotations(IBinaryAnnotation[] iBinaryAnnotationArr, long j10) {
        IAnnotation[] standardAnnotations = getStandardAnnotations(j10);
        if (iBinaryAnnotationArr == null) {
            return standardAnnotations;
        }
        int length = iBinaryAnnotationArr.length;
        int length2 = standardAnnotations.length;
        int i10 = length + length2;
        if (i10 == 0) {
            return Annotation.NO_ANNOTATIONS;
        }
        IAnnotation[] iAnnotationArr = new IAnnotation[i10];
        for (int i11 = 0; i11 < length; i11++) {
            iAnnotationArr[i11] = Util.getAnnotation(this, iBinaryAnnotationArr[i11], null);
        }
        System.arraycopy(standardAnnotations, 0, iAnnotationArr, length, length2);
        return iAnnotationArr;
    }

    @Override
    public String[] getCategories() throws JavaModelException {
        String[] strArr;
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper != null) {
            getClassFile().getBuffer();
            HashMap hashMap = sourceMapper.categories;
            if (hashMap != null && (strArr = (String[]) hashMap.get(this)) != null) {
                return strArr;
            }
        }
        return CharOperation.NO_STRINGS;
    }

    public String getKey() {
        try {
            return getKey(false);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public abstract String getKey(boolean z10) throws JavaModelException;

    @Override
    public ISourceRange getNameRange() throws JavaModelException {
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null) {
            return SourceMapper.UNKNOWN_RANGE;
        }
        ((AbstractClassFile) getClassFile()).getBuffer();
        return sourceMapper.getNameRange(this);
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        SourceMapper sourceMapper = getSourceMapper();
        if (sourceMapper == null) {
            return SourceMapper.UNKNOWN_RANGE;
        }
        getClassFile().getBuffer();
        return sourceMapper.getSourceRange(this);
    }

    public IAnnotation[] getStandardAnnotations(long j10) {
        if ((TagBits.AllStandardAnnotationsMask & j10) == 0) {
            return Annotation.NO_ANNOTATIONS;
        }
        ArrayList arrayList = new ArrayList();
        if ((TagBits.AnnotationTargetMASK & j10) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_TARGET));
        }
        if ((52776558133248L & j10) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_RETENTION));
        }
        if ((70368744177664L & j10) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_DEPRECATED));
        }
        if ((140737488355328L & j10) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED));
        }
        if ((281474976710656L & j10) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_INHERITED));
        }
        if ((4503599627370496L & j10) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE));
        }
        if ((j10 & 2251799813685248L) != 0) {
            arrayList.add(getAnnotation(TypeConstants.JAVA_LANG_SAFEVARARGS));
        }
        return (IAnnotation[]) arrayList.toArray(new IAnnotation[arrayList.size()]);
    }

    @Override
    public boolean isBinary() {
        return true;
    }

    @Override
    public boolean isStructureKnown() throws JavaModelException {
        return ((IJavaElement) getOpenableParent()).isStructureKnown();
    }

    @Override
    public void move(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    @Override
    public void rename(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }

    public void setContents(String str, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(976, this));
    }
}
