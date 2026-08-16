package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core;

import C5.b;
import Lb.c;
import Mc.i;
import Tb.a;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine2.R;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class BasePostProcessing<C> extends Component implements Serializable {

    public final i<Camera> f75846E;

    public final Map<Camera, C> f75847F;

    public Camera f75848G;

    public BasePostProcessing(String serializedComponentType) {
        super(serializedComponentType, true);
        this.f75846E = new i<>();
        this.f75847F = new HashMap();
        this.f75848G = null;
    }

    public void applyAfterRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, a frameBuffer, a cacheBuffer) {
    }

    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, a frameBuffer) {
    }

    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, a frameBuffer, a cacheBuffer) {
    }

    public void destroyCache(C cache) {
    }

    public abstract void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view);

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        Camera camera;
        super.disabledPreUpdate(gameObject, isEditor);
        if (shouldBlockFromBasic() || (camera = this.f75848G) == null) {
            return;
        }
        FilamentView view = camera.getView();
        FilamentCamera filamentCamera = this.f75848G.getFilamentCamera();
        this.f75848G.getImageBuffer();
        disableFor(this.f75848G, filamentCamera, view);
    }

    public C getCache(Camera camera) {
        if (this.f75847F.get(camera) == null) {
            this.f75847F.put(camera, newCacheInstance());
        }
        return this.f75847F.get(camera);
    }

    public Iterable<C> getCaches() {
        return this.f75847F.values();
    }

    @Override
    public int getInspectorColorV2(Context context) {
        if (!isAdvancedRendererRequired() || GraphicsSettings.d()) {
            return 0;
        }
        return R.color.theme_accent;
    }

    @Override
    public List<b> getInternalInspectorEntries(Context context) {
        List<b> internalInspectorEntries = super.getInternalInspectorEntries(context);
        if (isAdvancedRendererRequired() && !GraphicsSettings.d()) {
            internalInspectorEntries.add(new b("ADVANCED renderer mode is required.", 12, R.color.theme_accent));
        }
        return internalInspectorEntries;
    }

    public boolean isAdvancedRendererRequired() {
        return false;
    }

    public boolean isAttachedLocal(Camera camera) {
        return this.f75848G == camera;
    }

    public abstract C newCacheInstance();

    public final void notifyActiveCamera(Camera camera) {
        if (this.f75846E.contains(camera)) {
            return;
        }
        this.f75846E.add(camera);
    }

    public final void notifyDeadCamera(Camera camera) {
        this.f75846E.remove(camera);
        if (camera != null) {
            FilamentView view = camera.getView();
            FilamentCamera filamentCamera = camera.getFilamentCamera();
            if (view != null && filamentCamera != null) {
                disableFor(camera, filamentCamera, view);
            }
        }
        destroyCache(this.f75847F.remove(camera));
    }

    @Override
    public void onDetach() {
        FilamentCamera filamentCamera;
        for (int i10 = 0; i10 < this.f75846E.size(); i10++) {
            Camera camera = this.f75846E.get(i10);
            FilamentView view = camera.getView();
            if (view != null && (filamentCamera = camera.getFilamentCamera()) != null) {
                disableFor(camera, filamentCamera, view);
            }
        }
        this.f75846E.clear();
        Iterator<C> it = this.f75847F.values().iterator();
        while (it.hasNext()) {
            destroyCache(it.next());
        }
        this.f75847F.clear();
        super.onDetach();
    }

    public C peekCache(Camera camera) {
        return this.f75847F.get(camera);
    }

    public void preRender() {
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (shouldBlockFromBasic()) {
            Camera camera = (Camera) gameObject.d0(Camera.class);
            if (camera != null && this.f75848G == null) {
                this.f75848G = camera;
                if (!this.f75846E.contains(camera)) {
                    notifyActiveCamera(camera);
                }
            }
            Camera camera2 = this.f75848G;
            if (camera2 != null && camera == null) {
                notifyDeadCamera(camera2);
                this.f75848G = null;
            }
            Camera camera3 = this.f75848G;
            if (camera3 != null) {
                FilamentView view = camera3.getView();
                applyInPreUpdate(this.f75848G, this.f75848G.getFilamentCamera(), view, this.f75848G.getImageBuffer(), this.f75848G.getCacheBuffer());
            }
        }
    }

    @Override
    public void receiveEvent(c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            Iterator<C> it = this.f75847F.values().iterator();
            while (it.hasNext()) {
                destroyCache(it.next());
            }
            this.f75847F.clear();
        }
    }
}
