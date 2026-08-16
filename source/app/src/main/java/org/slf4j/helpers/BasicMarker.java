package org.slf4j.helpers;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.slf4j.Marker;
import w2.C15883c;

public class BasicMarker implements Marker {
    private static String CLOSE = " ]";
    private static String OPEN = "[ ";
    private static String SEP = ", ";
    private static final long serialVersionUID = -2849567615646933777L;
    private final String name;
    private List<Marker> referenceList = new CopyOnWriteArrayList();

    public BasicMarker(String str) {
        if (str == null) {
            throw new IllegalArgumentException("A marker name cannot be null");
        }
        this.name = str;
    }

    @Override
    public void add(Marker marker) {
        if (marker == null) {
            throw new IllegalArgumentException("A null value cannot be added to a Marker as reference.");
        }
        if (contains(marker) || marker.contains(this)) {
            return;
        }
        this.referenceList.add(marker);
    }

    @Override
    public boolean contains(Marker marker) {
        if (marker != null) {
            if (equals(marker)) {
                return true;
            }
            if (!hasReferences()) {
                return false;
            }
            Iterator<Marker> it = this.referenceList.iterator();
            while (it.hasNext()) {
                if (it.next().contains(marker)) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException("Other cannot be null");
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof Marker)) {
            return this.name.equals(((Marker) obj).getName());
        }
        return false;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public boolean hasChildren() {
        return hasReferences();
    }

    @Override
    public boolean hasReferences() {
        return this.referenceList.size() > 0;
    }

    @Override
    public int hashCode() {
        return this.name.hashCode();
    }

    @Override
    public Iterator<Marker> iterator() {
        return this.referenceList.iterator();
    }

    @Override
    public boolean remove(Marker marker) {
        return this.referenceList.remove(marker);
    }

    public String toString() {
        if (!hasReferences()) {
            return getName();
        }
        Iterator<Marker> it = iterator();
        StringBuilder sb2 = new StringBuilder(getName());
        sb2.append(C15883c.f126249O);
        sb2.append(OPEN);
        while (it.hasNext()) {
            sb2.append(it.next().getName());
            if (it.hasNext()) {
                sb2.append(SEP);
            }
        }
        sb2.append(CLOSE);
        return sb2.toString();
    }

    @Override
    public boolean contains(String str) {
        if (str != null) {
            if (this.name.equals(str)) {
                return true;
            }
            if (!hasReferences()) {
                return false;
            }
            Iterator<Marker> it = this.referenceList.iterator();
            while (it.hasNext()) {
                if (it.next().contains(str)) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException("Other cannot be null");
    }
}
