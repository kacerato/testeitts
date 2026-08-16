package m9;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;

public class C14196b extends C2634m {

    public Rb.c f96748b;

    public FilamentRenderable f96749c;

    public Rb.c f96750d;

    public FilamentRenderable f96751e;

    public PooledObject f96752g;

    public boolean f96754j;

    public final float[] f96753i = new float[16];

    public final Runnable f96755k = new a();

    public final Runnable f96756l = new RunnableC1873b();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            FilamentRenderable filamentRenderable = C14196b.this.f96749c;
            if (filamentRenderable != null) {
                filamentRenderable.applyLayers();
            }
        }
    }

    public class RunnableC1873b implements Runnable {
        public RunnableC1873b() {
        }

        @Override
        public void run() {
            FilamentRenderable filamentRenderable = C14196b.this.f96751e;
            if (filamentRenderable != null) {
                filamentRenderable.applyLayers();
            }
        }
    }
}
