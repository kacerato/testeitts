package com.android.dx.rop.annotation;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.MutabilityControl;
import com.android.dx.util.ToHuman;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import org.apache.commons.math3.geometry.VectorFormat;

public final class Annotation extends MutabilityControl implements Comparable<Annotation>, ToHuman {
    private final TreeMap<CstString, NameValuePair> elements;
    private final CstType type;
    private final AnnotationVisibility visibility;

    public Annotation(CstType cstType, AnnotationVisibility annotationVisibility) {
        if (cstType == null) {
            throw new NullPointerException("type == null");
        }
        if (annotationVisibility == null) {
            throw new NullPointerException("visibility == null");
        }
        this.type = cstType;
        this.visibility = annotationVisibility;
        this.elements = new TreeMap<>();
    }

    public void add(NameValuePair nameValuePair) {
        throwIfImmutable();
        if (nameValuePair == null) {
            throw new NullPointerException("pair == null");
        }
        CstString name = nameValuePair.getName();
        if (this.elements.get(name) == null) {
            this.elements.put(name, nameValuePair);
            return;
        }
        throw new IllegalArgumentException("name already added: " + ((Object) name));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Annotation)) {
            return false;
        }
        Annotation annotation = (Annotation) obj;
        if (this.type.equals(annotation.type) && this.visibility == annotation.visibility) {
            return this.elements.equals(annotation.elements);
        }
        return false;
    }

    public Collection<NameValuePair> getNameValuePairs() {
        return Collections.unmodifiableCollection(this.elements.values());
    }

    public CstType getType() {
        return this.type;
    }

    public AnnotationVisibility getVisibility() {
        return this.visibility;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.elements.hashCode()) * 31) + this.visibility.hashCode();
    }

    public void put(NameValuePair nameValuePair) {
        throwIfImmutable();
        if (nameValuePair == null) {
            throw new NullPointerException("pair == null");
        }
        this.elements.put(nameValuePair.getName(), nameValuePair);
    }

    @Override
    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.visibility.toHuman());
        sb2.append("-annotation ");
        sb2.append(this.type.toHuman());
        sb2.append(" {");
        boolean z10 = true;
        for (NameValuePair nameValuePair : this.elements.values()) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(nameValuePair.getName().toHuman());
            sb2.append(": ");
            sb2.append(nameValuePair.getValue().toHuman());
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public String toString() {
        return toHuman();
    }

    @Override
    public int compareTo(Annotation annotation) {
        int compareTo = this.type.compareTo((Constant) annotation.type);
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = this.visibility.compareTo(annotation.visibility);
        if (compareTo2 != 0) {
            return compareTo2;
        }
        Iterator<NameValuePair> it = this.elements.values().iterator();
        Iterator<NameValuePair> it2 = annotation.elements.values().iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compareTo3 = it.next().compareTo(it2.next());
            if (compareTo3 != 0) {
                return compareTo3;
            }
        }
        if (it.hasNext()) {
            return 1;
        }
        return it2.hasNext() ? -1 : 0;
    }
}
