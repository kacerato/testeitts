package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;

public class JavaElementDelta extends SimpleDelta implements IJavaElementDelta {
    static IJavaElementDelta[] EMPTY_DELTA = new IJavaElementDelta[0];
    static int NEED_CHILD_INDEX = 3;
    IJavaElementDelta[] affectedChildren;
    IJavaElementDelta[] annotationDeltas;
    org.eclipse.jdt.core.dom.CompilationUnit ast;
    IJavaElement changedElement;
    Map<Key, Integer> childIndex;
    public boolean ignoreFromTests;
    IJavaElement movedFromHandle;
    IJavaElement movedToHandle;
    IResourceDelta[] resourceDeltas;
    int resourceDeltasCounter;

    public static class Key {
        public final IJavaElement element;

        public Key(IJavaElement iJavaElement) {
            this.element = iJavaElement;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Key) {
                return JavaElementDelta.equalsAndSameParent(this.element, ((Key) obj).element);
            }
            return false;
        }

        public int hashCode() {
            return this.element.hashCode();
        }
    }

    public JavaElementDelta(IJavaElement iJavaElement) {
        IJavaElementDelta[] iJavaElementDeltaArr = EMPTY_DELTA;
        this.affectedChildren = iJavaElementDeltaArr;
        this.ast = null;
        this.resourceDeltas = null;
        this.movedFromHandle = null;
        this.movedToHandle = null;
        this.annotationDeltas = iJavaElementDeltaArr;
        this.ignoreFromTests = false;
        this.changedElement = iJavaElement;
    }

    public static boolean equalsAndSameParent(IJavaElement iJavaElement, IJavaElement iJavaElement2) {
        IJavaElement parent;
        return iJavaElement.equals(iJavaElement2) && (parent = iJavaElement.getParent()) != null && parent.equals(iJavaElement2.getParent());
    }

    private ArrayList getAncestors(IJavaElement iJavaElement) {
        IJavaElement parent = iJavaElement.getParent();
        if (parent == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (!parent.equals(this.changedElement)) {
            arrayList.add(parent);
            parent = parent.getParent();
            if (parent == null) {
                return null;
            }
        }
        arrayList.trimToSize();
        return arrayList;
    }

    public void addAffectedChild(JavaElementDelta javaElementDelta) {
        int i10 = this.kind;
        if (i10 == 1 || i10 == 2) {
            return;
        }
        if (i10 != 4) {
            this.kind = 4;
            this.changeFlags |= 8;
        } else {
            this.changeFlags |= 8;
        }
        if (this.changedElement.getElementType() >= 5) {
            fineGrained();
        }
        Key key = new Key(javaElementDelta.getElement());
        Integer childIndex = getChildIndex(key);
        if (childIndex == null) {
            addNewChild(javaElementDelta);
            return;
        }
        JavaElementDelta javaElementDelta2 = (JavaElementDelta) this.affectedChildren[childIndex.intValue()];
        int kind = javaElementDelta2.getKind();
        if (kind == 1) {
            if (javaElementDelta.getKind() != 2) {
                return;
            }
            removeExistingChild(key, childIndex.intValue());
            return;
        }
        if (kind == 2) {
            if (javaElementDelta.getKind() != 1) {
                return;
            }
            javaElementDelta.kind = 4;
            this.affectedChildren[childIndex.intValue()] = javaElementDelta;
            return;
        }
        if (kind != 4) {
            int flags = javaElementDelta2.getFlags();
            this.affectedChildren[childIndex.intValue()] = javaElementDelta;
            javaElementDelta.changeFlags = flags | javaElementDelta.changeFlags;
            return;
        }
        int kind2 = javaElementDelta.getKind();
        if (kind2 == 1 || kind2 == 2) {
            this.affectedChildren[childIndex.intValue()] = javaElementDelta;
            return;
        }
        if (kind2 != 4) {
            return;
        }
        for (IJavaElementDelta iJavaElementDelta : javaElementDelta.getAffectedChildren()) {
            javaElementDelta2.addAffectedChild((JavaElementDelta) iJavaElementDelta);
        }
        int i11 = javaElementDelta.changeFlags;
        int i12 = javaElementDelta2.changeFlags;
        if ((i12 & 16384) != 0 && (i11 & 16384) == 0) {
            i11 &= -2;
        }
        javaElementDelta2.changeFlags = i11 | i12;
        IResourceDelta[] resourceDeltas = javaElementDelta.getResourceDeltas();
        if (resourceDeltas != null) {
            javaElementDelta2.resourceDeltas = resourceDeltas;
            javaElementDelta2.resourceDeltasCounter = javaElementDelta.resourceDeltasCounter;
        }
    }

    public void addNewChild(JavaElementDelta javaElementDelta) {
        this.affectedChildren = growAndAddToArray(this.affectedChildren, javaElementDelta);
        Map<Key, Integer> map = this.childIndex;
        if (map != null) {
            map.put(new Key(javaElementDelta.getElement()), Integer.valueOf(this.affectedChildren.length - 1));
        }
    }

    public void addResourceDelta(IResourceDelta iResourceDelta) {
        int i10 = this.kind;
        if (i10 == 1 || i10 == 2) {
            return;
        }
        if (i10 != 4) {
            this.kind = 4;
            this.changeFlags |= 1;
        } else {
            this.changeFlags |= 1;
        }
        IResourceDelta[] iResourceDeltaArr = this.resourceDeltas;
        if (iResourceDeltaArr == null) {
            IResourceDelta[] iResourceDeltaArr2 = new IResourceDelta[5];
            this.resourceDeltas = iResourceDeltaArr2;
            int i11 = this.resourceDeltasCounter;
            this.resourceDeltasCounter = i11 + 1;
            iResourceDeltaArr2[i11] = iResourceDelta;
            return;
        }
        int length = iResourceDeltaArr.length;
        int i12 = this.resourceDeltasCounter;
        if (length == i12) {
            IResourceDelta[] iResourceDeltaArr3 = new IResourceDelta[i12 * 2];
            this.resourceDeltas = iResourceDeltaArr3;
            System.arraycopy(iResourceDeltaArr, 0, iResourceDeltaArr3, 0, i12);
        }
        IResourceDelta[] iResourceDeltaArr4 = this.resourceDeltas;
        int i13 = this.resourceDeltasCounter;
        this.resourceDeltasCounter = i13 + 1;
        iResourceDeltaArr4[i13] = iResourceDelta;
    }

    public void added(IJavaElement iJavaElement) {
        added(iJavaElement, 0);
    }

    public JavaElementDelta changed(IJavaElement iJavaElement, int i10) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.changed(i10);
        insertDeltaTree(iJavaElement, javaElementDelta);
        return javaElementDelta;
    }

    public void changedAST(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit) {
        this.ast = compilationUnit;
        changed(524288);
    }

    public void clearAffectedChildren() {
        this.affectedChildren = EMPTY_DELTA;
        this.childIndex = null;
    }

    public void closed(IJavaElement iJavaElement) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.changed(1024);
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public void contentChanged() {
        this.changeFlags |= 1;
    }

    public JavaElementDelta createDeltaTree(IJavaElement iJavaElement, JavaElementDelta javaElementDelta) {
        ArrayList ancestors = getAncestors(iJavaElement);
        if (ancestors != null) {
            int size = ancestors.size();
            int i10 = 0;
            while (i10 < size) {
                JavaElementDelta javaElementDelta2 = new JavaElementDelta((IJavaElement) ancestors.get(i10));
                javaElementDelta2.addAffectedChild(javaElementDelta);
                i10++;
                javaElementDelta = javaElementDelta2;
            }
        } else if (equalsAndSameParent(javaElementDelta.getElement(), getElement())) {
            this.kind = javaElementDelta.kind;
            this.changeFlags = javaElementDelta.changeFlags;
            this.movedToHandle = javaElementDelta.movedToHandle;
            this.movedFromHandle = javaElementDelta.movedFromHandle;
        }
        return javaElementDelta;
    }

    public JavaElementDelta find(IJavaElement iJavaElement) {
        return equalsAndSameParent(getElement(), iJavaElement) ? this : findDescendant(new Key(iJavaElement));
    }

    public JavaElementDelta findDescendant(Key key) {
        if (this.affectedChildren.length == 0) {
            return null;
        }
        Integer childIndex = getChildIndex(key);
        if (childIndex != null) {
            return (JavaElementDelta) this.affectedChildren[childIndex.intValue()];
        }
        for (IJavaElementDelta iJavaElementDelta : this.affectedChildren) {
            JavaElementDelta findDescendant = ((JavaElementDelta) iJavaElementDelta).findDescendant(key);
            if (findDescendant != null) {
                return findDescendant;
            }
        }
        return null;
    }

    public void fineGrained() {
        changed(16384);
    }

    @Override
    public IJavaElementDelta[] getAddedChildren() {
        return getChildrenOfType(1);
    }

    @Override
    public IJavaElementDelta[] getAffectedChildren() {
        return this.affectedChildren;
    }

    @Override
    public IJavaElementDelta[] getAnnotationDeltas() {
        return this.annotationDeltas;
    }

    @Override
    public IJavaElementDelta[] getChangedChildren() {
        return getChildrenOfType(4);
    }

    public Integer getChildIndex(Key key) {
        int length = this.affectedChildren.length;
        int i10 = 0;
        if (length < NEED_CHILD_INDEX) {
            while (i10 < length) {
                if (equalsAndSameParent(key.element, this.affectedChildren[i10].getElement())) {
                    return Integer.valueOf(i10);
                }
                i10++;
            }
            return null;
        }
        if (this.childIndex == null) {
            this.childIndex = new HashMap();
            while (i10 < length) {
                this.childIndex.put(new Key(this.affectedChildren[i10].getElement()), Integer.valueOf(i10));
                i10++;
            }
        }
        return this.childIndex.get(key);
    }

    public IJavaElementDelta[] getChildrenOfType(int i10) {
        int length = this.affectedChildren.length;
        if (length == 0) {
            return new IJavaElementDelta[0];
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i11 = 0; i11 < length; i11++) {
            if (this.affectedChildren[i11].getKind() == i10) {
                arrayList.add(this.affectedChildren[i11]);
            }
        }
        IJavaElementDelta[] iJavaElementDeltaArr = new IJavaElementDelta[arrayList.size()];
        arrayList.toArray(iJavaElementDeltaArr);
        return iJavaElementDeltaArr;
    }

    @Override
    public org.eclipse.jdt.core.dom.CompilationUnit getCompilationUnitAST() {
        return this.ast;
    }

    public JavaElementDelta getDeltaFor(IJavaElement iJavaElement) {
        return find(iJavaElement);
    }

    @Override
    public IJavaElement getElement() {
        return this.changedElement;
    }

    @Override
    public IJavaElement getMovedFromElement() {
        return this.movedFromHandle;
    }

    @Override
    public IJavaElement getMovedToElement() {
        return this.movedToHandle;
    }

    @Override
    public IJavaElementDelta[] getRemovedChildren() {
        return getChildrenOfType(2);
    }

    @Override
    public IResourceDelta[] getResourceDeltas() {
        IResourceDelta[] iResourceDeltaArr = this.resourceDeltas;
        if (iResourceDeltaArr == null) {
            return null;
        }
        int length = iResourceDeltaArr.length;
        int i10 = this.resourceDeltasCounter;
        if (length != i10) {
            IResourceDelta[] iResourceDeltaArr2 = new IResourceDelta[i10];
            this.resourceDeltas = iResourceDeltaArr2;
            System.arraycopy(iResourceDeltaArr, 0, iResourceDeltaArr2, 0, i10);
        }
        return this.resourceDeltas;
    }

    public IJavaElementDelta[] growAndAddToArray(IJavaElementDelta[] iJavaElementDeltaArr, IJavaElementDelta iJavaElementDelta) {
        IJavaElementDelta[] iJavaElementDeltaArr2 = new IJavaElementDelta[iJavaElementDeltaArr.length + 1];
        System.arraycopy(iJavaElementDeltaArr, 0, iJavaElementDeltaArr2, 0, iJavaElementDeltaArr.length);
        iJavaElementDeltaArr2[iJavaElementDeltaArr.length] = iJavaElementDelta;
        return iJavaElementDeltaArr2;
    }

    public void insertDeltaTree(IJavaElement iJavaElement, JavaElementDelta javaElementDelta) {
        JavaElementDelta createDeltaTree = createDeltaTree(iJavaElement, javaElementDelta);
        if (equalsAndSameParent(iJavaElement, getElement())) {
            return;
        }
        addAffectedChild(createDeltaTree);
    }

    public void movedFrom(IJavaElement iJavaElement, IJavaElement iJavaElement2) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.kind = 2;
        javaElementDelta.changeFlags |= 32;
        javaElementDelta.movedToHandle = iJavaElement2;
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public void movedTo(IJavaElement iJavaElement, IJavaElement iJavaElement2) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.kind = 1;
        javaElementDelta.changeFlags |= 16;
        javaElementDelta.movedFromHandle = iJavaElement2;
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public void opened(IJavaElement iJavaElement) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.changed(512);
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public void removeAffectedChild(JavaElementDelta javaElementDelta) {
        Key key;
        Integer childIndex;
        if (this.affectedChildren.length == 0 || (childIndex = getChildIndex((key = new Key(javaElementDelta.getElement())))) == null) {
            return;
        }
        removeExistingChild(key, childIndex.intValue());
    }

    public IJavaElementDelta[] removeAndShrinkArray(IJavaElementDelta[] iJavaElementDeltaArr, int i10) {
        IJavaElementDelta[] iJavaElementDeltaArr2 = new IJavaElementDelta[iJavaElementDeltaArr.length - 1];
        if (i10 > 0) {
            System.arraycopy(iJavaElementDeltaArr, 0, iJavaElementDeltaArr2, 0, i10);
        }
        int length = (iJavaElementDeltaArr.length - i10) - 1;
        if (length > 0) {
            System.arraycopy(iJavaElementDeltaArr, i10 + 1, iJavaElementDeltaArr2, i10, length);
        }
        return iJavaElementDeltaArr2;
    }

    public void removeExistingChild(Key key, int i10) {
        IJavaElementDelta[] removeAndShrinkArray = removeAndShrinkArray(this.affectedChildren, i10);
        this.affectedChildren = removeAndShrinkArray;
        Map<Key, Integer> map = this.childIndex;
        if (map != null) {
            int length = removeAndShrinkArray.length;
            if (length < NEED_CHILD_INDEX) {
                this.childIndex = null;
                return;
            }
            map.remove(key);
            while (i10 < length) {
                this.childIndex.put(new Key(this.affectedChildren[i10].getElement()), Integer.valueOf(i10));
                i10++;
            }
        }
    }

    public void removed(IJavaElement iJavaElement) {
        removed(iJavaElement, 0);
    }

    public void sourceAttached(IJavaElement iJavaElement) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.changed(4096);
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public void sourceDetached(IJavaElement iJavaElement) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.changed(8192);
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public String toDebugString(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append('\t');
        }
        stringBuffer.append(((JavaElement) getElement()).toDebugString());
        toDebugString(stringBuffer);
        IJavaElementDelta[] affectedChildren = getAffectedChildren();
        if (affectedChildren != null) {
            for (IJavaElementDelta iJavaElementDelta : affectedChildren) {
                stringBuffer.append("\n");
                stringBuffer.append(((JavaElementDelta) iJavaElementDelta).toDebugString(i10 + 1));
            }
        }
        for (int i12 = 0; i12 < this.resourceDeltasCounter; i12++) {
            stringBuffer.append("\n");
            for (int i13 = 0; i13 < i10 + 1; i13++) {
                stringBuffer.append('\t');
            }
            IResourceDelta iResourceDelta = this.resourceDeltas[i12];
            stringBuffer.append(iResourceDelta.toString());
            stringBuffer.append("[");
            int kind = iResourceDelta.getKind();
            if (kind == 1) {
                stringBuffer.append('+');
            } else if (kind == 2) {
                stringBuffer.append('-');
            } else if (kind != 4) {
                stringBuffer.append('?');
            } else {
                stringBuffer.append('*');
            }
            stringBuffer.append("]");
        }
        IJavaElementDelta[] annotationDeltas = getAnnotationDeltas();
        if (annotationDeltas != null) {
            for (IJavaElementDelta iJavaElementDelta2 : annotationDeltas) {
                stringBuffer.append("\n");
                stringBuffer.append(((JavaElementDelta) iJavaElementDelta2).toDebugString(i10 + 1));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public String toString() {
        return toDebugString(0);
    }

    public void added(IJavaElement iJavaElement, int i10) {
        JavaElementDelta javaElementDelta = new JavaElementDelta(iJavaElement);
        javaElementDelta.added();
        javaElementDelta.changeFlags = i10 | javaElementDelta.changeFlags;
        insertDeltaTree(iJavaElement, javaElementDelta);
    }

    public void removed(IJavaElement iJavaElement, int i10) {
        insertDeltaTree(iJavaElement, new JavaElementDelta(iJavaElement));
        JavaElementDelta deltaFor = getDeltaFor(iJavaElement);
        if (deltaFor != null) {
            deltaFor.removed();
            deltaFor.changeFlags = i10 | deltaFor.changeFlags;
            deltaFor.clearAffectedChildren();
        }
    }

    @Override
    public boolean toDebugString(StringBuffer stringBuffer, int i10) {
        boolean debugString = super.toDebugString(stringBuffer, i10);
        if ((i10 & 8) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("CHILDREN");
            debugString = true;
        }
        if ((i10 & 1) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("CONTENT");
            debugString = true;
        }
        if ((i10 & 16) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("MOVED_FROM(" + ((JavaElement) getMovedFromElement()).toStringWithAncestors() + ")");
            debugString = true;
        }
        if ((i10 & 32) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("MOVED_TO(" + ((JavaElement) getMovedToElement()).toStringWithAncestors() + ")");
            debugString = true;
        }
        if ((i10 & 64) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("ADDED TO CLASSPATH");
            debugString = true;
        }
        if ((i10 & 128) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("REMOVED FROM CLASSPATH");
            debugString = true;
        }
        if ((i10 & 256) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("REORDERED");
            debugString = true;
        }
        if ((32768 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("ARCHIVE CONTENT CHANGED");
            debugString = true;
        }
        if ((i10 & 4096) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("SOURCE ATTACHED");
            debugString = true;
        }
        if ((i10 & 8192) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("SOURCE DETACHED");
            debugString = true;
        }
        if ((i10 & 16384) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("FINE GRAINED");
            debugString = true;
        }
        if ((65536 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("PRIMARY WORKING COPY");
            debugString = true;
        }
        if ((131072 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("RAW CLASSPATH CHANGED");
            debugString = true;
        }
        if ((2097152 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("RESOLVED CLASSPATH CHANGED");
            debugString = true;
        }
        if ((262144 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("PRIMARY RESOURCE");
            debugString = true;
        }
        if ((i10 & 512) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("OPENED");
            debugString = true;
        }
        if ((i10 & 1024) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("CLOSED");
            debugString = true;
        }
        if ((524288 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("AST AFFECTED");
            debugString = true;
        }
        if ((1048576 & i10) != 0) {
            if (debugString) {
                stringBuffer.append(" | ");
            }
            stringBuffer.append("CATEGORIES");
            debugString = true;
        }
        if ((i10 & 4194304) == 0) {
            return debugString;
        }
        if (debugString) {
            stringBuffer.append(" | ");
        }
        stringBuffer.append("ANNOTATIONS");
        return true;
    }
}
