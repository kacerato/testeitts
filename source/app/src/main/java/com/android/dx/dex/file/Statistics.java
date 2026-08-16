package com.android.dx.dex.file;

import com.android.dx.util.AnnotatedOutput;
import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class Statistics {
    private final HashMap<String, Data> dataMap = new HashMap<>(50);

    public static class Data {
        private int count;
        private int largestSize;
        private final String name;
        private int smallestSize;
        private int totalSize;

        public Data(Item item, String str) {
            int writeSize = item.writeSize();
            this.name = str;
            this.count = 1;
            this.totalSize = writeSize;
            this.largestSize = writeSize;
            this.smallestSize = writeSize;
        }

        public void add(Item item) {
            int writeSize = item.writeSize();
            this.count++;
            this.totalSize += writeSize;
            if (writeSize > this.largestSize) {
                this.largestSize = writeSize;
            }
            if (writeSize < this.smallestSize) {
                this.smallestSize = writeSize;
            }
        }

        public String toHuman() {
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(GlideException.a.f59088e);
            sb3.append(this.name);
            sb3.append(": ");
            sb3.append(this.count);
            sb3.append(" item");
            sb3.append(this.count == 1 ? "" : "s");
            sb3.append(VectorFormat.DEFAULT_SEPARATOR);
            sb3.append(this.totalSize);
            sb3.append(" bytes total\n");
            sb2.append(sb3.toString());
            if (this.smallestSize == this.largestSize) {
                sb2.append(C13155a.f85806a + this.smallestSize + " bytes/item\n");
            } else {
                sb2.append(C13155a.f85806a + this.smallestSize + ClasspathEntry.DOT_DOT + this.largestSize + " bytes/item; average " + (this.totalSize / this.count) + "\n");
            }
            return sb2.toString();
        }

        public void writeAnnotation(AnnotatedOutput annotatedOutput) {
            annotatedOutput.annotate(toHuman());
        }
    }

    public void add(Item item) {
        String typeName = item.typeName();
        Data data = this.dataMap.get(typeName);
        if (data == null) {
            this.dataMap.put(typeName, new Data(item, typeName));
        } else {
            data.add(item);
        }
    }

    public void addAll(Section section) {
        Iterator<? extends Item> it = section.items().iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Statistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        Iterator it = treeMap.values().iterator();
        while (it.hasNext()) {
            sb2.append(((Data) it.next()).toHuman());
        }
        return sb2.toString();
    }

    public final void writeAnnotation(AnnotatedOutput annotatedOutput) {
        if (this.dataMap.size() == 0) {
            return;
        }
        annotatedOutput.annotate(0, "\nstatistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        Iterator it = treeMap.values().iterator();
        while (it.hasNext()) {
            ((Data) it.next()).writeAnnotation(annotatedOutput);
        }
    }
}
