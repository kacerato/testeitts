package com.itsmagic.engine.Engines.Engine.Settings.Physics;

import C5.b;
import D5.h;
import Z6.c;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import kd.C13965a;
import kd.InterfaceC13966b;
import r4.C15147a;

public class PhysicsSettings implements Serializable {

    @Expose
    public final InspectorEditor filtersEditor;

    @Expose
    public final List<Layer> layers;

    @Expose
    public final InspectorEditor layersEditor;

    public class a implements h {

        public final Context f79545a;

        public final Layer f79546b;

        public final com.itsmagic.engine.Engines.Engine.Settings.c f79547c;

        public class C1353a implements InterfaceC13966b {
            public C1353a() {
            }

            @Override
            public void run() {
                a.this.f79547c.a();
            }
        }

        public class b implements InterfaceC13966b {
            public b() {
            }

            @Override
            public void run() {
                a.this.f79547c.a();
            }
        }

        public a(final Context val$context, final Layer val$layer, final com.itsmagic.engine.Engines.Engine.Settings.c val$settingsInflationListener) {
            this.f79545a = val$context;
            this.f79546b = val$layer;
            this.f79547c = val$settingsInflationListener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f79546b.name.toString());
        }

        @Override
        public void set(Variable entryVar) {
            boolean z10;
            if (entryVar != null) {
                String replaceAll = entryVar.str_value.replaceAll(" ", "");
                if (replaceAll.isEmpty()) {
                    Toast.makeText(this.f79545a, "Name can't be empty.", 0).show();
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (z10 && !Character.isAlphabetic(replaceAll.charAt(0))) {
                    Toast.makeText(this.f79545a, "The first letter must be an alphabetic letter.", 0).show();
                    z10 = false;
                }
                if (z10) {
                    Layer c10 = PhysicsSettings.this.c(new Ac.b(replaceAll));
                    if (c10 != null) {
                        if (c10 == this.f79546b) {
                            return;
                        }
                        Toast.makeText(this.f79545a, "Name already in use by another layer", 0).show();
                        new C13965a().a(1000, new C1353a());
                        return;
                    }
                    this.f79546b.name.u0(replaceAll);
                    K8.a.l().k();
                    Cc.d.b();
                    new C13965a().a(1000, new b());
                }
            }
        }
    }

    public class b implements D5.b {

        public final Layer f79551a;

        public final com.itsmagic.engine.Engines.Engine.Settings.c f79552b;

        public class a extends c.h {

            public class RunnableC1354a implements Runnable {
                public RunnableC1354a() {
                }

                @Override
                public void run() {
                    b.this.f79552b.a();
                }
            }

            public a() {
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                synchronized (PhysicsSettings.this.layers) {
                    b bVar = b.this;
                    PhysicsSettings.this.layers.remove(bVar.f79551a);
                    K8.a.l().k();
                }
                N7.c.l(0.25f, new RunnableC1354a());
            }
        }

        public b(final Layer val$layer, final com.itsmagic.engine.Engines.Engine.Settings.c val$settingsInflationListener) {
            this.f79551a = val$layer;
            this.f79552b = val$settingsInflationListener;
        }

        @Override
        public void a(View view) {
            Z6.c.w1(view, C15147a.e.Left, Lang.l(Lang.T.ATTENTION), Lang.l(Lang.T.DELETE_LAYER) + " " + ((Object) this.f79551a.k()) + "?", new a());
        }
    }

    public class c implements D5.b {

        public final Context f79556a;

        public final com.itsmagic.engine.Engines.Engine.Settings.c f79557b;

        public class a implements InterfaceC13966b {
            public a() {
            }

            @Override
            public void run() {
                c.this.f79557b.a();
            }
        }

        public c(final Context val$context, final com.itsmagic.engine.Engines.Engine.Settings.c val$settingsInflationListener) {
            this.f79556a = val$context;
            this.f79557b = val$settingsInflationListener;
        }

        @Override
        public void a(View view) {
            if (PhysicsSettings.this.j() >= 16) {
                N7.c.v0("Max supported layers by physics engine:16");
                return;
            }
            PhysicsSettings.this.a(new Layer(new Ac.b(PhysicsSettings.this.d())));
            K8.a.m(this.f79556a).k();
            new C13965a().a(250, new a());
        }
    }

    public class d implements D5.e {

        public static final int f79560c = 26;

        public final Context f79561a;

        public class a implements e {

            public final int f79563a;

            public a(final int val$rowSizePixels) {
                this.f79563a = val$rowSizePixels;
            }

            @Override
            public LinearLayout.LayoutParams a(LinearLayout.LayoutParams lp) {
                lp.width = -1;
                lp.height = this.f79563a;
                return lp;
            }
        }

        public class b implements e {

            public final int f79565a;

            public b(final int val$rowSizePixels) {
                this.f79565a = val$rowSizePixels;
            }

            @Override
            public LinearLayout.LayoutParams a(LinearLayout.LayoutParams lp) {
                lp.width = this.f79565a;
                lp.height = -1;
                return lp;
            }
        }

        public class c implements CustomCheckBox.a {

            public final Layer f79567a;

            public final Layer f79568b;

            public c(final Layer val$layer, final Layer val$layerX) {
                this.f79567a = val$layer;
                this.f79568b = val$layerX;
            }

            @Override
            public void a(CustomCheckBox view, boolean isChecked) {
                if (isChecked) {
                    this.f79567a.r(this.f79568b);
                    this.f79568b.r(this.f79567a);
                    N7.c.v0(((Object) this.f79567a.name) + "<->" + ((Object) this.f79568b.name) + " ON");
                } else {
                    this.f79567a.f(this.f79568b);
                    this.f79568b.f(this.f79567a);
                    N7.c.v0(((Object) this.f79567a.name) + "<->" + ((Object) this.f79568b.name) + " OFF");
                }
                K8.a.m(d.this.f79561a).k();
                Cc.d.b();
            }
        }

        public d(final Context val$context) {
            this.f79561a = val$context;
        }

        public final void c(LinearLayout parent, LayoutInflater layoutInflater, int layout, int i10, e fillSize) {
            Layer layer = PhysicsSettings.this.layers.get(i10);
            View inflate = layoutInflater.inflate(layout, (ViewGroup) null);
            parent.addView(inflate);
            LinearLayout.LayoutParams a10 = fillSize.a((LinearLayout.LayoutParams) inflate.getLayoutParams());
            a10.weight = 0.0f;
            inflate.setLayoutParams(a10);
            ((TextView) inflate.findViewById(R.id.textView)).setText(layer.k().toString().toUpperCase(Locale.ROOT));
        }

        public final void d(int w10, int h10, View parent) {
            ViewGroup.LayoutParams layoutParams = parent.getLayoutParams();
            layoutParams.width = w10;
            layoutParams.height = h10;
            parent.setLayoutParams(layoutParams);
        }

        public final void e(TableLayout table, LayoutInflater layoutInflater, int heightPixels) {
            table.removeAllViews();
            for (int i10 = 0; i10 < PhysicsSettings.this.layers.size(); i10++) {
                Layer layer = PhysicsSettings.this.layers.get(i10);
                TableRow tableRow = new TableRow(this.f79561a);
                table.addView(tableRow);
                ViewGroup.LayoutParams layoutParams = tableRow.getLayoutParams();
                layoutParams.width = -2;
                layoutParams.height = heightPixels;
                tableRow.setLayoutParams(layoutParams);
                for (int size = PhysicsSettings.this.layers.size() - 1; size >= i10; size--) {
                    Layer layer2 = PhysicsSettings.this.layers.get(size);
                    View inflate = layoutInflater.inflate(R.layout.physics_layers_checkbox, (ViewGroup) null);
                    tableRow.addView(inflate);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) inflate.getLayoutParams();
                    layoutParams2.height = heightPixels;
                    layoutParams2.width = heightPixels;
                    inflate.setLayoutParams(layoutParams2);
                    CustomCheckBox customCheckBox = (CustomCheckBox) inflate.findViewById(R.id.toggle);
                    customCheckBox.setChecked(!layer.p(layer2));
                    customCheckBox.setOnCheckedChangeListener(new c(layer, layer2));
                }
            }
        }

        public final void f(LinearLayout parent, LayoutInflater layoutInflater, int layout, boolean invertOrder, e fillSize) {
            parent.removeAllViews();
            if (invertOrder) {
                for (int size = PhysicsSettings.this.layers.size() - 1; size >= 0; size--) {
                    c(parent, layoutInflater, layout, size, fillSize);
                }
                return;
            }
            for (int i10 = 0; i10 < PhysicsSettings.this.layers.size(); i10++) {
                c(parent, layoutInflater, layout, i10, fillSize);
            }
        }

        public final int g(LayoutInflater layoutInflater) {
            TextView textView = (TextView) layoutInflater.inflate(R.layout.physics_layers_lefttext, (ViewGroup) null).findViewById(R.id.textView);
            int i10 = 0;
            for (int i11 = 0; i11 < PhysicsSettings.this.layers.size(); i11++) {
                textView.setText(PhysicsSettings.this.layers.get(i11).k().toString());
                CharSequence transformation = textView.getTransformationMethod() != null ? textView.getTransformationMethod().getTransformation(textView.getText(), textView) : textView.getText();
                int ceil = ((int) Math.ceil(textView.getPaint().measureText(transformation, 0, transformation.length()))) + textView.getPaddingLeft() + textView.getPaddingRight();
                if (ceil > i10) {
                    i10 = ceil;
                }
            }
            return i10;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LayoutInflater from = LayoutInflater.from(context);
            View findViewById = view.findViewById(R.id.top_left_space);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.top_texts);
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.left_texts);
            TableLayout tableLayout = (TableLayout) view.findViewById(R.id.table);
            int k02 = Nc.b.k0(PhysicsSettings.this.layers.size() * 26);
            int g10 = g(from);
            d(g10, k02, linearLayout2);
            d(k02, g10, linearLayout);
            d(g10, g10, findViewById);
            d(k02, k02, tableLayout);
            int l02 = Nc.b.l0(26.0f, context);
            f(linearLayout2, from, R.layout.physics_layers_lefttext, false, new a(l02));
            f(linearLayout, from, R.layout.physics_layers_toptext, true, new b(l02));
            e(tableLayout, from, l02);
        }
    }

    public interface e {
        LinearLayout.LayoutParams a(LinearLayout.LayoutParams lp);
    }

    public PhysicsSettings() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.layers = steppedArrayList;
        this.layersEditor = new InspectorEditor();
        this.filtersEditor = new InspectorEditor();
        steppedArrayList.add(new Layer(new Ac.b("Default"), true));
    }

    public void a(Layer layer) {
        synchronized (this.layers) {
            try {
                if (!this.layers.contains(layer)) {
                    this.layers.add(layer);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Layer b(Ac.b guid) {
        Layer layer;
        synchronized (this.layers) {
            int i10 = 0;
            while (true) {
                try {
                    if (i10 >= this.layers.size()) {
                        layer = null;
                        break;
                    }
                    layer = this.layers.get(i10);
                    if (!layer.guid.Y(guid)) {
                        i10++;
                    }
                } finally {
                }
            }
        }
        return layer;
    }

    public Layer c(Ac.b name) {
        Layer layer;
        synchronized (this.layers) {
            int i10 = 0;
            while (true) {
                try {
                    if (i10 >= this.layers.size()) {
                        layer = null;
                        break;
                    }
                    layer = this.layers.get(i10);
                    if (!layer.name.Y(name)) {
                        i10++;
                    }
                } finally {
                }
            }
        }
        return layer;
    }

    public Ac.b d() {
        Ac.b bVar = new Ac.b("Layer");
        Layer c10 = c(bVar);
        int i10 = 0;
        while (c10 != null) {
            i10++;
            bVar.u0("Layer" + i10);
            c10 = c(bVar);
        }
        return bVar;
    }

    public List<C5.b> e(Context context, com.itsmagic.engine.Engines.Engine.Settings.c settingsInflationListener) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new d(context), R.layout.physics_layers_editor, (Object) null));
        return linkedList;
    }

    public List<C5.b> f(Context context, com.itsmagic.engine.Engines.Engine.Settings.c settingsInflationListener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        C5.b bVar = new C5.b(new C5.a("Layers", true, this.layersEditor));
        bVar.f2064Q.f2042o.addAll(g(context, settingsInflationListener));
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new C5.a("Filter", true, this.filtersEditor));
        bVar2.f2064Q.f2042o.addAll(e(context, settingsInflationListener));
        linkedList.add(bVar2);
        return linkedList;
    }

    public List<C5.b> g(Context context, com.itsmagic.engine.Engines.Engine.Settings.c settingsInflationListener) {
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < j(); i10++) {
            Layer i11 = i(i10);
            if (!i11.isDefault) {
                C5.b bVar = new C5.b(new C5.a(i11.name.toString(), true, i11.j()));
                bVar.f2064Q.f2042o.add(new C5.b((h) new a(context, i11, settingsInflationListener), "Name", b.a.SLString, false));
                bVar.f2064Q.f2042o.add(new C5.b(new b(i11, settingsInflationListener), "Delete", b.a.Button));
                linkedList.add(bVar);
            }
        }
        linkedList.add(new C5.b(new c(context, settingsInflationListener), "Create new", b.a.Button));
        return linkedList;
    }

    public int h(Layer layer) {
        int indexOf;
        synchronized (this.layers) {
            indexOf = this.layers.indexOf(layer);
        }
        return indexOf;
    }

    public Layer i(int i10) {
        Layer layer;
        synchronized (this.layers) {
            layer = this.layers.get(i10);
        }
        return layer;
    }

    public int j() {
        int size;
        synchronized (this.layers) {
            size = this.layers.size();
        }
        return size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void k() {
        if (this.layers.isEmpty() || this.layers.get(0) == null || !this.layers.get(0).isDefault) {
            this.layers.add(0, new Layer(new Ac.b("Default"), true));
        }
        Mc.d.a(this.layers);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.layers.size(); i10++) {
            Layer layer = this.layers.get(i10);
            for (int i11 = 0; i11 < layer.l(); i11++) {
                Ac.b i12 = layer.i(i11);
                if (b(i12) == null) {
                    steppedArrayList.add(i12);
                }
            }
            for (int i13 = 0; i13 < steppedArrayList.size(); i13++) {
                layer.q((Ac.b) steppedArrayList.get(i13));
            }
            steppedArrayList.clear();
        }
        while (this.layers.size() > 16) {
            List<Layer> list = this.layers;
            list.remove(list.size() - 1);
        }
    }

    public void l(Layer layer) {
        synchronized (this.layers) {
            this.layers.remove(layer);
        }
    }
}
