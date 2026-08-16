package com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom;

import Vb.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.f;
import java.util.List;

public class MaterialShader {

    public transient boolean f80143a;

    public transient String f80144b;

    public transient FilamentMaterialTemplate f80145c;

    public transient MaterialConfig f80146d;

    public transient long f80147e;

    public transient List<f> f80148f;

    public final transient List<b> f80149g = new SteppedArrayList();

    @Expose
    private String ipp;

    @Expose
    private String name;

    public long a() {
        return this.f80147e;
    }

    public String b() {
        return this.ipp;
    }

    public String c() {
        return this.name;
    }

    public void d(long compiledSceneVFXShaderHash) {
        this.f80147e = compiledSceneVFXShaderHash;
    }

    public void e(String ipp) {
        this.ipp = ipp;
    }

    public void f(String name) {
        this.name = name;
    }
}
