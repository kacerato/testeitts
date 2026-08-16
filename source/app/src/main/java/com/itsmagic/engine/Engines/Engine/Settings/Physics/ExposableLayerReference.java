package com.itsmagic.engine.Engines.Engine.Settings.Physics;

import Ac.b;
import C5.b;
import Cc.d;
import D5.h;
import N7.c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;
import rb.InterfaceC15168a;

public class ExposableLayerReference {

    public Layer f79537a;

    @Expose
    public b layerGUID;

    public class a implements h {

        public final InterfaceC15168a f79538a;

        public final List f79539b;

        public final Context f79540c;

        public a(final InterfaceC15168a val$layerListener, final List val$types, final Context val$context) {
            this.f79538a = val$layerListener;
            this.f79539b = val$types;
            this.f79540c = val$context;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    ExposableLayerReference.this.layerGUID = null;
                    InterfaceC15168a interfaceC15168a = this.f79538a;
                    if (interfaceC15168a != null) {
                        interfaceC15168a.a(null);
                        return;
                    }
                    return;
                }
                ExposableLayerReference exposableLayerReference = ExposableLayerReference.this;
                if (exposableLayerReference.layerGUID == null) {
                    exposableLayerReference.layerGUID = new b();
                }
                String str = (String) this.f79539b.get(i10);
                Layer layer = ExposableLayerReference.this.f79537a = K8.a.m(this.f79540c).g().c(new b(str));
                ExposableLayerReference.this.layerGUID.t0(layer.guid);
                InterfaceC15168a interfaceC15168a2 = this.f79538a;
                if (interfaceC15168a2 != null) {
                    interfaceC15168a2.a(layer);
                }
            }
        }
    }

    public ExposableLayerReference() {
    }

    public static ExposableLayerReference c(ExposableLayerReference exposableLayerReference) {
        if (exposableLayerReference != null) {
            return exposableLayerReference.clone();
        }
        return null;
    }

    public ExposableLayerReference clone() {
        ExposableLayerReference exposableLayerReference = new ExposableLayerReference();
        exposableLayerReference.layerGUID = b.J(this.layerGUID);
        return exposableLayerReference;
    }

    public C5.b d(String tittle, Context context, InterfaceC15168a layerListener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(Lang.l(Lang.T.DEFAULT));
        int j10 = K8.a.m(context).g().j();
        for (int i10 = 0; i10 < j10; i10++) {
            Layer i11 = K8.a.m(context).g().i(i10);
            if (!i11.isDefault) {
                steppedArrayList.add(i11.name.toString());
            }
        }
        String l10 = Lang.l(Lang.T.DEFAULT);
        Layer f10 = f(context);
        if (f10 != null) {
            l10 = f10.name.toString();
        }
        return new C5.b(new a(layerListener, steppedArrayList, context), l10, steppedArrayList, b.a.SLDropdown, tittle);
    }

    public Layer e() {
        return f(c.t());
    }

    public Layer f(Context context) {
        Ac.b bVar;
        Layer layer = this.f79537a;
        if (layer != null && !layer.guid.Y(this.layerGUID)) {
            this.f79537a = null;
        }
        if (this.f79537a == null && (bVar = this.layerGUID) != null && !bVar.g0()) {
            this.f79537a = K8.a.m(context).g().b(this.layerGUID);
        }
        return this.f79537a;
    }

    public int g() {
        return 1 << i().f79542b;
    }

    public int h() {
        return d.a(i().f79542b);
    }

    public Layer i() {
        Layer e10 = e();
        return e10 == null ? K8.a.m(c.t()).g().i(0) : e10;
    }

    public ExposableLayerReference(Ac.b layerGUID) {
        this.layerGUID = layerGUID;
    }
}
