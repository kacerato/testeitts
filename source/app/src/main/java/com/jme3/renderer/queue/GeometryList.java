package com.jme3.renderer.queue;

import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;
import com.jme3.util.ListSort;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class GeometryList implements Iterable<Geometry> {
    private static final int DEFAULT_SIZE = 32;
    private GeometryComparator comparator;
    private int size = 0;
    private Geometry[] geometries = new Geometry[32];
    private final ListSort listSort = new ListSort();

    public GeometryList(GeometryComparator geometryComparator) {
        this.comparator = geometryComparator;
    }

    public void add(Geometry geometry) {
        int i10 = this.size;
        Geometry[] geometryArr = this.geometries;
        if (i10 == geometryArr.length) {
            Geometry[] geometryArr2 = new Geometry[i10 * 2];
            System.arraycopy(geometryArr, 0, geometryArr2, 0, i10);
            this.geometries = geometryArr2;
        }
        Geometry[] geometryArr3 = this.geometries;
        int i11 = this.size;
        this.size = i11 + 1;
        geometryArr3[i11] = geometry;
    }

    public void clear() {
        for (int i10 = 0; i10 < this.size; i10++) {
            this.geometries[i10] = null;
        }
        this.size = 0;
    }

    public Geometry get(int i10) {
        return this.geometries[i10];
    }

    public GeometryComparator getComparator() {
        return this.comparator;
    }

    @Override
    public Iterator<Geometry> iterator() {
        return new Iterator<Geometry>() {
            int index = 0;

            @Override
            public boolean hasNext() {
                return this.index < GeometryList.this.size();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException("Geometry list doesn't support iterator removal");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Geometry next() {
                if (this.index < GeometryList.this.size()) {
                    GeometryList geometryList = GeometryList.this;
                    int i10 = this.index;
                    this.index = i10 + 1;
                    return geometryList.get(i10);
                }
                throw new NoSuchElementException("Geometry list has only " + GeometryList.this.size() + " elements");
            }
        };
    }

    public void set(int i10, Geometry geometry) {
        this.geometries[i10] = geometry;
    }

    public void setCamera(Camera camera) {
        this.comparator.setCamera(camera);
    }

    public void setComparator(GeometryComparator geometryComparator) {
        this.comparator = geometryComparator;
    }

    public int size() {
        return this.size;
    }

    public void sort() {
        if (this.size > 1) {
            int length = this.listSort.getLength();
            int i10 = this.size;
            if (length != i10) {
                this.listSort.allocateStack(i10);
            }
            this.listSort.sort(this.geometries, this.comparator);
        }
    }
}
