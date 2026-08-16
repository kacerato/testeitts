package com.itsmagic.engine.Engines.Engine.ComponentsV2.ComponentUtils;

import C5.b;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class BakeChildSuppressor extends Component {

    public static final String f73299G = "BakeChildSuppressor";

    public static final Class f73300H = BakeChildSuppressor.class;

    public final Map<Component, Boolean> f73301E;

    public final List<Component> f73302F;

    @Expose
    private boolean suppressCollider;

    @Expose
    private boolean suppressModelRenderer;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return BakeChildSuppressor.f73300H;
        }

        @Override
        public String c() {
            return BakeChildSuppressor.f73299G;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return BakeChildSuppressor.f73299G;
        }
    }

    static {
        C13201a.b(new a());
    }

    public BakeChildSuppressor() {
        super(f73299G);
        this.suppressModelRenderer = true;
        this.suppressCollider = true;
        this.f73301E = new HashMap();
        this.f73302F = new SteppedArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void applySuppression() {
        GameObject gameObject;
        GameObject gameObject2;
        if (this.f79250n == null) {
            return;
        }
        this.f73302F.clear();
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            collectFromChild(this.f79250n.C(i10));
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Iterator<Map.Entry<Component, Boolean>> it = this.f73301E.entrySet().iterator();
        while (it.hasNext()) {
            Component key = it.next().getKey();
            if (!this.f73302F.contains(key) || key == null || (gameObject2 = key.f79250n) == null || !C13317e.J(gameObject2)) {
                steppedArrayList.add(key);
            }
        }
        for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
            Component component = (Component) steppedArrayList.get(i11);
            Boolean remove = this.f73301E.remove(component);
            if (remove != null && component != null && (gameObject = component.f79250n) != null && C13317e.J(gameObject)) {
                setSuppressState(component, remove.booleanValue());
            }
        }
    }

    private void collectFromChild(GameObject obj) {
        Collider collider;
        ModelRenderer modelRenderer;
        if (obj == null) {
            return;
        }
        if (this.suppressModelRenderer && (modelRenderer = (ModelRenderer) obj.c0(Component.e.ModelRenderer)) != null) {
            suppressComponent(modelRenderer);
        }
        if (this.suppressCollider && (collider = (Collider) obj.c0(Component.e.Collider)) != null) {
            suppressComponent(collider);
        }
        for (int i10 = 0; i10 < obj.D(); i10++) {
            collectFromChild(obj.C(i10));
        }
    }

    private boolean getSuppressState(Component comp) {
        if (comp instanceof ModelRenderer) {
            return ((ModelRenderer) comp).isSuppressRender();
        }
        if (comp instanceof Collider) {
            return ((Collider) comp).isSuppressCollision();
        }
        return false;
    }

    private void restoreAll() {
        GameObject gameObject;
        for (Map.Entry<Component, Boolean> entry : this.f73301E.entrySet()) {
            Component key = entry.getKey();
            Boolean value = entry.getValue();
            if (key != null && (gameObject = key.f79250n) != null && C13317e.J(gameObject)) {
                setSuppressState(key, value.booleanValue());
            }
        }
        this.f73301E.clear();
        this.f73302F.clear();
    }

    private void setSuppressState(Component comp, boolean value) {
        if (comp instanceof ModelRenderer) {
            ((ModelRenderer) comp).setSuppressRender(value);
        } else if (comp instanceof Collider) {
            ((Collider) comp).setSuppressCollision(value);
        }
    }

    private void suppressComponent(Component comp) {
        if (!this.f73301E.containsKey(comp)) {
            this.f73301E.put(comp, Boolean.valueOf(getSuppressState(comp)));
        }
        this.f73302F.add(comp);
        setSuppressState(comp, true);
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        restoreAll();
    }

    @Override
    public String getDisplayableTitle() {
        return f73299G;
    }

    @Override
    public int getIconResource() {
        return R.drawable.road;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f73299G;
    }

    @Override
    public Component.e getType() {
        return Component.e.BakeChildSuppressor;
    }

    @Override
    public int iconPriority() {
        return 0;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        restoreAll();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        applySuppression();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component mo1248clone() {
        BakeChildSuppressor bakeChildSuppressor = new BakeChildSuppressor();
        bakeChildSuppressor.suppressModelRenderer = this.suppressModelRenderer;
        bakeChildSuppressor.suppressCollider = this.suppressCollider;
        return bakeChildSuppressor;
    }
}
