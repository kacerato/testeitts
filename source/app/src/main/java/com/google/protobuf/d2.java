package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class d2 {

    public Map<Descriptors.f, List<e2>> f69080a;

    public Map<Descriptors.f, List<d2>> f69081b;

    public static class b {

        public Map<Descriptors.f, List<e2>> f69082a;

        public Map<Descriptors.f, List<b>> f69083b;

        public d2 a() {
            return new d2(this.f69082a, this.f69083b);
        }

        public b b(final Descriptors.f fieldDescriptor) {
            List<b> list = this.f69083b.get(fieldDescriptor);
            if (list == null) {
                list = new ArrayList<>();
                this.f69083b.put(fieldDescriptor, list);
            }
            b bVar = new b();
            list.add(bVar);
            return bVar;
        }

        public b c(final Descriptors.f fieldDescriptor, e2 location) {
            List<e2> list = this.f69082a.get(fieldDescriptor);
            if (list == null) {
                list = new ArrayList<>();
                this.f69082a.put(fieldDescriptor, list);
            }
            list.add(location);
            return this;
        }

        public b() {
            this.f69082a = new HashMap();
            this.f69083b = new HashMap();
        }
    }

    public static b a() {
        return new b();
    }

    public static <T> T b(List<T> list, int index, Descriptors.f fieldDescriptor) {
        if (index >= list.size() || index < 0) {
            throw new IllegalArgumentException(String.format("Illegal index field: %s, index %d", fieldDescriptor == null ? "<null>" : fieldDescriptor.c(), Integer.valueOf(index)));
        }
        return list.get(index);
    }

    public e2 c(final Descriptors.f fieldDescriptor, int index) {
        return (e2) b(d(fieldDescriptor), index, fieldDescriptor);
    }

    public List<e2> d(final Descriptors.f fieldDescriptor) {
        List<e2> list = this.f69080a.get(fieldDescriptor);
        return list == null ? Collections.emptyList() : list;
    }

    public d2 e(final Descriptors.f fieldDescriptor, int index) {
        return (d2) b(f(fieldDescriptor), index, fieldDescriptor);
    }

    public List<d2> f(final Descriptors.f fieldDescriptor) {
        List<d2> list = this.f69081b.get(fieldDescriptor);
        return list == null ? Collections.emptyList() : list;
    }

    public d2(Map<Descriptors.f, List<e2>> locationsFromField, Map<Descriptors.f, List<b>> subtreeBuildersFromField) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Descriptors.f, List<e2>> entry : locationsFromField.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        this.f69080a = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<Descriptors.f, List<b>> entry2 : subtreeBuildersFromField.entrySet()) {
            ArrayList arrayList = new ArrayList();
            Iterator<b> it = entry2.getValue().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a());
            }
            hashMap2.put(entry2.getKey(), Collections.unmodifiableList(arrayList));
        }
        this.f69081b = Collections.unmodifiableMap(hashMap2);
    }
}
