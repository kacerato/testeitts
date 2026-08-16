package jme3utilities.debug;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.app.Application;
import com.jme3.app.state.AppStateManager;
import com.jme3.font.BitmapText;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Quad;
import java.util.logging.Logger;
import p000if.C13702E;
import p000if.C13716l;
import p000if.C13729y;
import p000if.EnumC13712h;

public class e extends C13729y {

    public static final String f94071A = "Interface/Fonts/Default.fnt";

    public static final boolean f94072B = false;

    public static final float f94073y = 250.0f;

    public static final Logger f94074z = Logger.getLogger(e.class.getName());

    public BitmapText f94075r;

    public final ColorRGBA f94076s;

    public final ColorRGBA f94077t;

    public double f94078u;

    public float f94079v;

    public float f94080w;

    public Geometry f94081x;

    public e() {
        super(EnumC13712h.Enabled);
        this.f94075r = null;
        this.f94076s = new ColorRGBA(0.0f, 0.0f, 0.0f, 0.5f);
        this.f94077t = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);
        this.f94078u = 0.0d;
        this.f94079v = 0.0f;
        this.f94080w = 1.0f;
    }

    private void f() {
        this.f94079v = 0.0f;
        this.f94078u = this.f94080w;
        this.f94075r.setText("(awaiting update)");
    }

    @Override
    public void cleanup() {
        super.cleanup();
        this.f92180j.detachChild(this.f94081x);
        this.f92180j.detachChild(this.f94075r);
    }

    public void g(float f10) {
        C13702E.E(f10, "new interval");
        this.f94080w = f10;
    }

    public float h() {
        return this.f94080w;
    }

    public final void i() {
        this.f94075r.setText(String.format("Max time per frame = %.1f msec", Float.valueOf(this.f94079v * 1000.0f)));
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        super.initialize(appStateManager, application);
        BitmapText bitmapText = new BitmapText(this.f92176f.loadFont(f94071A));
        this.f94075r = bitmapText;
        float lineHeight = bitmapText.getLineHeight();
        this.f94075r.setColor(this.f94077t);
        BitmapText bitmapText2 = this.f94075r;
        Spatial.CullHint cullHint = Spatial.CullHint.Never;
        bitmapText2.setCullHint(cullHint);
        this.f94075r.setLocalTranslation(0.0f, lineHeight, 0.0f);
        this.f92180j.attachChild(this.f94075r);
        Material m10 = C13716l.m(this.f92176f);
        m10.setColor(SerializableShaderEntry.f81153g, this.f94076s.m1279clone());
        m10.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        Geometry geometry = new Geometry("perf stats background", new Quad(250.0f, lineHeight));
        this.f94081x = geometry;
        geometry.setCullHint(cullHint);
        this.f94081x.setLocalTranslation(0.0f, 0.0f, -1.0f);
        this.f94081x.setMaterial(m10);
        this.f92180j.attachChild(this.f94081x);
        f();
    }

    @Override
    public void setEnabled(boolean z10) {
        Spatial.CullHint cullHint;
        boolean isEnabled = isEnabled();
        super.setEnabled(z10);
        if (isEnabled != z10) {
            if (z10) {
                f();
                cullHint = Spatial.CullHint.Never;
            } else {
                cullHint = Spatial.CullHint.Always;
            }
            this.f94081x.setCullHint(cullHint);
            this.f94075r.setCullHint(cullHint);
        }
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        this.f94079v = Math.max(this.f94079v, f10);
        double d10 = this.f94078u - f10;
        this.f94078u = d10;
        if (d10 < 0.0d) {
            i();
            this.f94079v = 0.0f;
            this.f94078u = this.f94080w;
        }
    }
}
