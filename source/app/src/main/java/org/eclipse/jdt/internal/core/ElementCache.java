package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.LRUCache;

public class ElementCache<K extends IJavaElement & IOpenable> extends OverflowingLRUCache<K, JavaElementInfo> {
    IJavaElement spaceLimitParent;

    public ElementCache(int i10) {
        super(i10);
        this.spaceLimitParent = null;
    }

    @Override
    public boolean close(LRUCache.LRUCacheEntry<K, JavaElementInfo> lRUCacheEntry) {
        K k10 = lRUCacheEntry.key;
        if (!(k10 instanceof Openable)) {
            return false;
        }
        Openable openable = (Openable) k10;
        try {
            if (!openable.canBeRemovedFromCache()) {
                return false;
            }
            openable.close();
            return true;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public void ensureSpaceLimit(JavaElementInfo javaElementInfo, IJavaElement iJavaElement) {
        int length = ((int) ((this.loadFactor + 1.0d) * (javaElementInfo.getChildren().length + this.overflow))) + 1;
        if (this.spaceLimit < length) {
            shrink();
            setSpaceLimit(length);
            this.spaceLimitParent = iJavaElement;
        }
    }

    public void resetSpaceLimit(int i10, IJavaElement iJavaElement) {
        if (iJavaElement.equals(this.spaceLimitParent)) {
            setSpaceLimit(i10);
            this.spaceLimitParent = null;
        }
    }

    @Override
    public ElementCache<K> newInstance(int i10, int i11) {
        return new ElementCache<>(i10, i11);
    }

    public ElementCache(int i10, int i11) {
        super(i10, i11);
        this.spaceLimitParent = null;
    }
}
