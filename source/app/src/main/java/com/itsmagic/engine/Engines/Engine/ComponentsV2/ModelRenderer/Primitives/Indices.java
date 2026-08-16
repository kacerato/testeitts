package com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Primitives;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import eb.f;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Indices implements Serializable {

    public final int f73812b = 33554432;

    @Expose
    public List<Part> parts = new LinkedList();

    @Expose
    @f
    public int createdWithChunkSise = 0;

    public void a(Part part) {
        b().add(part);
    }

    public List<Part> b() {
        if (this.parts == null) {
            this.parts = new LinkedList();
        }
        return this.parts;
    }

    public void c() {
        Iterator<Part> it = this.parts.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public boolean d() {
        return this.createdWithChunkSise == 33554432;
    }

    public void e(NativeIntBuffer buffer) {
        this.createdWithChunkSise = 33554432;
        b().clear();
        a(new Part(buffer));
    }

    public void f(int[] array) {
        this.createdWithChunkSise = 33554432;
        b().clear();
        int i10 = 0;
        while (i10 < array.length) {
            int i11 = 100663296 + i10;
            a(new Part(Arrays.copyOfRange(array, i10, Math.min(array.length, i11))));
            i10 = i11;
        }
    }
}
