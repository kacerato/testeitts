package java.lang.ref;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

final class FinalizerHistogram {
    FinalizerHistogram() {
    }

    public static final class Entry {
        private int instanceCount;
        private final String className;

        int getInstanceCount() {
            return this.instanceCount;
        }

        void increment() {
            this.instanceCount++;
        }

        Entry(String className) {
            this.className = className;
        }
    }

    static Entry[] getFinalizerHistogram() {
        Map<String, Entry> countMap = new HashMap<>();
        ReferenceQueue<Object> queue = Finalizer.getQueue();
        queue.forEach(r10 -> {
            Object referent = r10.get();
            if (referent != null) {
                ((Entry) countMap.computeIfAbsent(referent.getClass().getName(), Entry::new)).increment();
            }
        });
        Entry[] fhe = (Entry[]) countMap.values().toArray(new Entry[countMap.size()]);
        Arrays.sort(fhe, Comparator.comparingInt((v0) -> {
            return v0.getInstanceCount();
        }).reversed());
        return fhe;
    }
}
