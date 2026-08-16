package com.android.tools.r8.internal;

import com.ardor3d.util.export.xml.XMLExporter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.Spliterator;
import java.util.function.BiFunction;
import java.util.function.Function;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class AbstractC8552nC implements Map, Serializable {

    public static final Map.Entry[] f50554e = new Map.Entry[0];

    public transient QC f50555b;

    public transient QC f50556c;

    public transient XB f50557d;

    public static IllegalArgumentException a(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static AbstractC8552nC p() {
        return C6620bf0.f46817i;
    }

    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract QC e();

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override
    public abstract Object get(Object obj);

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override
    public int hashCode() {
        return AbstractC5513Ll0.a((Set) entrySet());
    }

    public abstract QC i();

    @Override
    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract XB j();

    @Override
    public QC entrySet() {
        QC qc2 = this.f50555b;
        if (qc2 != null) {
            return qc2;
        }
        QC e10 = e();
        this.f50555b = e10;
        return e10;
    }

    public abstract boolean l();

    public AbstractC4895Av0 m() {
        return new C7884jC(entrySet().iterator());
    }

    @Override
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override
    public QC o() {
        QC qc2 = this.f50556c;
        if (qc2 != null) {
            return qc2;
        }
        QC i10 = i();
        this.f50556c = i10;
        return i10;
    }

    public Spliterator o() {
        return AbstractC5901Se.a(entrySet().spliterator(), new C9908vK0());
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public XB values() {
        XB xb2 = this.f50557d;
        if (xb2 != null) {
            return xb2;
        }
        XB j10 = j();
        this.f50557d = j10;
        return j10;
    }

    @Override
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        AbstractC5496Le.a(size, XMLExporter.ATTRIBUTE_SIZE);
        StringBuilder sb2 = new StringBuilder((int) Math.min(size * 8, TagBits.HasDirectWildcard));
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        boolean z10 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
            z10 = false;
        }
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }

    public static AbstractC8552nC a(Map map) {
        if ((map instanceof AbstractC8552nC) && !(map instanceof SortedMap)) {
            AbstractC8552nC abstractC8552nC = (AbstractC8552nC) map;
            if (!abstractC8552nC.l()) {
                return abstractC8552nC;
            }
        } else if (map instanceof EnumMap) {
            EnumMap enumMap = new EnumMap((EnumMap) map);
            for (Map.Entry entry : enumMap.entrySet()) {
                AbstractC5496Le.a(entry.getKey(), entry.getValue());
            }
            int size = enumMap.size();
            if (size == 0) {
                return C6620bf0.f46817i;
            }
            if (size != 1) {
                return new C6385aC(enumMap);
            }
            Map.Entry entry2 = (Map.Entry) AbstractC9907vK.a(enumMap.entrySet());
            return new C5862Rm0((Enum) entry2.getKey(), entry2.getValue());
        }
        Collection entrySet = map.entrySet();
        Map.Entry[] entryArr = f50554e;
        if (!(entrySet instanceof Collection)) {
            Iterator<E> it = entrySet.iterator();
            Collection arrayList = new ArrayList();
            JK.a(arrayList, it);
            entrySet = arrayList;
        }
        Map.Entry[] entryArr2 = (Map.Entry[]) entrySet.toArray(entryArr);
        int length = entryArr2.length;
        if (length == 0) {
            return C6620bf0.f46817i;
        }
        if (length != 1) {
            return C6620bf0.a(entryArr2.length, entryArr2);
        }
        Map.Entry entry3 = entryArr2[0];
        Objects.requireNonNull(entry3);
        Map.Entry entry4 = entry3;
        return new C5862Rm0(entry4.getKey(), entry4.getValue());
    }

    @Override
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }
}
