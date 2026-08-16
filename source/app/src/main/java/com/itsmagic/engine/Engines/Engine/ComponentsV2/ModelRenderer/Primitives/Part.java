package com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Primitives;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import eb.f;
import java.io.Serializable;
import uc.C15593a;

public class Part implements Serializable {

    @Expose
    @f
    public int[] array;

    public transient NativeIntBuffer f73813b;

    public transient int f73814c;

    public transient boolean f73815d;

    public Part(int[] array) {
        this.array = array;
        this.f73814c = array.length / 3;
    }

    public NativeIntBuffer a() {
        int[] iArr;
        if (this.f73813b == null && (iArr = this.array) != null) {
            this.f73814c = iArr.length / 3;
            this.f73813b = C15593a.q(iArr);
        }
        return this.f73813b;
    }

    public void b() {
        if (this.f73815d || this.array == null) {
            return;
        }
        this.f73813b = null;
    }

    public Part(NativeIntBuffer intBuffer) {
        this.f73813b = intBuffer;
        this.f73814c = intBuffer.capacity() / 3;
        this.f73815d = true;
    }
}
