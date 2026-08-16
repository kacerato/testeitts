package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public abstract class UIBasePostProcessing<C> extends Component implements Serializable {

    public final Mc.i<UIController> f75956E;

    public final Map<UIController, C> f75957F;

    public UIController f75958G;

    public UIBasePostProcessing(String serializedComponentType) {
        super(serializedComponentType, true);
        this.f75956E = new Mc.i<>();
        this.f75957F = new HashMap();
        this.f75958G = null;
    }

    public void applyAfterRender(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    public void applyBeforeRender(UIController uIController, Tb.a frameBuffer) {
    }

    public void applyInPreUpdate(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
    }

    public void destroyCache(C cache) {
    }

    public abstract void disableFor(UIController uIController);

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        UIController uIController = this.f75958G;
        if (uIController != null) {
            disableFor(uIController);
        }
    }

    public C getCache(UIController uIController) {
        if (this.f75957F.get(uIController) == null) {
            this.f75957F.put(uIController, newCacheInstance());
        }
        return this.f75957F.get(uIController);
    }

    public void invalidateAttachedUIController() {
        GameObject gameObject;
        UIController uIController = this.f75958G;
        if (uIController == null && (gameObject = this.f79250n) != null) {
            uIController = (UIController) gameObject.d0(UIController.class);
        }
        if (uIController != null) {
            uIController.markUIDirty();
        }
    }

    public boolean isAttachedLocal(UIController uIController) {
        return this.f75958G == uIController;
    }

    public abstract C newCacheInstance();

    public final void notifyActiveUIController(UIController uIController) {
        if (this.f75956E.contains(uIController)) {
            return;
        }
        this.f75956E.add(uIController);
    }

    public final void notifyDeadUIController(UIController uIController) {
        this.f75956E.remove(uIController);
        destroyCache(this.f75957F.remove(uIController));
    }

    @Override
    public void onAttach() {
        super.onAttach();
        if (shouldBlockFromBasic()) {
            return;
        }
        invalidateAttachedUIController();
    }

    @Override
    public void onDetach() {
        invalidateAttachedUIController();
        for (int i10 = 0; i10 < this.f75956E.size(); i10++) {
            disableFor(this.f75956E.get(i10));
        }
        this.f75956E.clear();
        Iterator<C> it = this.f75957F.values().iterator();
        while (it.hasNext()) {
            destroyCache(it.next());
        }
        this.f75957F.clear();
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (Component.isFullVersion()) {
            invalidateAttachedUIController();
        }
    }

    public void preRender() {
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (shouldBlockFromBasic()) {
            return;
        }
        UIController uIController = (UIController) gameObject.d0(UIController.class);
        if (uIController != null && this.f75958G == null) {
            this.f75958G = uIController;
            if (!this.f75956E.contains(uIController)) {
                notifyActiveUIController(uIController);
            }
        }
        UIController uIController2 = this.f75958G;
        if (uIController2 != null && uIController == null) {
            notifyDeadUIController(uIController2);
            this.f75958G = null;
        }
        UIController uIController3 = this.f75958G;
        if (uIController3 != null) {
            applyInPreUpdate(this.f75958G, uIController3.getFrameBuffer(), this.f75958G.getCacheBuffer());
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            Iterator<C> it = this.f75957F.values().iterator();
            while (it.hasNext()) {
                destroyCache(it.next());
            }
            this.f75957F.clear();
        }
    }
}
