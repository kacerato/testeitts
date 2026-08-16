package com.jme3.light;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.scene.Spatial;
import com.jme3.util.SortUtil;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Predicate;

public final class LightList implements Iterable<Light>, Savable, Cloneable, JmeCloneable {
    private static final int DEFAULT_SIZE = 1;

    private static final Comparator<Light> f81594c = new Comparator<Light>() {
        @Override
        public int compare(Light light, Light light2) {
            float f10 = light.lastDistance;
            float f11 = light2.lastDistance;
            if (f10 < f11) {
                return -1;
            }
            return f10 > f11 ? 1 : 0;
        }
    };
    private float[] distToOwner;
    private Light[] list;
    private int listSize;
    private Spatial owner;
    private Light[] tlist;

    public LightList() {
    }

    private void doubleSize() {
        Light[] lightArr = this.list;
        Light[] lightArr2 = new Light[lightArr.length * 2];
        float[] fArr = new float[lightArr.length * 2];
        System.arraycopy(lightArr, 0, lightArr2, 0, lightArr.length);
        System.arraycopy(this.distToOwner, 0, fArr, 0, this.list.length);
        this.list = lightArr2;
        this.distToOwner = fArr;
    }

    public void add(Light light) {
        if (this.listSize == this.list.length) {
            doubleSize();
        }
        Light[] lightArr = this.list;
        int i10 = this.listSize;
        lightArr[i10] = light;
        float[] fArr = this.distToOwner;
        this.listSize = i10 + 1;
        fArr[i10] = Float.NEGATIVE_INFINITY;
    }

    public void clear() {
        if (this.listSize == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.listSize; i10++) {
            this.list[i10] = null;
        }
        Light[] lightArr = this.tlist;
        if (lightArr != null) {
            Arrays.fill(lightArr, (Object) null);
        }
        this.listSize = 0;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.owner = (Spatial) cloner.clone(this.owner);
        this.list = (Light[]) cloner.clone(this.list);
        this.distToOwner = (float[]) cloner.clone(this.distToOwner);
    }

    public Light get(int i10) {
        if (i10 >= this.listSize || i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        return this.list[i10];
    }

    @Override
    public Iterator<Light> iterator() {
        return new Iterator<Light>() {
            int index = 0;

            @Override
            public boolean hasNext() {
                return this.index < LightList.this.size();
            }

            @Override
            public void remove() {
                LightList lightList = LightList.this;
                int i10 = this.index - 1;
                this.index = i10;
                lightList.remove(i10);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Light next() {
                if (hasNext()) {
                    Light[] lightArr = LightList.this.list;
                    int i10 = this.index;
                    this.index = i10 + 1;
                    return lightArr[i10];
                }
                throw new NoSuchElementException();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        ArrayList readSavableArrayList = jmeImporter.getCapsule(this).readSavableArrayList("lights", null);
        int size = readSavableArrayList.size();
        this.listSize = size;
        int max = Math.max(1, size);
        this.list = new Light[max];
        this.distToOwner = new float[max];
        for (int i10 = 0; i10 < this.listSize; i10++) {
            this.list[i10] = (Light) readSavableArrayList.get(i10);
        }
        Arrays.fill(this.distToOwner, Float.NEGATIVE_INFINITY);
    }

    public void remove(int i10) {
        int i11 = this.listSize;
        if (i10 < i11 && i10 >= 0) {
            int i12 = i11 - 1;
            this.listSize = i12;
            if (i10 == i12) {
                this.list[i12] = null;
                return;
            }
            while (true) {
                int i13 = this.listSize;
                if (i10 < i13) {
                    Light[] lightArr = this.list;
                    int i14 = i10 + 1;
                    lightArr[i10] = lightArr[i14];
                    i10 = i14;
                } else {
                    this.list[i13] = null;
                    return;
                }
            }
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    public void setOwner(Spatial spatial) {
        this.owner = spatial;
    }

    public int size() {
        return this.listSize;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void sort(boolean z10) {
        if (this.listSize > 1) {
            Light[] lightArr = this.tlist;
            if (lightArr != null) {
                int length = lightArr.length;
                Light[] lightArr2 = this.list;
                if (length == lightArr2.length) {
                    System.arraycopy(lightArr2, 0, lightArr, 0, lightArr2.length);
                    if (z10) {
                        for (int i10 = 0; i10 < this.listSize; i10++) {
                            this.list[i10].computeLastDistance(this.owner);
                        }
                    }
                    SortUtil.msort(this.tlist, this.list, 0, this.listSize - 1, f81594c);
                }
            }
            this.tlist = (Light[]) this.list.clone();
            if (z10) {
            }
            SortUtil.msort(this.tlist, this.list, 0, this.listSize - 1, f81594c);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LightList[");
        for (int i10 = 0; i10 < this.listSize; i10++) {
            sb2.append((Object) this.list[i10]);
            if (i10 < this.listSize - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public void update(LightList lightList, LightList lightList2) {
        update(lightList, lightList2, null);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.listSize; i10++) {
            arrayList.add(this.list[i10]);
        }
        capsule.writeSavableArrayList(arrayList, "lights", null);
    }

    public LightList(Spatial spatial) {
        this.listSize = 0;
        this.list = new Light[1];
        float[] fArr = new float[1];
        this.distToOwner = fArr;
        Arrays.fill(fArr, Float.NEGATIVE_INFINITY);
        this.owner = spatial;
    }

    public LightList m1271clone() {
        try {
            LightList lightList = (LightList) super.clone();
            lightList.owner = null;
            lightList.list = (Light[]) this.list.clone();
            lightList.distToOwner = (float[]) this.distToOwner.clone();
            lightList.tlist = null;
            return lightList;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public LightList jmeClone() {
        try {
            LightList lightList = (LightList) super.clone();
            lightList.tlist = null;
            return lightList;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void update(LightList lightList, LightList lightList2, Predicate<Light> predicate) {
        clear();
        while (this.list.length <= lightList.listSize) {
            doubleSize();
        }
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < lightList.listSize; i12++) {
            Light light = lightList.list[i12];
            if (predicate == null || predicate.test(light)) {
                this.list[i11] = light;
                this.distToOwner[i11] = Float.NEGATIVE_INFINITY;
                i11++;
            }
        }
        if (lightList2 != null) {
            int i13 = lightList2.listSize + i11;
            while (this.list.length <= i13) {
                doubleSize();
            }
            while (true) {
                int i14 = lightList2.listSize;
                if (i10 < i14) {
                    int i15 = i10 + i11;
                    this.list[i15] = lightList2.list[i10];
                    this.distToOwner[i15] = Float.NEGATIVE_INFINITY;
                    i10++;
                } else {
                    this.listSize = i11 + i14;
                    return;
                }
            }
        } else {
            this.listSize = i11;
        }
    }

    public void remove(Light light) {
        for (int i10 = 0; i10 < this.listSize; i10++) {
            if (this.list[i10] == light) {
                remove(i10);
                return;
            }
        }
    }
}
