package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaElementDeltaBuilder {
    HashSet added;
    Map annotationInfos;
    public JavaElementDelta delta;
    Map infos;
    IJavaElement javaElement;
    int maxDepth;
    Map newPositions;
    Map oldPositions;
    HashSet removed;

    public static class ListItem {
        public IJavaElement next;
        public IJavaElement previous;

        public ListItem(IJavaElement iJavaElement, IJavaElement iJavaElement2) {
            this.previous = iJavaElement;
            this.next = iJavaElement2;
        }
    }

    public JavaElementDeltaBuilder(IJavaElement iJavaElement) {
        this.maxDepth = Integer.MAX_VALUE;
        this.delta = null;
        this.javaElement = iJavaElement;
        initialize();
        recordElementInfo(iJavaElement, (JavaModel) this.javaElement.getJavaModel(), 0);
    }

    private void added(IJavaElement iJavaElement) {
        this.added.add(iJavaElement);
        ListItem newPosition = getNewPosition(iJavaElement);
        IJavaElement iJavaElement2 = newPosition.previous;
        ListItem newPosition2 = iJavaElement2 != null ? getNewPosition(iJavaElement2) : null;
        IJavaElement iJavaElement3 = newPosition.next;
        ListItem newPosition3 = iJavaElement3 != null ? getNewPosition(iJavaElement3) : null;
        if (newPosition2 != null) {
            newPosition2.next = newPosition.next;
        }
        if (newPosition3 != null) {
            newPosition3.previous = newPosition.previous;
        }
    }

    private boolean equals(char[][][] cArr, char[][][] cArr2) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (CharOperation.equals(cArr[length], cArr2[length]));
        return false;
    }

    private void findAdditions(IJavaElement iJavaElement, int i10) {
        IJavaElement[] children;
        JavaElementInfo elementInfo = getElementInfo(iJavaElement);
        if (elementInfo != null || i10 >= this.maxDepth) {
            removeElementInfo(iJavaElement);
        } else {
            this.delta.added(iJavaElement);
            added(iJavaElement);
        }
        if (i10 >= this.maxDepth) {
            this.delta.changed(iJavaElement, 1);
            return;
        }
        try {
            JavaElementInfo javaElementInfo = (JavaElementInfo) ((JavaElement) iJavaElement).getElementInfo();
            findContentChange(elementInfo, javaElementInfo, iJavaElement);
            if (elementInfo == null || !(iJavaElement instanceof IParent) || (children = javaElementInfo.getChildren()) == null) {
                return;
            }
            for (IJavaElement iJavaElement2 : children) {
                findAdditions(iJavaElement2, i10 + 1);
            }
        } catch (JavaModelException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void findAnnotationChanges(IAnnotation[] iAnnotationArr, IAnnotation[] iAnnotationArr2, IJavaElement iJavaElement) {
        int size;
        ArrayList arrayList = null;
        for (ILocalVariable iLocalVariable : iAnnotationArr2) {
            Object remove = this.annotationInfos.remove(iLocalVariable);
            if (remove == null) {
                JavaElementDelta javaElementDelta = new JavaElementDelta(iLocalVariable);
                javaElementDelta.added();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(javaElementDelta);
            } else {
                try {
                    if (!Util.equalArraysOrNull(((AnnotationInfo) remove).members, ((AnnotationInfo) ((JavaElement) iLocalVariable).getElementInfo()).members)) {
                        JavaElementDelta javaElementDelta2 = new JavaElementDelta(iLocalVariable);
                        javaElementDelta2.changed(1);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(javaElementDelta2);
                    }
                } catch (JavaModelException unused) {
                    return;
                }
            }
        }
        for (IAnnotation iAnnotation : iAnnotationArr) {
            if (this.annotationInfos.remove(iAnnotation) != null) {
                JavaElementDelta javaElementDelta3 = new JavaElementDelta(iAnnotation);
                javaElementDelta3.removed();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(javaElementDelta3);
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            this.delta.changed(iJavaElement, 4194304).annotationDeltas = (IJavaElementDelta[]) arrayList.toArray(new IJavaElementDelta[size]);
        }
    }

    private void findCategoryChange(Map<IJavaElement, String[]> map, Map<IJavaElement, String[]> map2) {
        Set<IJavaElement> o10;
        if (map == null) {
            if (map2 != null) {
                Iterator<IJavaElement> it = map2.o().iterator();
                while (it.hasNext()) {
                    this.delta.changed(it.next(), 1048576);
                }
                return;
            }
            return;
        }
        if (map2 != null) {
            o10 = new HashSet<>(map.o());
            o10.addAll(map2.o());
        } else {
            o10 = map.o();
        }
        for (IJavaElement iJavaElement : o10) {
            if (!Util.equalArraysOrNull(map.get(iJavaElement), map2 == null ? null : map2.get(iJavaElement))) {
                this.delta.changed(iJavaElement, 1048576);
            }
        }
    }

    private void findChangesInPositioning(IJavaElement iJavaElement, int i10) {
        if (i10 >= this.maxDepth || this.added.contains(iJavaElement) || this.removed.contains(iJavaElement)) {
            return;
        }
        if (!isPositionedCorrectly(iJavaElement)) {
            this.delta.changed(iJavaElement, 256);
        }
        if (iJavaElement instanceof IParent) {
            try {
                IJavaElement[] children = ((JavaElementInfo) ((JavaElement) iJavaElement).getElementInfo()).getChildren();
                if (children != null) {
                    for (IJavaElement iJavaElement2 : children) {
                        findChangesInPositioning(iJavaElement2, i10 + 1);
                    }
                }
            } catch (JavaModelException unused) {
            }
        }
    }

    private void findContentChange(JavaElementInfo javaElementInfo, JavaElementInfo javaElementInfo2, IJavaElement iJavaElement) {
        if ((javaElementInfo instanceof MemberElementInfo) && (javaElementInfo2 instanceof MemberElementInfo)) {
            if (((MemberElementInfo) javaElementInfo).getModifiers() != ((MemberElementInfo) javaElementInfo2).getModifiers()) {
                this.delta.changed(iJavaElement, 2);
            }
            if ((javaElementInfo instanceof AnnotatableInfo) && (javaElementInfo2 instanceof AnnotatableInfo)) {
                findAnnotationChanges(((AnnotatableInfo) javaElementInfo).annotations, ((AnnotatableInfo) javaElementInfo2).annotations, iJavaElement);
            }
            if ((javaElementInfo instanceof SourceMethodElementInfo) && (javaElementInfo2 instanceof SourceMethodElementInfo)) {
                SourceMethodElementInfo sourceMethodElementInfo = (SourceMethodElementInfo) javaElementInfo;
                SourceMethodElementInfo sourceMethodElementInfo2 = (SourceMethodElementInfo) javaElementInfo2;
                if (CharOperation.equals(sourceMethodElementInfo.getReturnTypeName(), sourceMethodElementInfo2.getReturnTypeName()) && CharOperation.equals(sourceMethodElementInfo.getTypeParameterNames(), sourceMethodElementInfo2.getTypeParameterNames()) && equals(sourceMethodElementInfo.getTypeParameterBounds(), sourceMethodElementInfo2.getTypeParameterBounds())) {
                    return;
                }
                this.delta.changed(iJavaElement, 1);
                return;
            }
            if ((javaElementInfo instanceof SourceFieldElementInfo) && (javaElementInfo2 instanceof SourceFieldElementInfo)) {
                if (CharOperation.equals(((SourceFieldElementInfo) javaElementInfo).getTypeName(), ((SourceFieldElementInfo) javaElementInfo2).getTypeName())) {
                    return;
                }
                this.delta.changed(iJavaElement, 1);
                return;
            }
            if (!(javaElementInfo instanceof SourceTypeElementInfo) || !(javaElementInfo2 instanceof SourceTypeElementInfo)) {
                if ((javaElementInfo instanceof ModuleDescriptionInfo) && (javaElementInfo2 instanceof ModuleDescriptionInfo)) {
                    findCategoryChange(((ModuleDescriptionInfo) javaElementInfo).getCategories(), ((ModuleDescriptionInfo) javaElementInfo2).getCategories());
                    return;
                }
                return;
            }
            SourceTypeElementInfo sourceTypeElementInfo = (SourceTypeElementInfo) javaElementInfo;
            SourceTypeElementInfo sourceTypeElementInfo2 = (SourceTypeElementInfo) javaElementInfo2;
            if (!CharOperation.equals(sourceTypeElementInfo.getSuperclassName(), sourceTypeElementInfo2.getSuperclassName()) || !CharOperation.equals(sourceTypeElementInfo.getInterfaceNames(), sourceTypeElementInfo2.getInterfaceNames())) {
                this.delta.changed(iJavaElement, 2048);
            }
            if (!CharOperation.equals(sourceTypeElementInfo.getTypeParameterNames(), sourceTypeElementInfo2.getTypeParameterNames()) || !equals(sourceTypeElementInfo.getTypeParameterBounds(), sourceTypeElementInfo2.getTypeParameterBounds())) {
                this.delta.changed(iJavaElement, 1);
            }
            findCategoryChange(sourceTypeElementInfo.categories, sourceTypeElementInfo2.categories);
        }
    }

    private void findDeletions() {
        for (IJavaElement iJavaElement : this.infos.o()) {
            this.delta.removed(iJavaElement);
            removed(iJavaElement);
        }
    }

    private JavaElementInfo getElementInfo(IJavaElement iJavaElement) {
        return (JavaElementInfo) this.infos.get(iJavaElement);
    }

    private ListItem getNewPosition(IJavaElement iJavaElement) {
        return (ListItem) this.newPositions.get(iJavaElement);
    }

    private ListItem getOldPosition(IJavaElement iJavaElement) {
        return (ListItem) this.oldPositions.get(iJavaElement);
    }

    private void initialize() {
        this.infos = new HashMap(20);
        this.oldPositions = new HashMap(20);
        this.newPositions = new HashMap(20);
        this.oldPositions.put(this.javaElement, new ListItem(null, null));
        this.newPositions.put(this.javaElement, new ListItem(null, null));
        this.added = new HashSet(5);
        this.removed = new HashSet(5);
    }

    private void insertPositions(IJavaElement[] iJavaElementArr, boolean z10) {
        int length = iJavaElementArr.length;
        int i10 = 0;
        IJavaElement iJavaElement = length > 0 ? iJavaElementArr[0] : null;
        IJavaElement iJavaElement2 = null;
        while (i10 < length) {
            i10++;
            IJavaElement iJavaElement3 = i10 < length ? iJavaElementArr[i10] : null;
            if (z10) {
                this.newPositions.put(iJavaElement, new ListItem(iJavaElement2, iJavaElement3));
            } else {
                this.oldPositions.put(iJavaElement, new ListItem(iJavaElement2, iJavaElement3));
            }
            iJavaElement2 = iJavaElement;
            iJavaElement = iJavaElement3;
        }
    }

    private boolean isPositionedCorrectly(IJavaElement iJavaElement) {
        ListItem newPosition;
        ListItem oldPosition = getOldPosition(iJavaElement);
        if (oldPosition == null || (newPosition = getNewPosition(iJavaElement)) == null) {
            return false;
        }
        IJavaElement iJavaElement2 = oldPosition.previous;
        IJavaElement iJavaElement3 = newPosition.previous;
        return iJavaElement2 == null ? iJavaElement3 == null : iJavaElement2.equals(iJavaElement3);
    }

    private void recordElementInfo(IJavaElement iJavaElement, JavaModel javaModel, int i10) {
        JavaElementInfo javaElementInfo;
        IJavaElement[] children;
        if (i10 < this.maxDepth && (javaElementInfo = (JavaElementInfo) JavaModelManager.getJavaModelManager().getInfo(iJavaElement)) != null) {
            this.infos.put(iJavaElement, javaElementInfo);
            if ((iJavaElement instanceof IParent) && (children = javaElementInfo.getChildren()) != null) {
                insertPositions(children, false);
                for (IJavaElement iJavaElement2 : children) {
                    recordElementInfo(iJavaElement2, javaModel, i10 + 1);
                }
            }
            IAnnotation[] iAnnotationArr = javaElementInfo instanceof AnnotatableInfo ? ((AnnotatableInfo) javaElementInfo).annotations : null;
            if (iAnnotationArr != null) {
                if (this.annotationInfos == null) {
                    this.annotationInfos = new HashMap();
                }
                JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
                for (IAnnotation iAnnotation : iAnnotationArr) {
                    this.annotationInfos.put(iAnnotation, javaModelManager.getInfo(iAnnotation));
                }
            }
        }
    }

    private void recordNewPositions(IJavaElement iJavaElement, int i10) {
        if (i10 >= this.maxDepth || !(iJavaElement instanceof IParent)) {
            return;
        }
        try {
            IJavaElement[] children = ((JavaElementInfo) ((JavaElement) iJavaElement).getElementInfo()).getChildren();
            if (children != null) {
                insertPositions(children, true);
                for (IJavaElement iJavaElement2 : children) {
                    recordNewPositions(iJavaElement2, i10 + 1);
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    private void removeElementInfo(IJavaElement iJavaElement) {
        this.infos.remove(iJavaElement);
    }

    private void removed(IJavaElement iJavaElement) {
        this.removed.add(iJavaElement);
        ListItem oldPosition = getOldPosition(iJavaElement);
        IJavaElement iJavaElement2 = oldPosition.previous;
        ListItem oldPosition2 = iJavaElement2 != null ? getOldPosition(iJavaElement2) : null;
        IJavaElement iJavaElement3 = oldPosition.next;
        ListItem oldPosition3 = iJavaElement3 != null ? getOldPosition(iJavaElement3) : null;
        if (oldPosition2 != null) {
            oldPosition2.next = oldPosition.next;
        }
        if (oldPosition3 != null) {
            oldPosition3.previous = oldPosition.previous;
        }
    }

    private void trimDelta(JavaElementDelta javaElementDelta) {
        if (javaElementDelta.getKind() == 2) {
            javaElementDelta.clearAffectedChildren();
            return;
        }
        for (IJavaElementDelta iJavaElementDelta : javaElementDelta.getAffectedChildren()) {
            trimDelta((JavaElementDelta) iJavaElementDelta);
        }
    }

    public void buildDeltas() {
        this.delta = new JavaElementDelta(this.javaElement);
        if (this.javaElement.getElementType() >= 5) {
            this.delta.fineGrained();
        }
        recordNewPositions(this.javaElement, 0);
        findAdditions(this.javaElement, 0);
        findDeletions();
        findChangesInPositioning(this.javaElement, 0);
        trimDelta(this.delta);
        if (this.delta.getAffectedChildren().length == 0) {
            this.delta.contentChanged();
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Built delta:\n");
        JavaElementDelta javaElementDelta = this.delta;
        stringBuffer.append(javaElementDelta == null ? "<null>" : javaElementDelta.toString());
        return stringBuffer.toString();
    }

    public JavaElementDeltaBuilder(IJavaElement iJavaElement, int i10) {
        this.delta = null;
        this.javaElement = iJavaElement;
        this.maxDepth = i10;
        initialize();
        recordElementInfo(iJavaElement, (JavaModel) this.javaElement.getJavaModel(), 0);
    }
}
