package C5;

import C5.b;
import E5.f;
import E5.g;
import Ic.C2633l;
import N7.c;
import X6.b;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import android.text.style.StrikethroughSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import androidx.core.content.ContextCompat;
import androidx.core.widget.ImageViewCompat;
import belka.us.androidtoggleswitch.widgets.ToggleSwitch;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Activities.Editor.Utils.SeekBar.SeekBar;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import dd.C12908b;
import gb.C13317e;
import h.AbstractViewOnClickListenerC13403a;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jd.C13823b;
import org.jetbrains.annotations.Nullable;
import org.mohammedalaa.seekbar.RangeSeekBarView;
import r4.C15147a;
import t5.f;
import w3.f;
import w3.o;
import y8.C16152a;

public class h {

    public class A implements D5.f {

        public final b f2167a;

        public final TextView f2168b;

        public final View.OnClickListener f2169c;

        public final View.OnLongClickListener f2170d;

        public A(final b val$entry, final TextView val$textView, final View.OnClickListener val$click, final View.OnLongClickListener val$longClick) {
            this.f2167a = val$entry;
            this.f2168b = val$textView;
            this.f2169c = val$click;
            this.f2170d = val$longClick;
        }

        @Override
        public void a() {
            try {
                Component component = this.f2167a.f2069d.get();
                TextView textView = this.f2168b;
                if (textView != null) {
                    textView.setOnClickListener(this.f2169c);
                    this.f2168b.setOnLongClickListener(this.f2170d);
                    if (component != null) {
                        try {
                            this.f2168b.setText(component.f79250n.getName() + " (" + component.getTitle() + ")");
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else {
                        this.f2168b.setText("");
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class B implements D5.f {

        public final b f2171a;

        public final ToggleSwitch f2172b;

        public B(final b val$entry, final ToggleSwitch val$toggleSwitch) {
            this.f2171a = val$entry;
            this.f2172b = val$toggleSwitch;
        }

        @Override
        public void a() {
            this.f2172b.setCheckedTogglePosition(this.f2171a.f2067b.get().str_value.equals("true") ? 1 : 0);
        }
    }

    public class C implements AbstractViewOnClickListenerC13403a.b {

        public final b f2173a;

        public C(final b val$entry) {
            this.f2173a = val$entry;
        }

        @Override
        public void a(int position, boolean isChecked) {
            try {
                D5.h hVar = this.f2173a.f2067b;
                boolean z10 = true;
                if (position != 1) {
                    z10 = false;
                }
                hVar.set(new Variable("temp", Boolean.valueOf(z10)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class D implements TabLayout.f {

        public final b f2174a;

        public D(final b val$entry) {
            this.f2174a = val$entry;
        }

        @Override
        public void a(TabLayout.i tab) {
            D5.m mVar = this.f2174a.f2048A;
            if (mVar != null) {
                mVar.a(tab, tab.k());
            }
        }

        @Override
        public void b(TabLayout.i tab) {
        }

        @Override
        public void c(TabLayout.i tab) {
        }
    }

    public class E implements D5.f {

        public final TextView f2175a;

        public final b f2176b;

        public E(final TextView val$tittle, final b val$entry) {
            this.f2175a = val$tittle;
            this.f2176b = val$entry;
        }

        @Override
        public void a() {
            TextView textView = this.f2175a;
            if (textView != null) {
                textView.setText(this.f2176b.f2077l);
            }
        }
    }

    public class F extends AbstractViewOnClickListenerC12733a {

        public final b f2177b;

        public final int f2178c;

        public F(final b val$entry, final int val$positionInAdapter) {
            this.f2177b = val$entry;
            this.f2178c = val$positionInAdapter;
        }

        @Override
        public void click(View view) {
            try {
                D5.h hVar = this.f2177b.f2067b;
                if (hVar != null) {
                    hVar.set(new Variable("", this.f2178c));
                }
                D5.a aVar = this.f2177b.f2070e;
                if (aVar != null) {
                    aVar.a(view, this.f2178c);
                }
                D5.b bVar = this.f2177b.f2051D;
                if (bVar != null) {
                    bVar.a(view);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class G extends AbstractViewOnClickListenerC12733a {

        public final LinearLayout f2179b;

        public final ToggleButton f2180c;

        public final b f2181d;

        public final n f2182e;

        public final int f2183f;

        public G(final LinearLayout val$content, final ToggleButton val$OC, final b val$entry, final n val$upperCommunication, final int val$positionInAdapter) {
            this.f2179b = val$content;
            this.f2180c = val$OC;
            this.f2181d = val$entry;
            this.f2182e = val$upperCommunication;
            this.f2183f = val$positionInAdapter;
        }

        @Override
        public void click(View view) {
            n nVar;
            try {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2179b.getLayoutParams();
                if (this.f2180c.isChecked()) {
                    layoutParams.height = 0;
                } else {
                    layoutParams.height = -2;
                }
                this.f2179b.setLayoutParams(layoutParams);
                this.f2180c.setChecked(!r3.isChecked());
                a aVar = this.f2181d.f2064Q;
                if (aVar != null) {
                    aVar.b().i(this.f2180c.isChecked());
                    if (this.f2180c.isChecked() == this.f2181d.f2064Q.f2045r || (nVar = this.f2182e) == null) {
                        return;
                    }
                    nVar.refresh(this.f2183f);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class H implements v3.j {

        public final b f2184a;

        public final ImageView f2185b;

        public H(final b val$entry, final ImageView val$colorImage) {
            this.f2184a = val$entry;
            this.f2185b = val$colorImage;
        }

        @Override
        public void a(Activity activity, v3.k repeater) {
            ColorINT colorINT = this.f2184a.f2067b.get() != null ? this.f2184a.f2067b.get().color_value : new ColorINT();
            if (colorINT == null) {
                colorINT = new ColorINT();
                this.f2184a.f2067b.set(new Variable("", colorINT));
            }
            ImageViewCompat.setImageTintList(this.f2185b, ColorStateList.valueOf(colorINT.intColor));
            try {
                if (this.f2184a.i()) {
                    N7.c.I().b(repeater);
                } else if (W7.b.f27309i.f31909a.f31910a == null) {
                    N7.c.I().b(repeater);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.I().b(repeater);
            }
        }
    }

    public class I extends AbstractViewOnClickListenerC12733a {

        public final b f2186b;

        public final Context f2187c;

        public final ImageView f2188d;

        public class a implements f.j {
            public a() {
            }

            @Override
            public void a(ColorINT color) {
                try {
                    I.this.f2186b.f2067b.set(new Variable("", color));
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                }
                I i10 = I.this;
                if (i10.f2187c != null) {
                    try {
                        ImageViewCompat.setImageTintList(i10.f2188d, ColorStateList.valueOf(color.intColor));
                    } catch (Error | Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }

        public I(final b val$entry, final Context val$context, final ImageView val$colorImage) {
            this.f2186b = val$entry;
            this.f2187c = val$context;
            this.f2188d = val$colorImage;
        }

        @Override
        public void click(View v10) {
            try {
                t5.f.L1(this.f2186b.f2067b.get().color_value, v10, this.f2187c, C15147a.e.Left, new a());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class J extends AbstractViewOnClickListenerC12733a {

        public final b f2190b;

        public final TextView f2191c;

        public final View f2192d;

        public final View f2193e;

        public class a implements dd.d {

            public final int f2194a;

            public a(final int val$finalI) {
                this.f2194a = val$finalI;
            }

            @Override
            public void onSelected(View view) {
                J j10 = J.this;
                j10.f2191c.setText(j10.f2190b.f2091z.get(this.f2194a));
                try {
                    Variable variable = new Variable("", this.f2194a);
                    J j11 = J.this;
                    variable.f81490c = j11.f2192d;
                    j11.f2190b.f2067b.set(variable);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public J(final b val$entry, final TextView val$textView, final View val$content, final View val$dropdownTouchArea) {
            this.f2190b = val$entry;
            this.f2191c = val$textView;
            this.f2192d = val$content;
            this.f2193e = val$dropdownTouchArea;
        }

        @Override
        public void click(View view) {
            try {
                b bVar = this.f2190b;
                if (bVar.f2091z == null) {
                    bVar.f2067b.set(new Variable("", view));
                    return;
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                for (int i10 = 0; i10 < this.f2190b.f2091z.size(); i10++) {
                    String str = this.f2190b.f2091z.get(i10);
                    if (str.equals("@SPACE@")) {
                        steppedArrayList.add(new C12908b());
                    } else {
                        steppedArrayList.add(new C12908b(str, new a(i10)));
                    }
                }
                View view2 = this.f2193e;
                if (view2 == null) {
                    view2 = this.f2191c;
                }
                Y6.a.F1(view2, C15147a.e.Left, steppedArrayList);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class K extends AbstractViewOnClickListenerC12733a {

        public final C5.b f2196b;

        public final Context f2197c;

        public final ImageView f2198d;

        public class a extends SteppedArrayList<C12908b> {

            public class C0063a implements dd.d {
                public C0063a() {
                }

                @Override
                public void onSelected(View v10) {
                    K k10 = K.this;
                    h.e(k10.f2196b, k10.f2197c, k10.f2198d);
                }
            }

            public class b implements dd.d {

                public class C0064a implements H3.e {
                    public C0064a() {
                    }

                    @Override
                    public String getSelected() {
                        String str;
                        Variable variable = K.this.f2196b.f2067b.get();
                        return (variable == null || (str = variable.str_value) == null || str.equals("")) ? "" : variable.str_value.startsWith("@@MG@@") ? variable.str_value.substring(6) : variable.str_value;
                    }

                    @Override
                    public void onSelected(String file) {
                        K k10 = K.this;
                        if (k10.f2196b == null || k10.f2197c == null) {
                            return;
                        }
                        try {
                            h.r(k10.f2198d);
                            com.bumptech.glide.b.D(K.this.f2197c).load(H3.h.z1(file)).h1(K.this.f2198d);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        K.this.f2196b.f2067b.set(new Variable("temp", "@@UIG@@" + file));
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    H3.h.I1(v10, C15147a.e.Left, new C0064a());
                }
            }

            public a() {
                add(new C12908b("Project", new C0063a()));
                add(new C12908b("Gallery", new b()));
            }
        }

        public class b extends SteppedArrayList<C12908b> {

            public class a implements dd.d {
                public a() {
                }

                @Override
                public void onSelected(View v10) {
                    K k10 = K.this;
                    h.e(k10.f2196b, k10.f2197c, k10.f2198d);
                }
            }

            public class C0065b implements dd.d {

                public class a implements H3.e {
                    public a() {
                    }

                    @Override
                    public String getSelected() {
                        String str;
                        Variable variable = K.this.f2196b.f2067b.get();
                        return (variable == null || (str = variable.str_value) == null || str.equals("")) ? "" : variable.str_value;
                    }

                    @Override
                    public void onSelected(String file) {
                        K k10 = K.this;
                        if (k10.f2196b == null || k10.f2197c == null) {
                            return;
                        }
                        try {
                            h.r(k10.f2198d);
                            com.bumptech.glide.b.D(K.this.f2197c).load(H3.f.y1(file)).h1(K.this.f2198d);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        K.this.f2196b.f2067b.set(new Variable("temp", "@@MG@@" + file));
                    }
                }

                public C0065b() {
                }

                @Override
                public void onSelected(View v10) {
                    H3.f.H1(v10, C15147a.e.Left, new a());
                }
            }

            public b() {
                add(new C12908b("Project", new a()));
                add(new C12908b("Gallery", new C0065b()));
            }
        }

        public K(final C5.b val$entry, final Context val$context, final ImageView val$colorImage) {
            this.f2196b = val$entry;
            this.f2197c = val$context;
            this.f2198d = val$colorImage;
        }

        @Override
        public void click(View v10) {
            C5.b bVar = this.f2196b;
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.UITexture) {
                N7.c.Y();
                Y6.a.F1(v10, C15147a.e.Left, new a());
                return;
            }
            if (aVar == b.a.UIStyle) {
                try {
                    h.H(bVar, this.f2197c, this.f2198d);
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            if (aVar == b.a.Matcap) {
                N7.c.Y();
                Y6.a.F1(v10, C15147a.e.Left, new b());
            } else {
                try {
                    h.e(bVar, this.f2197c, this.f2198d);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public class L implements View.OnLongClickListener {

        public final b f2207b;

        public final Context f2208c;

        public final ImageView f2209d;

        public final Variable f2210e;

        public class a extends SteppedArrayList<C12908b> {

            public class C0066a implements dd.d {
                public C0066a() {
                }

                @Override
                public void onSelected(View v10) {
                    L l10 = L.this;
                    C5.b bVar = l10.f2207b;
                    if (bVar.f2079n == b.a.UIStyle) {
                        h.H(bVar, l10.f2208c, l10.f2209d);
                    } else {
                        h.e(bVar, l10.f2208c, l10.f2209d);
                    }
                }
            }

            public class b implements dd.d {

                public class C0067a implements H3.e {
                    public C0067a() {
                    }

                    @Override
                    public String getSelected() {
                        String str;
                        Variable variable = L.this.f2207b.f2067b.get();
                        return (variable == null || (str = variable.str_value) == null || str.equals("")) ? "" : variable.str_value;
                    }

                    @Override
                    public void onSelected(String file) {
                        L l10 = L.this;
                        if (l10.f2207b == null || l10.f2208c == null) {
                            return;
                        }
                        try {
                            h.r(l10.f2209d);
                            com.bumptech.glide.b.D(L.this.f2208c).load(H3.h.z1(file)).h1(L.this.f2209d);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        L.this.f2207b.f2067b.set(new Variable("temp", "@@UIG@@" + file));
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    H3.h.I1(v10, C15147a.e.Left, new C0067a());
                }
            }

            public class c implements dd.d {

                public class C0068a implements b8.g {

                    public class C0069a implements f.c {
                        public C0069a() {
                        }

                        @Override
                        public void onCancel() {
                        }

                        @Override
                        public void onError(String error) {
                            N7.c.v0("failed to import image:" + error);
                        }

                        @Override
                        public void onSuccess(String fileName, File imageFile) {
                            String str = "/Files/Textures/" + fileName;
                            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(L.this.f2208c) + str);
                            C16152a.b(imageFile, file);
                            imageFile.delete();
                            try {
                                h.r(L.this.f2209d);
                                Vc.e.F(L.this.f2209d, file);
                                L.this.f2207b.f2067b.set(new Variable("temp", str));
                                N7.c.v0("Image (" + fileName + ") copied to Textures folder");
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                N7.c.v0("failed to import image:" + e10.getMessage());
                            }
                        }
                    }

                    public C0068a() {
                    }

                    @Override
                    public void a(Activity act) {
                        w3.f.e(new C0069a());
                    }

                    @Override
                    public void b(Activity act) {
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    Activity activity;
                    try {
                        activity = N7.c.o();
                    } catch (Exception unused) {
                        activity = null;
                    }
                    if (activity == null || L.this.f2208c == null) {
                        Toast.makeText(activity, Lang.l(Lang.T.SOMETHING_WENT_WRONG), 0).show();
                    } else {
                        W7.b.f27308h.f(activity, new C0068a());
                    }
                }
            }

            public class d implements dd.d {
                public d() {
                }

                @Override
                public void onSelected(View v10) {
                    String str = L.this.f2210e.str_value;
                    if (str == null || str.isEmpty()) {
                        N7.c.v0("No texture attached!");
                    } else {
                        P6.c.c2(str);
                    }
                }
            }

            public class e implements dd.d {
                public e() {
                }

                @Override
                public void onSelected(View v10) {
                    String str = L.this.f2210e.str_value;
                    if (str == null || str.isEmpty()) {
                        N7.c.v0("No style attached!");
                    } else {
                        Q6.a.J1(str);
                    }
                }
            }

            public class f implements dd.d {
                public f() {
                }

                @Override
                public void onSelected(View v10) {
                    String str;
                    Variable variable = L.this.f2210e;
                    if (variable == null || (str = variable.str_value) == null || str.equals("")) {
                        return;
                    }
                    N7.c.D().B0(new w5.k(L.this.f2210e.str_value));
                }
            }

            public class g implements dd.d {
                public g() {
                }

                @Override
                public void onSelected(View v10) {
                    L l10 = L.this;
                    if (l10.f2207b == null || l10.f2208c == null) {
                        return;
                    }
                    try {
                        h.r(l10.f2209d);
                        com.bumptech.glide.k D10 = com.bumptech.glide.b.D(L.this.f2208c);
                        StringBuilder sb2 = new StringBuilder();
                        com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(L.this.f2208c));
                        sb2.append("/");
                        D10.o(sb2.toString()).h1(L.this.f2209d);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    L.this.f2207b.f2067b.set(new Variable("temp", ""));
                }
            }

            public a() {
                b.a aVar = L.this.f2207b.f2079n;
                b.a aVar2 = b.a.UIStyle;
                add(new C12908b(aVar == aVar2 ? "Select style" : "Select texture", new C0066a()));
                if (L.this.f2207b.f2079n == b.a.UITexture) {
                    add(new C12908b("Select from gallery", new b()));
                }
                if (L.this.f2207b.f2079n != aVar2) {
                    add(new C12908b("Import from Android", new c()));
                    add(new C12908b());
                }
                String str = L.this.f2210e.str_value;
                if (str == null || str.isEmpty()) {
                    add(new C12908b(L.this.f2207b.f2079n == aVar2 ? "Show style in files" : "Show texture in files", false));
                    if (L.this.f2207b.f2079n != aVar2) {
                        add(new C12908b("Open texture settings", false));
                    }
                    add(new C12908b(L.this.f2207b.f2079n == aVar2 ? "Remove style" : "Remove texture", false));
                    return;
                }
                if (L.this.f2207b.f2079n != aVar2) {
                    add(new C12908b("Open texture settings", new d()));
                } else {
                    add(new C12908b("Open style settings", new e()));
                }
                add(new C12908b(L.this.f2207b.f2079n == aVar2 ? "Show style in files" : "Show texture in files", new f()));
                add(new C12908b(L.this.f2207b.f2079n == aVar2 ? "Remove style" : "Remove texture", new g()));
            }
        }

        public L(final b val$entry, final Context val$context, final ImageView val$colorImage, final Variable val$getVar) {
            this.f2207b = val$entry;
            this.f2208c = val$context;
            this.f2209d = val$colorImage;
            this.f2210e = val$getVar;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            Y6.a.F1(v10, C15147a.e.Left, new a());
            return true;
        }
    }

    public class M extends AbstractViewOnClickListenerC12733a {

        public final b f2222b;

        public final Context f2223c;

        public final ImageView f2224d;

        public class a extends SteppedArrayList<C12908b> {

            public class C0070a implements dd.d {
                public C0070a() {
                }

                @Override
                public void onSelected(View v10) {
                    try {
                        M m10 = M.this;
                        h.t(m10.f2222b, m10.f2223c, m10.f2224d);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public class b implements dd.d {

                public class C0071a implements H3.e {
                    public C0071a() {
                    }

                    @Override
                    public String getSelected() {
                        return "";
                    }

                    @Override
                    public void onSelected(String file) {
                        try {
                            h.r(M.this.f2224d);
                            if (file == null || file.isEmpty()) {
                                M m10 = M.this;
                                Vc.e.n(m10.f2224d, m10.f2223c);
                            } else {
                                Vc.e.K(M.this.f2224d, H3.a.x1(file), N7.c.t(), new Vc.c());
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        if (file == null || file.isEmpty()) {
                            M.this.f2222b.f2067b.set(new Variable("temp", ""));
                            return;
                        }
                        M.this.f2222b.f2067b.set(new Variable("temp", "@@gallery@@" + file));
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    H3.a.G1(M.this.f2224d, C15147a.e.Left, new C0071a());
                }
            }

            public a() {
                add(new C12908b("Select cubemap", new C0070a()));
                add(new C12908b("Select from gallery", new b()));
            }
        }

        public M(final b val$entry, final Context val$context, final ImageView val$colorImage) {
            this.f2222b = val$entry;
            this.f2223c = val$context;
            this.f2224d = val$colorImage;
        }

        @Override
        public void click(View v10) {
            N7.c.Y();
            Y6.a.F1(v10, C15147a.e.Left, new a());
        }
    }

    public class N implements View.OnLongClickListener {

        public final b f2229b;

        public final Context f2230c;

        public final ImageView f2231d;

        public final Variable f2232e;

        public class a extends SteppedArrayList<C12908b> {

            public class C0072a implements dd.d {
                public C0072a() {
                }

                @Override
                public void onSelected(View v10) {
                    N n10 = N.this;
                    if (n10.f2229b == null || n10.f2230c == null) {
                        return;
                    }
                    try {
                        h.r(n10.f2231d);
                        com.bumptech.glide.k D10 = com.bumptech.glide.b.D(N.this.f2230c);
                        StringBuilder sb2 = new StringBuilder();
                        com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
                        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(N.this.f2230c));
                        sb2.append("/");
                        D10.o(sb2.toString()).h1(N.this.f2231d);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    N.this.f2229b.f2067b.set(new Variable("temp", ""));
                }
            }

            public class b implements dd.d {
                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    N n10 = N.this;
                    h.t(n10.f2229b, n10.f2230c, n10.f2231d);
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    String str;
                    Variable variable = N.this.f2232e;
                    if (variable == null || (str = variable.str_value) == null || str.equals("")) {
                        return;
                    }
                    N7.c.D().B0(new w5.k(N.this.f2232e.str_value));
                }
            }

            public a() {
                add(new C12908b("Remove", new C0072a()));
                add(new C12908b("Select cubemap", new b()));
                add(new C12908b("Show in files", new c()));
            }
        }

        public N(final b val$entry, final Context val$context, final ImageView val$colorImage, final Variable val$getVar) {
            this.f2229b = val$entry;
            this.f2230c = val$context;
            this.f2231d = val$colorImage;
            this.f2232e = val$getVar;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            Y6.a.F1(v10, C15147a.e.Left, new a());
            return true;
        }
    }

    public class O implements v3.j {

        public final b f2237a;

        public final TextView f2238b;

        public O(final b val$entry, final TextView val$tittle) {
            this.f2237a = val$entry;
            this.f2238b = val$tittle;
        }

        @Override
        public void a(Activity activity, v3.k repeater) {
            D5.n nVar;
            try {
                b bVar = this.f2237a;
                if (bVar.f2077l != null && (nVar = bVar.f2056I) != null) {
                    this.f2238b.setText(nVar.getText());
                }
            } catch (Exception unused) {
                N7.c.I().b(repeater);
            }
            try {
                if (this.f2237a.i()) {
                    N7.c.I().b(repeater);
                } else if (W7.b.f27309i.f31909a.f31910a == null) {
                    N7.c.I().b(repeater);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.I().b(repeater);
            }
        }
    }

    public class P extends AbstractViewOnClickListenerC12733a {

        public final b f2239b;

        public P(final b val$entry) {
            this.f2239b = val$entry;
        }

        @Override
        public void click(View view) {
            h.G(this.f2239b);
        }
    }

    public class Q implements v3.j {

        public final b f2240a;

        public final FrameLayout f2241b;

        public final Context f2242c;

        public Q(final b val$entry, final FrameLayout val$keyframeBtn, final Context val$context) {
            this.f2240a = val$entry;
            this.f2241b = val$keyframeBtn;
            this.f2242c = val$context;
        }

        @Override
        public void a(Activity activity, v3.k repeater) {
            b bVar = this.f2240a;
            int v10 = h.v(bVar.f2058K, bVar.f2059L, bVar.f2060M);
            if (v10 == 0 || v10 == -1) {
                this.f2241b.setBackground(ContextCompat.getDrawable(this.f2242c, com.itsmagic.engine2.R.drawable.editor3d_v2_input_text_background));
            } else {
                this.f2241b.setBackground(ContextCompat.getDrawable(this.f2242c, v10));
            }
            h.q(this.f2241b, this.f2242c);
            try {
                if (this.f2240a.i()) {
                    N7.c.I().b(repeater);
                } else if (W7.b.f27309i.f31909a.f31910a == null) {
                    N7.c.I().b(repeater);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.I().b(repeater);
            }
        }
    }

    public class R implements CustomCheckBox.a {

        public final b f2243a;

        public R(final b val$entry) {
            this.f2243a = val$entry;
        }

        @Override
        public void a(CustomCheckBox compoundButton, boolean b10) {
            a aVar;
            b bVar = this.f2243a;
            if (bVar == null || (aVar = bVar.f2064Q) == null) {
                return;
            }
            aVar.f2030c = b10;
            D5.h hVar = aVar.f2034g;
            if (hVar != null) {
                hVar.set(new Variable("", Boolean.valueOf(b10)));
            }
        }
    }

    public class S implements Yc.g {

        public final Context f2244a;

        public final TextView f2245b;

        public final b f2246c;

        public S(final Context val$context, final TextView val$textView, final b val$entry) {
            this.f2244a = val$context;
            this.f2245b = val$textView;
            this.f2246c = val$entry;
        }

        @Override
        public void b(C13823b pfile) {
            try {
                if (this.f2244a != null) {
                    if (pfile == null || pfile.f().isEmpty()) {
                        this.f2245b.setText("");
                    } else {
                        String f10 = pfile.f();
                        try {
                            this.f2245b.setText(f10.substring(f10.lastIndexOf("/") + 1));
                        } catch (Error | Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    if (pfile == null || pfile.f().isEmpty()) {
                        this.f2246c.f2067b.set(new Variable("temp", ""));
                    } else {
                        this.f2246c.f2067b.set(new Variable("temp", pfile.f()));
                    }
                }
            } catch (Error e11) {
                e = e11;
                e.printStackTrace();
            } catch (Exception e12) {
                e = e12;
                e.printStackTrace();
            }
        }
    }

    public class T implements Yc.g {

        public final b f2247a;

        public final Context f2248b;

        public final ImageView f2249c;

        public T(final b val$entry, final Context val$context, final ImageView val$colorImage) {
            this.f2247a = val$entry;
            this.f2248b = val$context;
            this.f2249c = val$colorImage;
        }

        @Override
        public void b(C13823b file) {
            if (this.f2247a == null || this.f2248b == null) {
                return;
            }
            try {
                h.r(this.f2249c);
                if (file == null || file.f().isEmpty()) {
                    Vc.e.n(this.f2249c, this.f2248b);
                } else {
                    String str = Tc.b.O(file.f()) + ".texture";
                    if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2248b) + "/" + str).exists()) {
                        Vc.e.Q(this.f2249c, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2248b) + "/" + str, this.f2248b, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                    } else {
                        Vc.e.Q(this.f2249c, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2248b) + "/" + file.f(), this.f2248b, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (file == null || file.f().isEmpty()) {
                this.f2247a.f2067b.set(new Variable("temp", ""));
            } else {
                this.f2247a.f2067b.set(new Variable("temp", file.f()));
            }
        }
    }

    public class U implements Yc.g {

        public final b f2250a;

        public final Context f2251b;

        public final ImageView f2252c;

        public U(final b val$entry, final Context val$context, final ImageView val$colorImage) {
            this.f2250a = val$entry;
            this.f2251b = val$context;
            this.f2252c = val$colorImage;
        }

        @Override
        public void b(C13823b file) {
            if (this.f2250a == null || this.f2251b == null) {
                return;
            }
            try {
                h.r(this.f2252c);
                if (file == null || file.f().isEmpty()) {
                    Vc.e.n(this.f2252c, this.f2251b);
                } else {
                    String str = Tc.b.O(file.f()) + ".meta/thumb.png";
                    if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2251b) + "/" + str).exists()) {
                        Vc.e.Q(this.f2252c, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2251b) + "/" + str, this.f2251b, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                    } else {
                        C2633l.j(this.f2252c, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2251b) + "/" + file.f(), this.f2251b, false);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (file == null || file.f().isEmpty()) {
                this.f2250a.f2067b.set(new Variable("temp", ""));
            } else {
                this.f2250a.f2067b.set(new Variable("temp", file.f()));
            }
        }
    }

    public class V implements Yc.g {

        public final b f2253a;

        public final Context f2254b;

        public final ImageView f2255c;

        public V(final b val$entry, final Context val$context, final ImageView val$colorImage) {
            this.f2253a = val$entry;
            this.f2254b = val$context;
            this.f2255c = val$colorImage;
        }

        @Override
        public void b(C13823b file) {
            if (this.f2253a == null || this.f2254b == null) {
                return;
            }
            try {
                h.r(this.f2255c);
                if (file == null || file.f().isEmpty()) {
                    Vc.e.n(this.f2255c, this.f2254b);
                } else {
                    String str = Tc.b.O(file.f()) + ".meta/thumb.png";
                    if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2254b) + "/" + str).exists()) {
                        Vc.e.Q(this.f2255c, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2254b) + "/" + str, this.f2254b, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                    } else {
                        Vc.e.Q(this.f2255c, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2254b) + "/" + file.f(), this.f2254b, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (file == null || file.f().isEmpty()) {
                this.f2253a.f2067b.set(new Variable("temp", ""));
            } else {
                this.f2253a.f2067b.set(new Variable("temp", file.f()));
            }
        }
    }

    public class W extends SteppedArrayList<C12908b> {

        public final TextView f2256b;

        public final C5.b f2257c;

        public final Context f2258d;

        public final Runnable f2259e;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                W.this.f2256b.setText("");
                W.this.f2257c.f2067b.set(new Variable("", ""));
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                W w10 = W.this;
                h.E(w10.f2257c, w10.f2256b, w10.f2258d, w10.f2259e);
            }
        }

        public class c implements dd.d {

            public class a implements b8.g {

                public class C0073a implements o {

                    public final Activity f2264a;

                    public C0073a(final Activity val$act) {
                        this.f2264a = val$act;
                    }

                    @Override
                    public void a(int requestCode, int resultCode, Intent intent, Activity activity) {
                        if (intent != null) {
                            Uri data = intent.getData();
                            this.f2264a.grantUriPermission("com.itsmagic.engine", data, 1);
                            String path = data.getPath();
                            if (path == null || (!path.contains(".") && !path.contains("external_files_files/ITsMagic/Projects"))) {
                                path = Vc.f.c(W.this.f2258d, data);
                            }
                            String t10 = Tc.b.t(path);
                            boolean b10 = C2633l.b(t10, W.this.f2257c.f2080o);
                            String str = C2633l.b(t10, ".mesh") ? "/Files/Models/" : C2633l.b(t10, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm") ? "/Files/Textures/" : C2633l.b(t10, ".world") ? "/Files/Worlds/" : C2633l.b(t10, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv") ? "/Files/Sounds/" : (C2633l.b(t10, ".mat") || C2633l.b(t10, ".mat")) ? "/Files/Materials/" : C2633l.b(t10, ".java|.lua") ? "/Files/Scripts/" : C2633l.b(t10, ".anim") ? "/Files/Animations/" : "/Files/Unknown/";
                            if (!b10) {
                                Toast.makeText(this.f2264a, "File format not allowed", 0).show();
                                return;
                            }
                            String str2 = str + Tc.b.v(path);
                            StringBuilder sb2 = new StringBuilder();
                            com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
                            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f2264a));
                            sb2.append(str2);
                            if (!w3.l.b(data, sb2.toString(), this.f2264a)) {
                                Toast.makeText(this.f2264a, "failed to import file", 0).show();
                                return;
                            }
                            W.this.f2256b.setText(path);
                            W.this.f2257c.f2067b.set(new Variable("", str2));
                            Toast.makeText(this.f2264a, "File (" + Tc.b.v(path) + ") copied to " + str + " folder", 1).show();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void a(Activity act) {
                    w3.l.d(new C0073a(act));
                }

                @Override
                public void b(Activity act) {
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View v10) {
                Activity activity;
                try {
                    activity = N7.c.o();
                } catch (Exception unused) {
                    activity = null;
                }
                if (activity != null) {
                    W7.b.f27308h.f(activity, new a());
                } else {
                    Toast.makeText(activity, Lang.l(Lang.T.SOMETHING_WENT_WRONG), 0).show();
                }
            }
        }

        public class d implements dd.d {
            public d() {
            }

            @Override
            public void onSelected(View v10) {
                N7.c.D().B0(new w5.k(W.this.f2257c.f2067b.get().str_value));
            }
        }

        public class e extends SteppedArrayList<C12908b> {

            public class a implements dd.d {
                public a() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("capsule.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/capsule.obj"));
                }
            }

            public class b implements dd.d {
                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("halfcapsule.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/half_capsule.obj"));
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("render_target.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/render_target.obj"));
                }
            }

            public class d implements dd.d {
                public d() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("cube.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/cube.obj"));
                }
            }

            public class C0074e implements dd.d {
                public C0074e() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("sphere.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/sphere.obj"));
                }
            }

            public class f implements dd.d {
                public f() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("sphere_lp.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/sphere_lp.obj"));
                }
            }

            public class g implements dd.d {
                public g() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("cone.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/cone.obj"));
                }
            }

            public class C0075h implements dd.d {
                public C0075h() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("cylinder.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/cylinder.obj"));
                }
            }

            public class i implements dd.d {
                public i() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("circle.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/circle.obj"));
                }
            }

            public class j implements dd.d {
                public j() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("torus.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/torus.obj"));
                }
            }

            public class k implements dd.d {
                public k() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("square.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/square.obj"));
                }
            }

            public class l implements dd.d {
                public l() {
                }

                @Override
                public void onSelected(View v10) {
                    W.this.f2256b.setText("square90.obj");
                    W.this.f2257c.f2067b.set(new Variable("", "@@ASSET@@Engine/Primitives/Models/square90.obj"));
                }
            }

            public e() {
                add(new C12908b("Cube Primitive", new d()));
                add(new C12908b("Sphere Primitive", new C0074e()));
                add(new C12908b("Sphere LowPoly Primitive", new f()));
                add(new C12908b("Cone Primitive", new g()));
                add(new C12908b("Cylinder Primitive", new C0075h()));
                add(new C12908b("Circle Primitive", new i()));
                add(new C12908b("Torus Primitive", new j()));
                add(new C12908b("Square Primitive", new k()));
                add(new C12908b("Square90 Primitive", new l()));
                add(new C12908b("Capsule Primitive", new a()));
                add(new C12908b("HalfCapsule Primitive", new b()));
                add(new C12908b("Render target", new c()));
            }
        }

        public W(final TextView val$textView, final C5.b val$entry, final Context val$context, final Runnable val$updateText) {
            this.f2256b = val$textView;
            this.f2257c = val$entry;
            this.f2258d = val$context;
            this.f2259e = val$updateText;
            add(new C12908b("Remove", new a()));
            add(new C12908b("From Project", new b()));
            add(new C12908b("Import from Android", new c()));
            add(new C12908b("Show in files", new d()));
            if (C2633l.b(val$entry.f2080o, ".mesh")) {
                add(new C12908b("Primitives", new e()));
            }
        }
    }

    public class X implements Yc.g {

        public final Context f2280a;

        public final TextView f2281b;

        public final b f2282c;

        public final Runnable f2283d;

        public X(final Context val$context, final TextView val$textView, final b val$entry, final Runnable val$updateText) {
            this.f2280a = val$context;
            this.f2281b = val$textView;
            this.f2282c = val$entry;
            this.f2283d = val$updateText;
        }

        @Override
        public void b(C13823b pfile) {
            try {
                if (this.f2280a != null) {
                    if (pfile == null || pfile.f().isEmpty()) {
                        this.f2281b.setText("");
                    } else {
                        String f10 = pfile.f();
                        try {
                            this.f2281b.setText(f10.substring(f10.lastIndexOf("/") + 1));
                        } catch (Error | Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    if (pfile == null || pfile.f().isEmpty()) {
                        this.f2282c.f2067b.set(new Variable("temp", ""));
                    } else {
                        this.f2282c.f2067b.set(new Variable("temp", pfile.f()));
                    }
                    Runnable runnable = this.f2283d;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            } catch (Error e11) {
                e = e11;
                e.printStackTrace();
            } catch (Exception e12) {
                e = e12;
                e.printStackTrace();
            }
        }
    }

    public class Y extends b.e {

        public final TextView f2284a;

        public final b f2285b;

        public Y(final TextView val$textView, final b val$entry) {
            this.f2284a = val$textView;
            this.f2285b = val$entry;
        }

        @Override
        public void d(GameObject gameObject) {
            try {
                TextView textView = this.f2284a;
                if (textView != null) {
                    if (gameObject != null) {
                        textView.setText(gameObject.getName());
                    } else {
                        textView.setText("");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f2285b.f2068c.set(gameObject);
        }
    }

    public class Z extends b.e {

        public final TextView f2286a;

        public final b f2287b;

        public final Context f2288c;

        public Z(final TextView val$textView, final b val$entry, final Context val$context) {
            this.f2286a = val$textView;
            this.f2287b = val$entry;
            this.f2288c = val$context;
        }

        @Override
        public boolean a(GameObject gameObject) {
            return e(gameObject);
        }

        @Override
        public boolean b(GameObject gameObject) {
            GameObject allowObject = this.f2287b.f2069d.getAllowObject();
            if (allowObject == null) {
                return f(gameObject);
            }
            if (allowObject == gameObject || allowObject.d1(gameObject) || gameObject.d1(allowObject)) {
                return f(gameObject);
            }
            return false;
        }

        @Override
        public String c(GameObject gameObject) {
            if (!a(gameObject)) {
                return gameObject.getName();
            }
            return gameObject.getName() + " - " + this.f2287b.f2069d.getTittle();
        }

        @Override
        public void d(GameObject gameObject) {
            try {
                TextView textView = this.f2286a;
                if (textView != null) {
                    if (gameObject == null) {
                        textView.setText("");
                        return;
                    }
                    if (this.f2287b.f2069d != null) {
                        for (int i10 = 0; i10 < gameObject.N(); i10++) {
                            Component L10 = gameObject.L(i10);
                            if (this.f2287b.f2069d.match(L10)) {
                                this.f2287b.f2069d.set(L10);
                                try {
                                    this.f2286a.setText(L10.f79250n.getName() + " (" + L10.getTitle() + ")");
                                    return;
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                    return;
                                }
                            }
                        }
                        Toast.makeText(this.f2288c, "No component matching found", 0).show();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        public boolean e(GameObject gameObject) {
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if (L10 != null && this.f2287b.f2069d.match(L10)) {
                    return true;
                }
            }
            return false;
        }

        public boolean f(GameObject gameObject) {
            if (e(gameObject)) {
                return true;
            }
            for (int i10 = 0; i10 < gameObject.D(); i10++) {
                if (f(gameObject.C(i10))) {
                    return true;
                }
            }
            return false;
        }
    }

    public class C2394a extends dn.a {

        public final b f2289a;

        public final E5.g f2290b;

        public C2394a(final b val$entry, final E5.g val$textInt) {
            this.f2289a = val$entry;
            this.f2290b = val$textInt;
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int progress, boolean fromUser) {
            if (fromUser) {
                try {
                    this.f2289a.f2067b.set(new Variable("", progress));
                    E5.g gVar = this.f2290b;
                    if (gVar != null) {
                        gVar.h();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class a0 extends AbstractViewOnClickListenerC12733a {

        public final m f2291b;

        public a0(final m val$topbarExtra) {
            this.f2291b = val$topbarExtra;
        }

        @Override
        public void click(View v10) {
            try {
                View.OnClickListener onClickListener = this.f2291b.f2373b;
                if (onClickListener != null) {
                    onClickListener.onClick(v10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C2395b implements g.i {

        public final b f2292a;

        public final RangeSeekBarView f2293b;

        public C2395b(final b val$entry, final RangeSeekBarView val$rangeSeekBarView) {
            this.f2292a = val$entry;
            this.f2293b = val$rangeSeekBarView;
        }

        @Override
        public void b(int newValue) {
            this.f2293b.setCurrentValue(newValue);
        }

        @Override
        public int c(int newValue) {
            float f10 = newValue;
            b bVar = this.f2292a;
            float f11 = bVar.f2088w;
            if (f10 > f11) {
                return (int) f11;
            }
            float f12 = bVar.f2087v;
            return f10 < f12 ? (int) f12 : newValue;
        }
    }

    public static class b0 {

        public static final int[] f2294a;

        static {
            int[] iArr = new int[com.itsmagic.engine.Engines.Engine.Animation.c.values().length];
            f2294a = iArr;
            try {
                iArr[com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.COLOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2I.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.UVEC2I.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.QUAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.SQUARE5I.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2294a[com.itsmagic.engine.Engines.Engine.Animation.c.IMAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public class C2396c extends AbstractViewOnClickListenerC12733a {

        public final b f2295b;

        public final int f2296c;

        public C2396c(final b val$entry, final int val$positionInAdapter) {
            this.f2295b = val$entry;
            this.f2296c = val$positionInAdapter;
        }

        @Override
        public void click(View v10) {
            try {
                b bVar = this.f2295b;
                bVar.f2071f.a(bVar.f2075j, this.f2296c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c0 extends AbstractViewOnClickListenerC12733a {

        public final b f2297b;

        public c0(final b val$entry) {
            this.f2297b = val$entry;
        }

        @Override
        public void click(View view) {
            h.G(this.f2297b);
        }
    }

    public class C2397d implements D5.f {

        public final b f2298a;

        public final View f2299b;

        public C2397d(final b val$entry, final View val$inputField) {
            this.f2298a = val$entry;
            this.f2299b = val$inputField;
        }

        @Override
        public void a() {
            com.itsmagic.engine.Activities.Editor.Utils.F.d(this.f2298a.f2067b.get().str_value, this.f2299b);
        }
    }

    public class d0 implements v3.j {

        public final b f2300a;

        public final FrameLayout f2301b;

        public final Context f2302c;

        public d0(final b val$entry, final FrameLayout val$keyframeBtn, final Context val$context) {
            this.f2300a = val$entry;
            this.f2301b = val$keyframeBtn;
            this.f2302c = val$context;
        }

        @Override
        public void a(Activity activity, v3.k repeater) {
            b bVar = this.f2300a;
            int v10 = h.v(bVar.f2058K, bVar.f2059L, bVar.f2060M);
            if (v10 == 0 || v10 == -1) {
                this.f2301b.setBackground(ContextCompat.getDrawable(this.f2302c, com.itsmagic.engine2.R.drawable.editor3d_v2_input_text_background));
            } else {
                this.f2301b.setBackground(ContextCompat.getDrawable(this.f2302c, v10));
            }
            h.q(this.f2301b, this.f2302c);
            try {
                if (this.f2300a.i()) {
                    N7.c.I().b(repeater);
                } else if (W7.b.f27309i.f31909a.f31910a == null) {
                    N7.c.I().b(repeater);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                N7.c.I().b(repeater);
            }
        }
    }

    public class C2398e implements TextWatcher {

        public Handler f2303b;

        public Runnable f2304c;

        public final b f2305d;

        public class a implements Runnable {

            public final Editable f2306b;

            public a(final Editable val$s) {
                this.f2306b = val$s;
            }

            @Override
            public void run() {
                try {
                    C2398e.this.f2305d.f2067b.set(new Variable("temp", this.f2306b.toString()));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C2398e(final b val$entry) {
            this.f2305d = val$entry;
        }

        @Override
        public void afterTextChanged(Editable s10) {
            if (this.f2305d.h()) {
                this.f2304c = new a(s10);
                if (this.f2303b == null) {
                    this.f2303b = new Handler(Looper.getMainLooper());
                }
                this.f2303b.postDelayed(this.f2304c, 750L);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            Runnable runnable;
            Handler handler = this.f2303b;
            if (handler == null || (runnable = this.f2304c) == null) {
                return;
            }
            handler.removeCallbacks(runnable);
        }
    }

    public class e0 extends dn.a {

        public final float f2308a;

        public final b f2309b;

        public final E5.f f2310c;

        public e0(final float val$precision, final b val$entry, final E5.f val$textFloat) {
            this.f2308a = val$precision;
            this.f2309b = val$entry;
            this.f2310c = val$textFloat;
        }

        @Override
        public void b(@Nullable RangeSeekBarView rangeSeekBarView, int progress, boolean fromUser) {
            if (fromUser) {
                try {
                    this.f2309b.f2067b.set(new Variable("", progress / this.f2308a));
                    E5.f fVar = this.f2310c;
                    if (fVar != null) {
                        fVar.i();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class ViewOnFocusChangeListenerC2399f implements View.OnFocusChangeListener {

        public final b f2311a;

        public final View f2312b;

        public ViewOnFocusChangeListenerC2399f(final b val$entry, final View val$inputField) {
            this.f2311a = val$entry;
            this.f2312b = val$inputField;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f2311a.i() || hasFocus || (text = com.itsmagic.engine.Activities.Editor.Utils.F.c(this.f2312b).getText()) == null) {
                return;
            }
            this.f2311a.f2067b.set(new Variable("temp", text.toString()));
        }
    }

    public class f0 implements f.i {

        public final b f2313a;

        public final RangeSeekBarView f2314b;

        public final float f2315c;

        public f0(final b val$entry, final RangeSeekBarView val$rangeSeekBarView, final float val$precision) {
            this.f2313a = val$entry;
            this.f2314b = val$rangeSeekBarView;
            this.f2315c = val$precision;
        }

        @Override
        public float a(float newValue) {
            b bVar = this.f2313a;
            if (bVar.f2090y) {
                float f10 = bVar.f2088w;
                if (newValue > f10) {
                    return f10;
                }
                float f11 = bVar.f2087v;
                if (newValue < f11) {
                    return f11;
                }
            }
            return newValue;
        }

        @Override
        public void b(float newValue) {
            this.f2314b.setCurrentValue((int) (newValue * this.f2315c));
        }
    }

    public class C2400g implements D5.f {

        public final b f2316a;

        public final View f2317b;

        public C2400g(final b val$entry, final View val$inputField) {
            this.f2316a = val$entry;
            this.f2317b = val$inputField;
        }

        @Override
        public void a() {
            com.itsmagic.engine.Activities.Editor.Utils.F.d(this.f2316a.f2067b.get().str_value, this.f2317b);
        }
    }

    public class g0 implements SeekBar.a {

        public final b f2318a;

        public g0(final b val$entry) {
            this.f2318a = val$entry;
        }

        @Override
        public void a(float value, boolean fromUser) {
            b bVar = this.f2318a;
            bVar.f2067b.set(new Variable("", value * bVar.f2086u));
        }
    }

    public class ViewOnFocusChangeListenerC0076h implements View.OnFocusChangeListener {

        public final b f2319a;

        public final View f2320b;

        public ViewOnFocusChangeListenerC0076h(final b val$entry, final View val$inputField) {
            this.f2319a = val$entry;
            this.f2320b = val$inputField;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            Editable text;
            if (this.f2319a.i() || hasFocus || (text = com.itsmagic.engine.Activities.Editor.Utils.F.c(this.f2320b).getText()) == null) {
                return;
            }
            this.f2319a.f2067b.set(new Variable("", text.toString()));
        }
    }

    public class C2401i extends AbstractViewOnClickListenerC12733a {

        public final b f2321b;

        public final int f2322c;

        public C2401i(final b val$entry, final int val$positionInAdapter) {
            this.f2321b = val$entry;
            this.f2322c = val$positionInAdapter;
        }

        @Override
        public void click(View v10) {
            try {
                b bVar = this.f2321b;
                bVar.f2071f.a(bVar.f2075j, this.f2322c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C2402j extends AbstractViewOnClickListenerC12733a {

        public final b f2323b;

        public final TextView f2324c;

        public final Context f2325d;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                String str = C2402j.this.f2323b.f2067b.get().str_value;
                if (str == null) {
                    str = "";
                }
                if (str.contains("/")) {
                    str = str.substring(str.lastIndexOf("/") + 1);
                }
                TextView textView = C2402j.this.f2324c;
                if (textView != null) {
                    textView.setText(str);
                }
            }
        }

        public C2402j(final b val$entry, final TextView val$textView, final Context val$context) {
            this.f2323b = val$entry;
            this.f2324c = val$textView;
            this.f2325d = val$context;
        }

        @Override
        public void click(View view) {
            try {
                h.E(this.f2323b, this.f2324c, this.f2325d, new a());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C2403k extends AbstractViewOnClickListenerC12733a {

        public final b f2327b;

        public final int f2328c;

        public C2403k(final b val$entry, final int val$positionInAdapter) {
            this.f2327b = val$entry;
            this.f2328c = val$positionInAdapter;
        }

        @Override
        public void click(View v10) {
            try {
                b bVar = this.f2327b;
                bVar.f2071f.a(bVar.f2075j, this.f2328c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class ViewOnLongClickListenerC2404l implements View.OnLongClickListener {

        public final Context f2329b;

        public final b f2330c;

        public final TextView f2331d;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                String str = ViewOnLongClickListenerC2404l.this.f2330c.f2067b.get().str_value;
                if (str == null) {
                    str = "";
                }
                if (str.contains("/")) {
                    str = str.substring(str.lastIndexOf("/") + 1);
                }
                TextView textView = ViewOnLongClickListenerC2404l.this.f2331d;
                if (textView != null) {
                    textView.setText(str);
                }
            }
        }

        public ViewOnLongClickListenerC2404l(final Context val$context, final b val$entry, final TextView val$textView) {
            this.f2329b = val$context;
            this.f2330c = val$entry;
            this.f2331d = val$textView;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            h.d(v10, this.f2329b, this.f2330c, this.f2331d, new a());
            return true;
        }
    }

    public class C2405m extends AbstractViewOnClickListenerC12733a {

        public final Context f2333b;

        public final b f2334c;

        public final TextView f2335d;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                String str = C2405m.this.f2334c.f2067b.get().str_value;
                if (str == null) {
                    str = "";
                }
                if (str.contains("/")) {
                    str = str.substring(str.lastIndexOf("/") + 1);
                }
                TextView textView = C2405m.this.f2335d;
                if (textView != null) {
                    textView.setText(str);
                }
            }
        }

        public C2405m(final Context val$context, final b val$entry, final TextView val$textView) {
            this.f2333b = val$context;
            this.f2334c = val$entry;
            this.f2335d = val$textView;
        }

        @Override
        public void click(View v10) {
            try {
                h.d(v10, this.f2333b, this.f2334c, this.f2335d, new a());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C2406n implements D5.f {

        public final b f2337a;

        public final TextView f2338b;

        public C2406n(final b val$entry, final TextView val$textView) {
            this.f2337a = val$entry;
            this.f2338b = val$textView;
        }

        @Override
        public void a() {
            String str = this.f2337a.f2067b.get().str_value;
            if (str == null) {
                str = "";
            }
            if (str.contains("/")) {
                str = str.substring(str.lastIndexOf("/") + 1);
            }
            this.f2338b.setText(str);
        }
    }

    public class C2407o extends AbstractViewOnClickListenerC12733a {

        public final b f2339b;

        public final Context f2340c;

        public final TextView f2341d;

        public C2407o(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2339b = val$entry;
            this.f2340c = val$context;
            this.f2341d = val$textView;
        }

        @Override
        public void click(View view) {
            try {
                h.F(this.f2339b, this.f2340c, this.f2341d);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class ViewOnLongClickListenerC2408p implements View.OnLongClickListener {

        public final b f2342b;

        public final Context f2343c;

        public final TextView f2344d;

        public ViewOnLongClickListenerC2408p(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2342b = val$entry;
            this.f2343c = val$context;
            this.f2344d = val$textView;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            try {
                h.F(this.f2342b, this.f2343c, this.f2344d);
                return false;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public class C2409q extends AbstractViewOnClickListenerC12733a {

        public final b f2345b;

        public final Context f2346c;

        public final TextView f2347d;

        public C2409q(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2345b = val$entry;
            this.f2346c = val$context;
            this.f2347d = val$textView;
        }

        @Override
        public void click(View v10) {
            try {
                h.F(this.f2345b, this.f2346c, this.f2347d);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C2410r implements D5.f {

        public final b f2348a;

        public final TextView f2349b;

        public C2410r(final b val$entry, final TextView val$textView) {
            this.f2348a = val$entry;
            this.f2349b = val$textView;
        }

        @Override
        public void a() {
            String str = this.f2348a.f2067b.get().str_value;
            if (str == null) {
                str = "";
            }
            if (str.contains("/")) {
                str = str.substring(str.lastIndexOf("/") + 1);
            }
            this.f2349b.setText(str);
        }
    }

    public class C2411s extends AbstractViewOnClickListenerC12733a {

        public final b f2350b;

        public final Context f2351c;

        public final TextView f2352d;

        public C2411s(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2350b = val$entry;
            this.f2351c = val$context;
            this.f2352d = val$textView;
        }

        @Override
        public void click(View view) {
            try {
                if (this.f2350b.f2068c.allowSelect()) {
                    h.u(this.f2350b, this.f2351c, this.f2352d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class ViewOnLongClickListenerC2412t implements View.OnLongClickListener {

        public final b f2353b;

        public final Context f2354c;

        public final TextView f2355d;

        public ViewOnLongClickListenerC2412t(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2353b = val$entry;
            this.f2354c = val$context;
            this.f2355d = val$textView;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            if (!this.f2353b.f2068c.allowSelect()) {
                return false;
            }
            h.u(this.f2353b, this.f2354c, this.f2355d);
            return false;
        }
    }

    public class C2413u extends AbstractViewOnClickListenerC12733a {

        public final b f2356b;

        public final Context f2357c;

        public final TextView f2358d;

        public C2413u(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2356b = val$entry;
            this.f2357c = val$context;
            this.f2358d = val$textView;
        }

        @Override
        public void click(View v10) {
            try {
                if (this.f2356b.f2068c.allowSelect()) {
                    h.u(this.f2356b, this.f2357c, this.f2358d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class ViewOnLongClickListenerC2414v implements View.OnLongClickListener {

        public final b f2359b;

        public final Context f2360c;

        public final int f2361d;

        public ViewOnLongClickListenerC2414v(final b val$entry, final Context val$context, final int val$positionInAdapter) {
            this.f2359b = val$entry;
            this.f2360c = val$context;
            this.f2361d = val$positionInAdapter;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            return this.f2359b.f2064Q.f2035h.a(v10, this.f2360c, this.f2361d);
        }
    }

    public class C2415w implements D5.f {

        public final b f2362a;

        public final TextView f2363b;

        public final View.OnClickListener f2364c;

        public final View.OnLongClickListener f2365d;

        public C2415w(final b val$entry, final TextView val$textView, final View.OnClickListener val$click, final View.OnLongClickListener val$longClick) {
            this.f2362a = val$entry;
            this.f2363b = val$textView;
            this.f2364c = val$click;
            this.f2365d = val$longClick;
        }

        @Override
        public void a() {
            GameObject gameObject = this.f2362a.f2068c.get();
            TextView textView = this.f2363b;
            if (textView != null) {
                textView.setOnClickListener(this.f2364c);
                this.f2363b.setOnLongClickListener(this.f2365d);
                if (gameObject != null) {
                    this.f2363b.setText(gameObject.getName());
                } else {
                    this.f2363b.setText("");
                }
            }
        }
    }

    public class C2416x extends AbstractViewOnClickListenerC12733a {

        public final b f2366b;

        public final Context f2367c;

        public final TextView f2368d;

        public C2416x(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2366b = val$entry;
            this.f2367c = val$context;
            this.f2368d = val$textView;
        }

        @Override
        public void click(View view) {
            try {
                if (this.f2366b.f2069d.allowSelect()) {
                    h.s(this.f2366b, this.f2367c, this.f2368d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class ViewOnLongClickListenerC2417y implements View.OnLongClickListener {

        public final b f2369b;

        public final Context f2370c;

        public final TextView f2371d;

        public ViewOnLongClickListenerC2417y(final b val$entry, final Context val$context, final TextView val$textView) {
            this.f2369b = val$entry;
            this.f2370c = val$context;
            this.f2371d = val$textView;
        }

        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            try {
                if (!this.f2369b.f2069d.allowSelect()) {
                    return false;
                }
                h.s(this.f2369b, this.f2370c, this.f2371d);
                return false;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public class C2418z extends AbstractViewOnClickListenerC12733a {
        @Override
        public void click(View v10) {
        }
    }

    public static boolean A(b bVar, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        bVar.f2067b.set(new Variable("temp", textView.getText().toString()));
        return false;
    }

    public static boolean B(b bVar, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6 && i10 != 4) {
            return false;
        }
        bVar.f2067b.set(new Variable("", textView.getText().toString()));
        return false;
    }

    public static void C(LinearLayout extras, Context context, List<m> extrasList) {
        if (extras != null) {
            extras.removeAllViews();
            for (int i10 = 0; i10 < extrasList.size(); i10++) {
                m mVar = extrasList.get(i10);
                ImageView imageView = new ImageView(context);
                Vc.e.V(imageView, mVar.f2372a, context);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) context.getResources().getDimension(com.itsmagic.engine2.R.dimen.editor3d_v2_panel_sub_tittle), (int) context.getResources().getDimension(com.itsmagic.engine2.R.dimen.editor3d_v2_panel_sub_tittle));
                imageView.setPadding(Nc.b.k0(4.0f), Nc.b.k0(4.0f), Nc.b.k0(4.0f), Nc.b.k0(4.0f));
                imageView.setLayoutParams(layoutParams);
                if (mVar.f2374c) {
                    Vc.e.x(imageView, context, mVar.f2375d);
                }
                extras.addView(imageView);
                imageView.setOnClickListener(new a0(mVar));
            }
        }
    }

    public static int D(Context context, int color) {
        if (context == null) {
            return color;
        }
        if (color == com.itsmagic.engine2.R.color.theme_high_text_color || color == com.itsmagic.engine2.R.color.theme_high_icon_tint || color == com.itsmagic.engine2.R.color.interface_container_normal_textcolor) {
            return Theme.i(Theme.T.HIGH_TEXT_COLOR);
        }
        if (color == com.itsmagic.engine2.R.color.theme_mid_text_color || color == com.itsmagic.engine2.R.color.theme_mid_icon_tint) {
            return Theme.i(Theme.T.MID_TEXT_COLOR);
        }
        if (color == com.itsmagic.engine2.R.color.theme_primary || color == com.itsmagic.engine2.R.color.interface_primary) {
            return Theme.i(Theme.T.PRIMARY);
        }
        if (color == com.itsmagic.engine2.R.color.theme_accent || color == com.itsmagic.engine2.R.color.interface_accent) {
            return Theme.i(Theme.T.ACCENT);
        }
        try {
            return context.getResources().getColor(color);
        } catch (Resources.NotFoundException unused) {
            return color;
        }
    }

    public static void E(b entry, TextView textView, Context context, Runnable updateText) {
        Yc.c.a(entry.f2080o, new X(context, textView, entry, updateText));
    }

    public static void F(b entry, Context context, TextView textView) {
        Yc.c.b(entry.f2067b.get().str_value, N7.c.o(), new S(context, textView, entry));
    }

    public static void G(b entry) {
        com.itsmagic.engine.Engines.Engine.Animation.c cVar;
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null || (cVar = entry.f2061N) == null) {
            return;
        }
        if (entry.f2063P != null) {
            if (com.itsmagic.engine.Engines.Engine.Animation.a.f72594b.equals(entry.f2060M)) {
                com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.k3(new Ac.b(entry.f2058K), entry.f2063P.Z0());
                return;
            } else if ("s".equals(entry.f2060M)) {
                com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.o3(new Ac.b(entry.f2058K), entry.f2063P.j0());
                return;
            } else {
                if (com.itsmagic.engine.Engines.Engine.Animation.a.f72595c.equals(entry.f2060M)) {
                    com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.m3(new Ac.b(entry.f2058K), entry.f2063P.i0());
                    return;
                }
                return;
            }
        }
        Component component = entry.f2062O;
        if (component == null) {
            return;
        }
        String str = entry.f2060M;
        try {
            switch (b0.f2294a[cVar.ordinal()]) {
                case 1:
                    com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, Float.valueOf(component.getFloatFromAnimation(str)));
                    break;
                case 2:
                    com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, Integer.valueOf(component.getIntFromAnimation(str)));
                    break;
                case 3:
                    ColorINT colorFromAnimation = component.getColorFromAnimation(str);
                    if (colorFromAnimation != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, colorFromAnimation);
                        break;
                    }
                    break;
                case 4:
                    Vector3 vec3FromAnimation = component.getVec3FromAnimation(str);
                    if (vec3FromAnimation != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, vec3FromAnimation);
                        break;
                    }
                    break;
                case 5:
                    Vector2 vec2FromAnimation = component.getVec2FromAnimation(str);
                    if (vec2FromAnimation != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, vec2FromAnimation);
                        break;
                    }
                    break;
                case 6:
                case 7:
                    Vector2 vec2FromAnimation2 = component.getVec2FromAnimation(str);
                    if (vec2FromAnimation2 != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, vec2FromAnimation2);
                        break;
                    }
                    break;
                case 8:
                    Quaternion quatFromAnimation = component.getQuatFromAnimation(str);
                    if (quatFromAnimation != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, quatFromAnimation);
                        break;
                    }
                    break;
                case 9:
                    Square5I square5FromAnimation = component.getSquare5FromAnimation(str);
                    if (square5FromAnimation != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, square5FromAnimation);
                        break;
                    }
                    break;
                case 10:
                    String imageFromAnimation = component.getImageFromAnimation(str);
                    if (imageFromAnimation != null) {
                        com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.g3(new Ac.b(entry.f2058K), new Ac.b(entry.f2059L), str, cVar, imageFromAnimation);
                        break;
                    }
                    break;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void H(b entry, Context context, ImageView colorImage) {
        if (context != null) {
            Yc.c.a(".usy", new U(entry, context, colorImage));
        }
    }

    public static void d(View v10, Context context, b entry, TextView textView, Runnable updateText) {
        Y6.a.F1(v10, C15147a.e.Left, new W(textView, entry, context, updateText));
    }

    public static void e(b entry, Context context, ImageView colorImage) {
        if (context != null) {
            Yc.c.a(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new T(entry, context, colorImage));
        }
    }

    public static void q(View view, Context context) {
        if (view == null || context == null) {
            return;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(view, context);
    }

    public static void r(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        imageView.setImageTintList(null);
        ImageViewCompat.setImageTintList(imageView, null);
        imageView.clearColorFilter();
    }

    public static void s(b entry, Context context, TextView textView) {
        if (entry.f2069d != null) {
            X6.b.D1(textView, C15147a.e.Left, "Select any object with " + entry.f2069d.getTittle(), new Z(textView, entry, context));
        }
    }

    public static void t(b entry, Context context, ImageView colorImage) {
        if (context != null) {
            Yc.c.a(".cbm", new V(entry, context, colorImage));
        }
    }

    public static void u(b entry, Context context, TextView textView) {
        X6.b.D1(textView, C15147a.e.Right, "Select an object", new Y(textView, entry)).B1(entry.f2068c.getParent());
    }

    public static int v(String objectUID, String componentUID, String entryName) {
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
            return 0;
        }
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.u2(new Ac.b(objectUID), new Ac.b(componentUID), entryName)) {
            return com.itsmagic.engine2.R.drawable.editor3d_v2_input_text_background_keyframe;
        }
        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.v2(new Ac.b(objectUID), new Ac.b(componentUID), entryName)) {
            return com.itsmagic.engine2.R.drawable.editor3d_v2_input_text_background_keyframe_interpolated;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x025f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void w(LinearLayout anchor, LayoutInflater inflater, final b entry, final int positionInAdapter, Context context, final n upperCommunication) {
        View inflate;
        View view;
        View view2;
        CustomCheckBox customCheckBox;
        int i10;
        boolean z10;
        int i11;
        View.OnLongClickListener onLongClickListener;
        View view3;
        View view4;
        CustomCheckBox customCheckBox2;
        boolean z11;
        List<b> list;
        if (inflater != null) {
            b.a aVar = entry.f2079n;
            if (aVar == b.a.Component || aVar == b.a.ComponentList) {
                a aVar2 = entry.f2064Q;
                if (aVar2 != null) {
                    List<b> list2 = aVar2.f2041n;
                    inflate = list2 != null ? !list2.isEmpty() ? inflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_custom_entries, (ViewGroup) null) : inflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_custom, (ViewGroup) null) : inflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_custom, (ViewGroup) null);
                } else {
                    inflate = inflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_custom, (ViewGroup) null);
                }
                view = inflate;
            } else {
                view = null;
            }
            if (view == null) {
                return;
            }
            q(view, context);
            View findViewById = view.findViewById(com.itsmagic.engine2.R.id.trashButton);
            if (findViewById != null) {
                if (entry.f2071f == null || entry.f2079n != b.a.ComponentList) {
                    findViewById.setVisibility(8);
                } else {
                    findViewById.setOnClickListener(new C2403k(entry, positionInAdapter));
                }
            }
            if (entry.f2064Q != null) {
                TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
                TextView textView2 = (TextView) view.findViewById(com.itsmagic.engine2.R.id.rightTittle);
                ToggleButton toggleButton = (ToggleButton) view.findViewById(com.itsmagic.engine2.R.id.component_oc);
                final LinearLayout linearLayout = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.component_content);
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.tb_component_content);
                CustomCheckBox customCheckBox3 = (CustomCheckBox) view.findViewById(com.itsmagic.engine2.R.id.toggle);
                View findViewById2 = view.findViewById(com.itsmagic.engine2.R.id.toggleLayout);
                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.topbarBackgroud);
                a aVar3 = entry.f2064Q;
                if (aVar3.f2046s) {
                    textView.setText(Tc.b.d(aVar3.f2028a), TextView.BufferType.SPANNABLE);
                    view2 = findViewById2;
                    customCheckBox = customCheckBox3;
                    i10 = 0;
                    ((Spannable) textView.getText()).setSpan(new StrikethroughSpan(), 0, entry.f2064Q.f2028a.length(), 33);
                } else {
                    view2 = findViewById2;
                    customCheckBox = customCheckBox3;
                    i10 = 0;
                    textView.setText(Tc.b.d(aVar3.f2028a));
                }
                if (textView2 != null) {
                    if (entry.f2064Q.f2029b != null) {
                        textView2.setVisibility(i10);
                        textView2.setText(Tc.b.d(entry.f2064Q.f2029b));
                    } else {
                        textView2.setVisibility(8);
                    }
                }
                if (entry.f2064Q.b() != null) {
                    toggleButton.setOnCheckedChangeListener(null);
                    toggleButton.setChecked(entry.f2064Q.b().e());
                    boolean e10 = entry.f2064Q.b().e();
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
                    if (toggleButton.isChecked()) {
                        layoutParams.height = -2;
                    } else {
                        layoutParams.height = 0;
                    }
                    linearLayout.setLayoutParams(layoutParams);
                    z10 = e10;
                } else {
                    z10 = false;
                }
                if (linearLayout3 != null) {
                    int i12 = entry.f2064Q.f2043p;
                    if (i12 != 0) {
                        try {
                            linearLayout3.setBackgroundResource(i12);
                        } catch (Resources.NotFoundException unused) {
                            linearLayout3.setBackgroundColor(entry.f2064Q.f2043p);
                        }
                    } else {
                        linearLayout3.setBackgroundColor(Theme.i(Theme.T.PANEL_TOPBAR));
                    }
                    if (!entry.f2064Q.f2033f) {
                        i11 = 0;
                        linearLayout3.setVisibility(0);
                        if (entry.f2064Q.f2032e) {
                            toggleButton.setVisibility(8);
                            onLongClickListener = null;
                            toggleButton.setOnCheckedChangeListener(null);
                        } else {
                            toggleButton.setVisibility(i11);
                            toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                                @Override
                                public final void onCheckedChanged(CompoundButton compoundButton, boolean z12) {
                                    h.z(LinearLayout.this, entry, upperCommunication, positionInAdapter, compoundButton, z12);
                                }
                            });
                            onLongClickListener = null;
                        }
                        if (entry.f2064Q.f2035h == null) {
                            textView.setOnLongClickListener(new ViewOnLongClickListenerC2414v(entry, context, positionInAdapter));
                        } else {
                            textView.setOnLongClickListener(onLongClickListener);
                        }
                        if (entry.f2064Q.f2032e) {
                            view3 = view2;
                            view4 = view;
                            customCheckBox2 = customCheckBox;
                            z11 = z10;
                            textView.setOnClickListener(null);
                        } else {
                            view3 = view2;
                            view4 = view;
                            customCheckBox2 = customCheckBox;
                            z11 = z10;
                            textView.setOnClickListener(new G(linearLayout, toggleButton, entry, upperCommunication, positionInAdapter));
                        }
                        if (customCheckBox2 != null) {
                            if (entry.f2064Q.f2031d) {
                                view3.setVisibility(0);
                                try {
                                    if (entry.f2064Q.f2034g != null) {
                                        customCheckBox2.setOnCheckedChangeListener(null);
                                        customCheckBox2.setChecked(entry.f2064Q.f2034g.get().booolean_value.booleanValue());
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                                customCheckBox2.setOnCheckedChangeListener(new R(entry));
                            } else {
                                view3.setVisibility(8);
                                customCheckBox2.setOnCheckedChangeListener(null);
                            }
                        }
                        if (linearLayout2 != null && (list = entry.f2064Q.f2041n) != null) {
                            for (b bVar : list) {
                                b.a aVar4 = bVar.f2079n;
                                if (aVar4 == b.a.Vector) {
                                    y(linearLayout2, inflater, bVar, positionInAdapter, context);
                                } else if (aVar4 == b.a.Component || aVar4 == b.a.ComponentList) {
                                    w(linearLayout2, inflater, bVar, positionInAdapter, context, upperCommunication);
                                } else {
                                    x(linearLayout2, inflater, bVar, positionInAdapter, true, context);
                                }
                            }
                        }
                        linearLayout.removeAllViews();
                        if (z11) {
                            entry.f2064Q.f2045r = false;
                        } else {
                            a aVar5 = entry.f2064Q;
                            aVar5.f2045r = true;
                            for (b bVar2 : aVar5.f2042o) {
                                b.a aVar6 = bVar2.f2079n;
                                if (aVar6 == b.a.Vector) {
                                    y(linearLayout, inflater, bVar2, positionInAdapter, context);
                                } else if (aVar6 == b.a.Component || aVar6 == b.a.ComponentList) {
                                    w(linearLayout, inflater, bVar2, positionInAdapter, context, upperCommunication);
                                } else {
                                    try {
                                        x(linearLayout, inflater, bVar2, positionInAdapter, true, context);
                                    } catch (Error | Exception e12) {
                                        e12.printStackTrace();
                                    }
                                }
                            }
                        }
                        anchor.addView(view4);
                    }
                    linearLayout3.setVisibility(8);
                }
                i11 = 0;
                if (entry.f2064Q.f2032e) {
                }
                if (entry.f2064Q.f2035h == null) {
                }
                if (entry.f2064Q.f2032e) {
                }
                if (customCheckBox2 != null) {
                }
                if (linearLayout2 != null) {
                    while (r0.hasNext()) {
                    }
                }
                linearLayout.removeAllViews();
                if (z11) {
                }
                anchor.addView(view4);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:65|66|(6:71|(5:401|402|(6:404|(1:406)|407|408|409|410)|92|(1:105)(4:96|(1:104)(1:100)|101|102))(2:73|(5:75|(8:77|(1:79)|80|81|(1:83)(1:91)|84|85|86)|92|(1:94)|105)(7:106|(2:117|(5:119|(4:121|122|123|124)|92|(0)|105)(8:129|130|(5:135|(2:137|(6:139|(1:141)(1:148)|142|(1:144)|(1:146)|147))(2:149|(2:151|(4:(2:154|(4:156|(1:158)|159|(1:161))(1:162))|163|(2:165|(1:167)(1:168))|169))(2:170|(2:172|(4:(2:175|(4:177|(1:179)|180|(1:182))(1:183))|184|(2:186|(2:189|190)(1:188))|195))(3:196|(2:203|(2:205|(4:207|208|209|210))(2:215|(2:217|(5:221|(2:224|222)|225|226|227))(4:232|(2:237|(2:239|(4:243|(1:245)(1:249)|(1:247)|248))(4:250|(4:257|(2:266|(2:268|(4:272|273|(2:279|(1:281)(1:282))|283))(2:288|(1:292)))|293|(4:297|298|(2:304|(2:314|(2:324|(2:326|(1:328)(1:329))(2:330|(1:332)(2:333|(1:335)(1:336))))(2:318|319))(2:308|309))|337))|342|(2:344|(5:346|(1:354)|355|(1:359)|360))))|361|(1:363))))|364)))|92|(0)|105)|365|(8:367|(1:371)|372|(1:374)(1:381)|375|(1:377)|(1:379)|380)|92|(0)|105))|382|(8:384|(1:388)|389|(1:391)(1:400)|392|393|394|395)|92|(0)|105))|595|596|597|598)|419|420|(8:422|(1:424)|425|426|(1:428)(1:437)|429|430|431)|92|(0)|105) */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0aff, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0b9e, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0215 A[Catch: Exception -> 0x001f, TryCatch #9 {Exception -> 0x001f, blocks: (B:5:0x000f, B:7:0x0015, B:10:0x0215, B:12:0x021b, B:13:0x0227, B:16:0x023c, B:18:0x0240, B:20:0x024b, B:21:0x0251, B:23:0x0255, B:24:0x025d, B:25:0x0260, B:27:0x0266, B:29:0x026a, B:31:0x0276, B:33:0x027c, B:35:0x0280, B:38:0x0286, B:40:0x028a, B:42:0x028e, B:45:0x0294, B:47:0x0298, B:51:0x02a0, B:53:0x02a4, B:55:0x02a8, B:58:0x02ae, B:60:0x02b2, B:62:0x02b6, B:65:0x02bc, B:68:0x02ce, B:71:0x02d4, B:92:0x0bce, B:94:0x0bd4, B:96:0x0bd8, B:100:0x0c2b, B:101:0x0c3d, B:104:0x0c33, B:105:0x0c41, B:73:0x034c, B:75:0x0350, B:77:0x0354, B:79:0x035c, B:80:0x0366, B:90:0x0386, B:86:0x0389, B:106:0x03f1, B:108:0x03f8, B:110:0x03fc, B:112:0x0400, B:114:0x0404, B:117:0x040a, B:119:0x040e, B:121:0x0412, B:124:0x043a, B:128:0x0437, B:129:0x0448, B:132:0x0456, B:135:0x045c, B:137:0x0460, B:139:0x0464, B:142:0x048a, B:144:0x0490, B:146:0x049c, B:147:0x04a5, B:149:0x04b9, B:151:0x04bd, B:154:0x04c3, B:156:0x04c7, B:158:0x04e5, B:159:0x04ec, B:161:0x04f0, B:162:0x04f8, B:163:0x04fb, B:165:0x051d, B:167:0x0529, B:168:0x0531, B:169:0x0534, B:170:0x0548, B:172:0x054c, B:175:0x0552, B:177:0x0556, B:179:0x0574, B:180:0x057b, B:182:0x057f, B:183:0x0587, B:184:0x058a, B:186:0x05ac, B:188:0x05e1, B:194:0x05dd, B:195:0x05e4, B:196:0x05f8, B:198:0x05fc, B:200:0x0600, B:203:0x0606, B:205:0x060a, B:207:0x060e, B:210:0x0645, B:214:0x0642, B:215:0x0656, B:217:0x065a, B:219:0x0665, B:221:0x0669, B:222:0x066d, B:224:0x0673, B:227:0x0693, B:231:0x0690, B:232:0x069d, B:234:0x06a1, B:237:0x06a7, B:239:0x06ae, B:241:0x06b2, B:243:0x06ba, B:245:0x06c2, B:247:0x06d2, B:248:0x06e1, B:249:0x06cb, B:250:0x070d, B:252:0x0711, B:254:0x0715, B:257:0x071b, B:259:0x0722, B:261:0x0726, B:263:0x072a, B:266:0x0730, B:268:0x0734, B:270:0x0738, B:287:0x07db, B:288:0x07e0, B:290:0x07e4, B:292:0x07e8, B:293:0x0803, B:295:0x0807, B:341:0x0999, B:342:0x099e, B:344:0x09a2, B:346:0x09bb, B:348:0x09bf, B:350:0x09c5, B:352:0x09cb, B:354:0x09cf, B:355:0x09d1, B:357:0x09d8, B:359:0x09dc, B:360:0x09df, B:361:0x09e9, B:363:0x09f2, B:364:0x0a03, B:365:0x0a0d, B:367:0x0a11, B:369:0x0a1c, B:371:0x0a20, B:372:0x0a28, B:375:0x0a4e, B:377:0x0a54, B:379:0x0a60, B:380:0x0a69, B:382:0x0a7d, B:384:0x0a81, B:386:0x0a8c, B:388:0x0a90, B:389:0x0a98, B:391:0x0aa2, B:392:0x0aad, B:395:0x0ad9, B:399:0x0ad6, B:400:0x0aa8, B:418:0x0347, B:440:0x0b9e, B:441:0x0ba2, B:442:0x0bab, B:443:0x0bb4, B:444:0x0bbd, B:445:0x0bc6, B:446:0x026e, B:448:0x0023, B:450:0x0027, B:451:0x002f, B:453:0x0033, B:455:0x0037, B:457:0x003b, B:459:0x003f, B:461:0x0043, B:463:0x0047, B:466:0x004d, B:468:0x0051, B:470:0x0055, B:472:0x0059, B:474:0x005d, B:476:0x0061, B:478:0x0065, B:481:0x006b, B:483:0x006f, B:486:0x0075, B:488:0x0079, B:489:0x0081, B:491:0x0085, B:492:0x008d, B:494:0x0091, B:496:0x0095, B:498:0x0099, B:500:0x009d, B:502:0x00a1, B:504:0x00a5, B:506:0x00a9, B:509:0x00af, B:511:0x00b3, B:512:0x00bc, B:514:0x00c3, B:515:0x00c9, B:517:0x00cd, B:518:0x00d6, B:520:0x00da, B:523:0x00e0, B:525:0x00e7, B:526:0x00ed, B:528:0x00f1, B:529:0x00f7, B:531:0x00fb, B:532:0x0104, B:534:0x0108, B:535:0x0111, B:537:0x0115, B:538:0x011e, B:540:0x0122, B:541:0x012b, B:543:0x012f, B:544:0x0138, B:546:0x013c, B:547:0x0145, B:549:0x0149, B:550:0x0152, B:552:0x0156, B:553:0x015f, B:555:0x0163, B:556:0x016c, B:558:0x0173, B:560:0x0177, B:562:0x017b, B:565:0x0180, B:567:0x0184, B:568:0x018a, B:570:0x018e, B:571:0x0197, B:573:0x019d, B:574:0x01a6, B:576:0x01ac, B:577:0x01b5, B:579:0x01bb, B:580:0x01c4, B:582:0x01ca, B:584:0x01ce, B:586:0x01d4, B:587:0x01da, B:589:0x01e3, B:590:0x01e9, B:591:0x01ef, B:592:0x01f8, B:593:0x0201, B:594:0x020a, B:402:0x02d8, B:404:0x02dc, B:406:0x02e4, B:407:0x02f2, B:410:0x030b, B:415:0x0308, B:409:0x02f9, B:226:0x0684, B:273:0x0740, B:275:0x074b, B:277:0x074f, B:279:0x0755, B:281:0x078d, B:282:0x07ac, B:283:0x07c9, B:298:0x080f, B:300:0x081a, B:302:0x081e, B:304:0x0824, B:306:0x082a, B:313:0x0851, B:314:0x085a, B:316:0x0860, B:323:0x0887, B:324:0x088c, B:326:0x0892, B:328:0x08ca, B:329:0x08e7, B:330:0x0905, B:332:0x090f, B:333:0x0916, B:335:0x094e, B:336:0x096a, B:337:0x0987, B:309:0x0834, B:319:0x086a, B:123:0x0428, B:394:0x0abf, B:209:0x062e, B:420:0x0ae7, B:422:0x0aeb, B:424:0x0af3, B:425:0x0b03, B:436:0x0b27, B:431:0x0b2a, B:430:0x0b18, B:190:0x05b4, B:85:0x0377), top: B:4:0x000f, inners: #1, #2, #3, #4, #5, #6, #7, #8, #10, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0bd4 A[Catch: Exception -> 0x001f, TryCatch #9 {Exception -> 0x001f, blocks: (B:5:0x000f, B:7:0x0015, B:10:0x0215, B:12:0x021b, B:13:0x0227, B:16:0x023c, B:18:0x0240, B:20:0x024b, B:21:0x0251, B:23:0x0255, B:24:0x025d, B:25:0x0260, B:27:0x0266, B:29:0x026a, B:31:0x0276, B:33:0x027c, B:35:0x0280, B:38:0x0286, B:40:0x028a, B:42:0x028e, B:45:0x0294, B:47:0x0298, B:51:0x02a0, B:53:0x02a4, B:55:0x02a8, B:58:0x02ae, B:60:0x02b2, B:62:0x02b6, B:65:0x02bc, B:68:0x02ce, B:71:0x02d4, B:92:0x0bce, B:94:0x0bd4, B:96:0x0bd8, B:100:0x0c2b, B:101:0x0c3d, B:104:0x0c33, B:105:0x0c41, B:73:0x034c, B:75:0x0350, B:77:0x0354, B:79:0x035c, B:80:0x0366, B:90:0x0386, B:86:0x0389, B:106:0x03f1, B:108:0x03f8, B:110:0x03fc, B:112:0x0400, B:114:0x0404, B:117:0x040a, B:119:0x040e, B:121:0x0412, B:124:0x043a, B:128:0x0437, B:129:0x0448, B:132:0x0456, B:135:0x045c, B:137:0x0460, B:139:0x0464, B:142:0x048a, B:144:0x0490, B:146:0x049c, B:147:0x04a5, B:149:0x04b9, B:151:0x04bd, B:154:0x04c3, B:156:0x04c7, B:158:0x04e5, B:159:0x04ec, B:161:0x04f0, B:162:0x04f8, B:163:0x04fb, B:165:0x051d, B:167:0x0529, B:168:0x0531, B:169:0x0534, B:170:0x0548, B:172:0x054c, B:175:0x0552, B:177:0x0556, B:179:0x0574, B:180:0x057b, B:182:0x057f, B:183:0x0587, B:184:0x058a, B:186:0x05ac, B:188:0x05e1, B:194:0x05dd, B:195:0x05e4, B:196:0x05f8, B:198:0x05fc, B:200:0x0600, B:203:0x0606, B:205:0x060a, B:207:0x060e, B:210:0x0645, B:214:0x0642, B:215:0x0656, B:217:0x065a, B:219:0x0665, B:221:0x0669, B:222:0x066d, B:224:0x0673, B:227:0x0693, B:231:0x0690, B:232:0x069d, B:234:0x06a1, B:237:0x06a7, B:239:0x06ae, B:241:0x06b2, B:243:0x06ba, B:245:0x06c2, B:247:0x06d2, B:248:0x06e1, B:249:0x06cb, B:250:0x070d, B:252:0x0711, B:254:0x0715, B:257:0x071b, B:259:0x0722, B:261:0x0726, B:263:0x072a, B:266:0x0730, B:268:0x0734, B:270:0x0738, B:287:0x07db, B:288:0x07e0, B:290:0x07e4, B:292:0x07e8, B:293:0x0803, B:295:0x0807, B:341:0x0999, B:342:0x099e, B:344:0x09a2, B:346:0x09bb, B:348:0x09bf, B:350:0x09c5, B:352:0x09cb, B:354:0x09cf, B:355:0x09d1, B:357:0x09d8, B:359:0x09dc, B:360:0x09df, B:361:0x09e9, B:363:0x09f2, B:364:0x0a03, B:365:0x0a0d, B:367:0x0a11, B:369:0x0a1c, B:371:0x0a20, B:372:0x0a28, B:375:0x0a4e, B:377:0x0a54, B:379:0x0a60, B:380:0x0a69, B:382:0x0a7d, B:384:0x0a81, B:386:0x0a8c, B:388:0x0a90, B:389:0x0a98, B:391:0x0aa2, B:392:0x0aad, B:395:0x0ad9, B:399:0x0ad6, B:400:0x0aa8, B:418:0x0347, B:440:0x0b9e, B:441:0x0ba2, B:442:0x0bab, B:443:0x0bb4, B:444:0x0bbd, B:445:0x0bc6, B:446:0x026e, B:448:0x0023, B:450:0x0027, B:451:0x002f, B:453:0x0033, B:455:0x0037, B:457:0x003b, B:459:0x003f, B:461:0x0043, B:463:0x0047, B:466:0x004d, B:468:0x0051, B:470:0x0055, B:472:0x0059, B:474:0x005d, B:476:0x0061, B:478:0x0065, B:481:0x006b, B:483:0x006f, B:486:0x0075, B:488:0x0079, B:489:0x0081, B:491:0x0085, B:492:0x008d, B:494:0x0091, B:496:0x0095, B:498:0x0099, B:500:0x009d, B:502:0x00a1, B:504:0x00a5, B:506:0x00a9, B:509:0x00af, B:511:0x00b3, B:512:0x00bc, B:514:0x00c3, B:515:0x00c9, B:517:0x00cd, B:518:0x00d6, B:520:0x00da, B:523:0x00e0, B:525:0x00e7, B:526:0x00ed, B:528:0x00f1, B:529:0x00f7, B:531:0x00fb, B:532:0x0104, B:534:0x0108, B:535:0x0111, B:537:0x0115, B:538:0x011e, B:540:0x0122, B:541:0x012b, B:543:0x012f, B:544:0x0138, B:546:0x013c, B:547:0x0145, B:549:0x0149, B:550:0x0152, B:552:0x0156, B:553:0x015f, B:555:0x0163, B:556:0x016c, B:558:0x0173, B:560:0x0177, B:562:0x017b, B:565:0x0180, B:567:0x0184, B:568:0x018a, B:570:0x018e, B:571:0x0197, B:573:0x019d, B:574:0x01a6, B:576:0x01ac, B:577:0x01b5, B:579:0x01bb, B:580:0x01c4, B:582:0x01ca, B:584:0x01ce, B:586:0x01d4, B:587:0x01da, B:589:0x01e3, B:590:0x01e9, B:591:0x01ef, B:592:0x01f8, B:593:0x0201, B:594:0x020a, B:402:0x02d8, B:404:0x02dc, B:406:0x02e4, B:407:0x02f2, B:410:0x030b, B:415:0x0308, B:409:0x02f9, B:226:0x0684, B:273:0x0740, B:275:0x074b, B:277:0x074f, B:279:0x0755, B:281:0x078d, B:282:0x07ac, B:283:0x07c9, B:298:0x080f, B:300:0x081a, B:302:0x081e, B:304:0x0824, B:306:0x082a, B:313:0x0851, B:314:0x085a, B:316:0x0860, B:323:0x0887, B:324:0x088c, B:326:0x0892, B:328:0x08ca, B:329:0x08e7, B:330:0x0905, B:332:0x090f, B:333:0x0916, B:335:0x094e, B:336:0x096a, B:337:0x0987, B:309:0x0834, B:319:0x086a, B:123:0x0428, B:394:0x0abf, B:209:0x062e, B:420:0x0ae7, B:422:0x0aeb, B:424:0x0af3, B:425:0x0b03, B:436:0x0b27, B:431:0x0b2a, B:430:0x0b18, B:190:0x05b4, B:85:0x0377), top: B:4:0x000f, inners: #1, #2, #3, #4, #5, #6, #7, #8, #10, #14 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static View x(LinearLayout linearLayout, LayoutInflater layoutInflater, final b bVar, int i10, boolean z10, Context context) {
        b.a aVar;
        View inflate;
        View view;
        D5.e eVar;
        b.a aVar2;
        CharSequence charSequence;
        Variable variable;
        String str;
        ImageView imageView;
        String str2;
        ImageView imageView2;
        String str3;
        ImageView imageView3;
        SteppedArrayList<String> steppedArrayList;
        if (layoutInflater == null || bVar == null) {
            return null;
        }
        try {
            aVar = bVar.f2079n;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
        if (aVar == b.a.NoteText) {
            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_notetext, (ViewGroup) null);
        } else if (aVar == b.a.Header) {
            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_header, (ViewGroup) null);
        } else {
            if (aVar != b.a.SLFloatWrap && aVar != b.a.SLIntWrap && aVar != b.a.SLStringWrap && aVar != b.a.SLShortWrap && aVar != b.a.SLDoubleWrap && aVar != b.a.SLLongWrap && aVar != b.a.SLCharWrap) {
                if (aVar != b.a.String && aVar != b.a.Float && aVar != b.a.Int && aVar != b.a.Short && aVar != b.a.Double && aVar != b.a.Long && aVar != b.a.Char) {
                    if (aVar != b.a.SLFloatSlider && aVar != b.a.SLIntSlider) {
                        if (aVar == b.a.SLFloat01) {
                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slslider_v2, (ViewGroup) null);
                        } else if (aVar == b.a.SLFloatSliderFPanel) {
                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slslider_fill_width, (ViewGroup) null);
                        } else {
                            if (aVar != b.a.SLString && aVar != b.a.SLPassword && aVar != b.a.SLFloat && aVar != b.a.SLInt && aVar != b.a.SLShort && aVar != b.a.SLDouble && aVar != b.a.SLLong && aVar != b.a.SLChar) {
                                if (aVar == b.a.MLString) {
                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_inputmultilinetext, (ViewGroup) null);
                                } else if (aVar == b.a.InputFile) {
                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slinputfile, (ViewGroup) null);
                                } else if (aVar == b.a.OutputFile) {
                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_sloutputfile, (ViewGroup) null);
                                } else {
                                    if (aVar != b.a.GameObject && aVar != b.a.ComponentEntry) {
                                        if (aVar == b.a.Boolean) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slboolean, (ViewGroup) null);
                                        } else if (aVar == b.a.SLBoolean) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slboolean, (ViewGroup) null);
                                        } else if (aVar == b.a.SLBooleanWrap) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slboolean_wrap, (ViewGroup) null);
                                        } else if (aVar == b.a.CompostBoolean) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_compostboolean, (ViewGroup) null);
                                        } else if (aVar == b.a.Tab) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_tab, (ViewGroup) null);
                                        } else if (aVar == b.a.Button) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_button, (ViewGroup) null);
                                        } else if (aVar == b.a.ButtonMatchParent) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_button_match, (ViewGroup) null);
                                        } else if (aVar == b.a.Color) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_color, (ViewGroup) null);
                                        } else if (aVar == b.a.Dropdown) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_dropdown, (ViewGroup) null);
                                        } else if (aVar == b.a.SLDropdown) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_sldropdown, (ViewGroup) null);
                                        } else if (aVar == b.a.SLDropdownWrap) {
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_sldropdown_wrap, (ViewGroup) null);
                                        } else {
                                            if (aVar != b.a.Texture && aVar != b.a.UITexture && aVar != b.a.UIStyle && aVar != b.a.Matcap) {
                                                if (aVar == b.a.CubemapOrGallery) {
                                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_texture, (ViewGroup) null);
                                                } else if (aVar == b.a.Anchor) {
                                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_anchor, (ViewGroup) null);
                                                } else if (bVar.f2079n == b.a.TextAlignment) {
                                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_textalignment, (ViewGroup) null);
                                                } else if (bVar.f2079n == b.a.FileListItem) {
                                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_filelistitem, (ViewGroup) null);
                                                } else if (bVar.f2079n == b.a.StringList) {
                                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_stringlistitem, (ViewGroup) null);
                                                } else {
                                                    if (bVar.f2079n != b.a.CustomView || (eVar = bVar.f2072g) == null) {
                                                        view = null;
                                                        if (view != null) {
                                                            q(view, context);
                                                            if (!z10) {
                                                                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                                                                layoutParams.weight = 1.0f;
                                                                view.setLayoutParams(layoutParams);
                                                            }
                                                            TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
                                                            if (bVar.f2079n != b.a.CustomView && textView != null) {
                                                                String str4 = bVar.f2077l;
                                                                if (str4 != null) {
                                                                    textView.setText(Tc.b.d(str4));
                                                                    if (bVar.f2085t) {
                                                                        textView.setTextSize(2, bVar.f2083r);
                                                                    }
                                                                    int i11 = bVar.f2084s;
                                                                    if (i11 > 0) {
                                                                        textView.setTextColor(D(context, i11));
                                                                    }
                                                                } else {
                                                                    textView.setVisibility(8);
                                                                }
                                                            }
                                                            b.a aVar3 = bVar.f2079n;
                                                            if (aVar3 == b.a.Float || aVar3 == b.a.SLFloat || aVar3 == b.a.SLFloatWrap) {
                                                                new E5.f().d(bVar, view, textView, context);
                                                            }
                                                            b.a aVar4 = bVar.f2079n;
                                                            if (aVar4 != b.a.Double && aVar4 != b.a.SLDouble && aVar4 != b.a.SLDoubleWrap) {
                                                                if (aVar4 != b.a.Int && aVar4 != b.a.SLInt && aVar4 != b.a.SLIntWrap) {
                                                                    if (aVar4 != b.a.Char && aVar4 != (aVar2 = b.a.SLChar) && aVar4 != aVar2) {
                                                                        if (aVar4 != b.a.Short && aVar4 != b.a.SLShort && aVar4 != b.a.SLShortWrap) {
                                                                            if (aVar4 != b.a.Long && aVar4 != b.a.SLLong && aVar4 != b.a.SLLongWrap) {
                                                                                float f10 = 0.0f;
                                                                                int i12 = 0;
                                                                                if (aVar4 != b.a.SLFloatSlider && aVar4 != b.a.SLFloatSliderFPanel) {
                                                                                    if (aVar4 == b.a.SLFloat01) {
                                                                                        try {
                                                                                            if (bVar.f2067b != null) {
                                                                                                String str5 = bVar.f2077l;
                                                                                                if (str5.endsWith(" ")) {
                                                                                                    str5 = str5.substring(0, str5.length() - 1);
                                                                                                }
                                                                                                textView.setText(Tc.b.d(str5));
                                                                                                try {
                                                                                                    f10 = Nc.b.u1(bVar.f2067b.get().str_value);
                                                                                                } catch (Exception e11) {
                                                                                                    e11.printStackTrace();
                                                                                                }
                                                                                                SeekBar seekBar = (SeekBar) view.findViewById(com.itsmagic.engine2.R.id.seekBar);
                                                                                                seekBar.setRadiusBottomRight(Nc.b.k0(4.0f));
                                                                                                seekBar.setRadiusTopRight(Nc.b.k0(4.0f));
                                                                                                seekBar.setRadiusBottomLeft(Nc.b.k0(4.0f));
                                                                                                seekBar.setRadiusTopLeft(Nc.b.k0(4.0f));
                                                                                                seekBar.setValue(f10 / bVar.f2086u);
                                                                                                seekBar.setOnValueChangeListener(new g0(bVar));
                                                                                            }
                                                                                        } catch (Exception e12) {
                                                                                            e12.printStackTrace();
                                                                                        }
                                                                                        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null && bVar.f2061N != null) {
                                                                                            View inflate2 = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_keyframe_btn, (ViewGroup) null);
                                                                                            q(inflate2, context);
                                                                                            LinearLayout linearLayout2 = (LinearLayout) inflate2.findViewById(com.itsmagic.engine2.R.id.keyframeContent);
                                                                                            FrameLayout frameLayout = (FrameLayout) inflate2.findViewById(com.itsmagic.engine2.R.id.keyframeBtn);
                                                                                            frameLayout.setOnClickListener(new P(bVar));
                                                                                            linearLayout2.addView(view);
                                                                                            linearLayout.addView(inflate2);
                                                                                            N7.c.I().a(new v3.k(new Q(bVar, frameLayout, context), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
                                                                                            int v10 = v(bVar.f2058K, bVar.f2059L, bVar.f2060M);
                                                                                            if (v10 == 0 || v10 == -1) {
                                                                                                frameLayout.setBackground(ContextCompat.getDrawable(context, com.itsmagic.engine2.R.drawable.editor3d_v2_input_text_background));
                                                                                            } else {
                                                                                                frameLayout.setBackground(ContextCompat.getDrawable(context, v10));
                                                                                            }
                                                                                            q(frameLayout, context);
                                                                                            return inflate2;
                                                                                        }
                                                                                        linearLayout.addView(view);
                                                                                    } else if (aVar4 == b.a.SLIntSlider) {
                                                                                        if (bVar.f2067b != null) {
                                                                                            String str6 = bVar.f2077l;
                                                                                            if (str6.endsWith(" ")) {
                                                                                                str6 = str6.substring(0, str6.length() - 1);
                                                                                            }
                                                                                            textView.setText(Tc.b.d(str6));
                                                                                            float f11 = bVar.f2089x;
                                                                                            int i13 = f11 > 0.0f ? (int) f11 : 1;
                                                                                            try {
                                                                                                i12 = Nc.b.w1(bVar.f2067b.get().str_value);
                                                                                            } catch (Exception e13) {
                                                                                                e13.printStackTrace();
                                                                                            }
                                                                                            E5.g gVar = new E5.g();
                                                                                            RangeSeekBarView rangeSeekBarView = (RangeSeekBarView) view.findViewById(com.itsmagic.engine2.R.id.rangeseekbar);
                                                                                            rangeSeekBarView.setStep(i13);
                                                                                            rangeSeekBarView.setMinValue((int) bVar.f2087v);
                                                                                            rangeSeekBarView.setMaxValue((int) bVar.f2088w);
                                                                                            rangeSeekBarView.setCurrentValue(i12);
                                                                                            rangeSeekBarView.setFillColor(Theme.i(Theme.T.PRIMARY_DARK));
                                                                                            rangeSeekBarView.setBaseColor(Theme.i(Theme.T.PANEL));
                                                                                            rangeSeekBarView.setCircleFillColor(Theme.i(Theme.T.PRIMARY));
                                                                                            rangeSeekBarView.setCircleTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
                                                                                            rangeSeekBarView.setBarHeight(Nc.b.l0(6.0f, context));
                                                                                            rangeSeekBarView.setCircleRadius(Nc.b.l0(8.0f, context));
                                                                                            rangeSeekBarView.setCircleTextSize(Nc.b.p1(8, context));
                                                                                            rangeSeekBarView.setOnRangeSeekBarViewChangeListener(new C2394a(bVar, gVar));
                                                                                            gVar.e(bVar, view, textView, new C2395b(bVar, rangeSeekBarView));
                                                                                        }
                                                                                        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                                        }
                                                                                        linearLayout.addView(view);
                                                                                    } else {
                                                                                        if (aVar4 != b.a.String && aVar4 != b.a.SLString && aVar4 != b.a.SLPassword && aVar4 != b.a.SLStringWrap && aVar4 != b.a.StringList) {
                                                                                            if (aVar4 == b.a.MLString) {
                                                                                                if (bVar.f2067b != null) {
                                                                                                    View findViewById = view.findViewById(com.itsmagic.engine2.R.id.input);
                                                                                                    com.itsmagic.engine.Activities.Editor.Utils.F.d(bVar.f2067b.get().str_value, findViewById);
                                                                                                    bVar.f2076k = new C2400g(bVar, findViewById);
                                                                                                    try {
                                                                                                        com.itsmagic.engine.Activities.Editor.Utils.F.c(findViewById).setOnEditorActionListener(new TextView.OnEditorActionListener() {
                                                                                                            @Override
                                                                                                            public final boolean onEditorAction(TextView textView2, int i14, KeyEvent keyEvent) {
                                                                                                                boolean B10;
                                                                                                                B10 = h.B(b.this, textView2, i14, keyEvent);
                                                                                                                return B10;
                                                                                                            }
                                                                                                        });
                                                                                                    } catch (Exception e14) {
                                                                                                        e14.printStackTrace();
                                                                                                    }
                                                                                                    com.itsmagic.engine.Activities.Editor.Utils.F.c(findViewById).setOnFocusChangeListener(new ViewOnFocusChangeListenerC0076h(bVar, findViewById));
                                                                                                }
                                                                                                if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                                                }
                                                                                                linearLayout.addView(view);
                                                                                            } else {
                                                                                                String str7 = "";
                                                                                                if (aVar4 != b.a.InputFile && aVar4 != b.a.FileListItem) {
                                                                                                    if (aVar4 == b.a.OutputFile) {
                                                                                                        if (bVar.f2067b != null) {
                                                                                                            View findViewById2 = view.findViewById(com.itsmagic.engine2.R.id.input);
                                                                                                            TextView textView2 = (TextView) findViewById2.findViewById(com.itsmagic.engine2.R.id.tv);
                                                                                                            ImageView imageView4 = (ImageView) findViewById2.findViewById(com.itsmagic.engine2.R.id.imageView7);
                                                                                                            C2407o c2407o = new C2407o(bVar, context, textView2);
                                                                                                            ViewOnLongClickListenerC2408p viewOnLongClickListenerC2408p = new ViewOnLongClickListenerC2408p(bVar, context, textView2);
                                                                                                            String str8 = bVar.f2067b.get().str_value;
                                                                                                            if (str8 != null) {
                                                                                                                str7 = str8;
                                                                                                            }
                                                                                                            if (str7.contains("/")) {
                                                                                                                str7 = str7.substring(str7.lastIndexOf("/") + 1);
                                                                                                            }
                                                                                                            if (textView2 != null) {
                                                                                                                textView2.setOnClickListener(c2407o);
                                                                                                                textView2.setOnLongClickListener(viewOnLongClickListenerC2408p);
                                                                                                                textView2.setText(str7);
                                                                                                            }
                                                                                                            imageView4.setOnClickListener(new C2409q(bVar, context, textView2));
                                                                                                            imageView4.setOnLongClickListener(viewOnLongClickListenerC2408p);
                                                                                                            bVar.f2076k = new C2410r(bVar, textView2);
                                                                                                        }
                                                                                                    } else if (aVar4 == b.a.GameObject) {
                                                                                                        if (bVar.f2068c != null) {
                                                                                                            if (textView != null) {
                                                                                                                if (bVar.f2077l != null) {
                                                                                                                    textView.setText(bVar.f2077l + bVar.f2068c.getExtraTittle());
                                                                                                                    if (bVar.f2085t) {
                                                                                                                        textView.setTextSize(2, bVar.f2083r);
                                                                                                                    }
                                                                                                                    int i14 = bVar.f2084s;
                                                                                                                    if (i14 > 0) {
                                                                                                                        textView.setTextColor(D(context, i14));
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    textView.setVisibility(8);
                                                                                                                }
                                                                                                            }
                                                                                                            View findViewById3 = view.findViewById(com.itsmagic.engine2.R.id.input);
                                                                                                            TextView textView3 = (TextView) findViewById3.findViewById(com.itsmagic.engine2.R.id.tv);
                                                                                                            ImageView imageView5 = (ImageView) findViewById3.findViewById(com.itsmagic.engine2.R.id.imageView7);
                                                                                                            C2411s c2411s = new C2411s(bVar, context, textView3);
                                                                                                            ViewOnLongClickListenerC2412t viewOnLongClickListenerC2412t = new ViewOnLongClickListenerC2412t(bVar, context, textView3);
                                                                                                            GameObject gameObject = bVar.f2068c.get();
                                                                                                            if (textView3 != null) {
                                                                                                                textView3.setOnClickListener(c2411s);
                                                                                                                textView3.setOnLongClickListener(viewOnLongClickListenerC2412t);
                                                                                                                if (C13317e.J(gameObject)) {
                                                                                                                    textView3.setText(gameObject.getName());
                                                                                                                } else {
                                                                                                                    textView3.setText("");
                                                                                                                }
                                                                                                            }
                                                                                                            imageView5.setOnClickListener(new C2413u(bVar, context, textView3));
                                                                                                            imageView5.setOnLongClickListener(viewOnLongClickListenerC2412t);
                                                                                                            bVar.f2076k = new C2415w(bVar, textView3, c2411s, viewOnLongClickListenerC2412t);
                                                                                                        }
                                                                                                    } else if (aVar4 != b.a.ComponentEntry) {
                                                                                                        if (aVar4 != b.a.Boolean && aVar4 != b.a.SLBoolean && aVar4 != b.a.SLBooleanWrap) {
                                                                                                            if (aVar4 == b.a.CompostBoolean) {
                                                                                                                if (bVar.f2067b != null) {
                                                                                                                    ToggleSwitch toggleSwitch = (ToggleSwitch) view.findViewById(com.itsmagic.engine2.R.id.toggleswitch);
                                                                                                                    ArrayList<String> arrayList = new ArrayList<>();
                                                                                                                    arrayList.add(bVar.f2082q[0]);
                                                                                                                    arrayList.add(bVar.f2082q[1]);
                                                                                                                    toggleSwitch.setLabels(arrayList);
                                                                                                                    try {
                                                                                                                        toggleSwitch.setCheckedTogglePosition(bVar.f2067b.get().str_value.equals("true") ? 1 : 0);
                                                                                                                    } catch (Exception e15) {
                                                                                                                        e15.printStackTrace();
                                                                                                                    }
                                                                                                                    bVar.f2076k = new B(bVar, toggleSwitch);
                                                                                                                    toggleSwitch.setOnToggleSwitchChangeListener(new C(bVar));
                                                                                                                }
                                                                                                            } else if (aVar4 == b.a.Tab) {
                                                                                                                TabLayout tabLayout = (TabLayout) view.findViewById(com.itsmagic.engine2.R.id.tabcontrol);
                                                                                                                if (tabLayout != null && (steppedArrayList = bVar.f2049B) != null) {
                                                                                                                    Iterator<String> it = steppedArrayList.iterator();
                                                                                                                    while (it.hasNext()) {
                                                                                                                        String next = it.next();
                                                                                                                        TabLayout.i D10 = tabLayout.D();
                                                                                                                        D10.D(next);
                                                                                                                        tabLayout.e(D10);
                                                                                                                    }
                                                                                                                    try {
                                                                                                                        tabLayout.z(bVar.f2050C).r();
                                                                                                                    } catch (Exception e16) {
                                                                                                                        e16.printStackTrace();
                                                                                                                    }
                                                                                                                    tabLayout.d(new D(bVar));
                                                                                                                }
                                                                                                            } else {
                                                                                                                if (aVar4 != b.a.Button && aVar4 != b.a.ButtonMatchParent) {
                                                                                                                    if (aVar4 != b.a.Color) {
                                                                                                                        if (aVar4 != b.a.Dropdown && aVar4 != b.a.SLDropdown && aVar4 != b.a.SLDropdownWrap) {
                                                                                                                            if (aVar4 != b.a.Texture && aVar4 != b.a.UITexture && aVar4 != b.a.UIStyle && aVar4 != b.a.Matcap) {
                                                                                                                                if (aVar4 == b.a.CubemapOrGallery) {
                                                                                                                                    if (bVar.f2067b != null && (imageView2 = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.imageView6)) != null) {
                                                                                                                                        try {
                                                                                                                                            r(imageView2);
                                                                                                                                            Variable variable2 = bVar.f2067b.get();
                                                                                                                                            if (variable2 != null && (str3 = variable2.str_value) != null && !str3.equals("")) {
                                                                                                                                                String str9 = Tc.b.O(variable2.str_value) + ".meta/thumb.png";
                                                                                                                                                if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str9).exists()) {
                                                                                                                                                    Vc.e.Q(imageView2, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str9, context, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                                                                                                                                                } else {
                                                                                                                                                    Vc.e.Q(imageView2, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + variable2.str_value, context, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            imageView2.setOnClickListener(new M(bVar, context, imageView2));
                                                                                                                                            imageView2.setOnLongClickListener(new N(bVar, context, imageView2, variable2));
                                                                                                                                        } catch (Exception e17) {
                                                                                                                                            e17.printStackTrace();
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                } else if (aVar4 == b.a.NoteText && bVar.f2056I != null) {
                                                                                                                                    N7.c.I().a(new v3.k(new O(bVar, textView), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
                                                                                                                                }
                                                                                                                            }
                                                                                                                            if (bVar.f2067b != null && (imageView = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.imageView6)) != null) {
                                                                                                                                try {
                                                                                                                                    r(imageView);
                                                                                                                                    Variable variable3 = bVar.f2067b.get();
                                                                                                                                    if (variable3 != null && (str2 = variable3.str_value) != null && !str2.equals("")) {
                                                                                                                                        if (bVar.f2079n == b.a.UITexture && variable3.str_value.startsWith("@@UIG@@")) {
                                                                                                                                            try {
                                                                                                                                                r(imageView);
                                                                                                                                                com.bumptech.glide.b.D(context).load(H3.h.z1(variable3.str_value.substring(7))).h1(imageView);
                                                                                                                                            } catch (Exception e18) {
                                                                                                                                                e18.printStackTrace();
                                                                                                                                            }
                                                                                                                                        } else if (bVar.f2079n == b.a.Matcap && variable3.str_value.startsWith("@@MG@@")) {
                                                                                                                                            try {
                                                                                                                                                r(imageView);
                                                                                                                                                com.bumptech.glide.b.D(context).load(H3.f.y1(variable3.str_value.substring(6))).h1(imageView);
                                                                                                                                            } catch (Exception e19) {
                                                                                                                                                e19.printStackTrace();
                                                                                                                                            }
                                                                                                                                        } else if (bVar.f2079n == b.a.UIStyle) {
                                                                                                                                            String str10 = Tc.b.O(variable3.str_value) + ".meta/thumb.png";
                                                                                                                                            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str10).exists()) {
                                                                                                                                                Vc.e.Q(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str10, context, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                                                                                                                                            } else {
                                                                                                                                                C2633l.j(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + variable3.str_value, context, false);
                                                                                                                                            }
                                                                                                                                        } else if (C2633l.b(variable3.str_value, ".ivo")) {
                                                                                                                                            Vc.e.U(imageView, com.itsmagic.engine2.R.drawable.video_output);
                                                                                                                                        } else {
                                                                                                                                            String str11 = Tc.b.O(variable3.str_value) + ".texture";
                                                                                                                                            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str11).exists()) {
                                                                                                                                                Vc.e.Q(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str11, context, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                                                                                                                                            } else {
                                                                                                                                                Vc.e.Q(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + variable3.str_value, context, com.itsmagic.engine2.R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    imageView.setOnClickListener(new K(bVar, context, imageView));
                                                                                                                                    imageView.setOnLongClickListener(new L(bVar, context, imageView, variable3));
                                                                                                                                } catch (Exception e20) {
                                                                                                                                    e20.printStackTrace();
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        if (bVar.f2067b != null) {
                                                                                                                            View findViewById4 = view.findViewById(com.itsmagic.engine2.R.id.content);
                                                                                                                            TextView textView4 = (TextView) view.findViewById(com.itsmagic.engine2.R.id.textview);
                                                                                                                            View findViewById5 = view.findViewById(com.itsmagic.engine2.R.id.dropdownTouchArea);
                                                                                                                            if (findViewById4 != null) {
                                                                                                                                D5.h hVar = bVar.f2067b;
                                                                                                                                if (hVar != null && (variable = hVar.get()) != null && variable.type == Variable.a.String && (str = variable.str_value) != null) {
                                                                                                                                    bVar.f2077l = str;
                                                                                                                                }
                                                                                                                                textView4.setText(bVar.f2077l);
                                                                                                                                if (textView != null && (charSequence = bVar.f2078m) != null) {
                                                                                                                                    textView.setText(charSequence);
                                                                                                                                }
                                                                                                                                findViewById4.setOnClickListener(new J(bVar, textView4, findViewById4, findViewById5));
                                                                                                                            }
                                                                                                                        }
                                                                                                                    } else if (bVar.f2067b != null && (imageView3 = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.imageView6)) != null) {
                                                                                                                        ColorINT colorINT = bVar.f2067b.get() != null ? bVar.f2067b.get().color_value : new ColorINT();
                                                                                                                        if (colorINT == null) {
                                                                                                                            colorINT = new ColorINT();
                                                                                                                            bVar.f2067b.set(new Variable("", colorINT));
                                                                                                                        }
                                                                                                                        ImageViewCompat.setImageTintList(imageView3, ColorStateList.valueOf(colorINT.intColor));
                                                                                                                        N7.c.I().a(new v3.k(new H(bVar, imageView3), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
                                                                                                                        imageView3.setOnClickListener(new I(bVar, context, imageView3));
                                                                                                                    }
                                                                                                                }
                                                                                                                View findViewById6 = view.findViewById(com.itsmagic.engine2.R.id.layout);
                                                                                                                if (findViewById6 != null) {
                                                                                                                    bVar.f2076k = new E(textView, bVar);
                                                                                                                    findViewById6.setOnClickListener(new F(bVar, i10));
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        new E5.a().b(bVar, view, textView);
                                                                                                    } else if (bVar.f2069d != null) {
                                                                                                        if (textView != null) {
                                                                                                            if (bVar.f2077l != null) {
                                                                                                                textView.setText(bVar.f2077l + bVar.f2069d.getExtraTittle());
                                                                                                                if (bVar.f2085t) {
                                                                                                                    textView.setTextSize(2, bVar.f2083r);
                                                                                                                }
                                                                                                                int i15 = bVar.f2084s;
                                                                                                                if (i15 > 0) {
                                                                                                                    textView.setTextColor(D(context, i15));
                                                                                                                }
                                                                                                            } else {
                                                                                                                textView.setVisibility(8);
                                                                                                            }
                                                                                                        }
                                                                                                        View findViewById7 = view.findViewById(com.itsmagic.engine2.R.id.input);
                                                                                                        TextView textView5 = (TextView) findViewById7.findViewById(com.itsmagic.engine2.R.id.tv);
                                                                                                        ImageView imageView6 = (ImageView) findViewById7.findViewById(com.itsmagic.engine2.R.id.imageView7);
                                                                                                        C2416x c2416x = new C2416x(bVar, context, textView5);
                                                                                                        ViewOnLongClickListenerC2417y viewOnLongClickListenerC2417y = new ViewOnLongClickListenerC2417y(bVar, context, textView5);
                                                                                                        Component component = bVar.f2069d.get();
                                                                                                        if (textView5 != null) {
                                                                                                            textView5.setOnClickListener(c2416x);
                                                                                                            textView5.setOnLongClickListener(viewOnLongClickListenerC2417y);
                                                                                                            if (component != null) {
                                                                                                                try {
                                                                                                                    textView5.setText(component.f79250n.getName() + " (" + component.getTitle() + ")");
                                                                                                                } catch (Exception e21) {
                                                                                                                    e21.printStackTrace();
                                                                                                                }
                                                                                                            } else {
                                                                                                                textView5.setText("");
                                                                                                            }
                                                                                                        }
                                                                                                        imageView6.setOnClickListener(new C2418z());
                                                                                                        imageView6.setOnLongClickListener(viewOnLongClickListenerC2417y);
                                                                                                        bVar.f2076k = new A(bVar, textView5, c2416x, viewOnLongClickListenerC2417y);
                                                                                                    }
                                                                                                    if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                                                    }
                                                                                                    linearLayout.addView(view);
                                                                                                }
                                                                                                if (bVar.f2067b != null) {
                                                                                                    ImageView imageView7 = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.trashButton);
                                                                                                    if (imageView7 != null && bVar.f2071f != null) {
                                                                                                        imageView7.setOnClickListener(new C2401i(bVar, i10));
                                                                                                    }
                                                                                                    View findViewById8 = view.findViewById(com.itsmagic.engine2.R.id.input);
                                                                                                    TextView textView6 = (TextView) findViewById8.findViewById(com.itsmagic.engine2.R.id.tv);
                                                                                                    ImageView imageView8 = (ImageView) findViewById8.findViewById(com.itsmagic.engine2.R.id.imageView7);
                                                                                                    C2402j c2402j = new C2402j(bVar, textView6, context);
                                                                                                    ViewOnLongClickListenerC2404l viewOnLongClickListenerC2404l = new ViewOnLongClickListenerC2404l(context, bVar, textView6);
                                                                                                    String str12 = bVar.f2067b.get().str_value;
                                                                                                    if (str12 != null) {
                                                                                                        str7 = str12;
                                                                                                    }
                                                                                                    if (str7.contains("/")) {
                                                                                                        str7 = str7.substring(str7.lastIndexOf("/") + 1);
                                                                                                    }
                                                                                                    if (textView6 != null) {
                                                                                                        textView6.setOnClickListener(c2402j);
                                                                                                        textView6.setOnLongClickListener(viewOnLongClickListenerC2404l);
                                                                                                        textView6.setText(str7);
                                                                                                    }
                                                                                                    imageView8.setOnClickListener(new C2405m(context, bVar, textView6));
                                                                                                    imageView8.setOnLongClickListener(viewOnLongClickListenerC2404l);
                                                                                                    bVar.f2076k = new C2406n(bVar, textView6);
                                                                                                }
                                                                                                if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                                                }
                                                                                                linearLayout.addView(view);
                                                                                            }
                                                                                        }
                                                                                        if (bVar.f2067b != null) {
                                                                                            ImageView imageView9 = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.trashButton);
                                                                                            if (imageView9 != null && bVar.f2071f != null) {
                                                                                                imageView9.setOnClickListener(new C2396c(bVar, i10));
                                                                                            }
                                                                                            View findViewById9 = view.findViewById(com.itsmagic.engine2.R.id.input);
                                                                                            if (bVar.f2079n == b.a.SLPassword) {
                                                                                                com.itsmagic.engine.Activities.Editor.Utils.F.e(F.a.Password, findViewById9);
                                                                                            } else {
                                                                                                com.itsmagic.engine.Activities.Editor.Utils.F.e(F.a.MultiLineText, findViewById9);
                                                                                            }
                                                                                            com.itsmagic.engine.Activities.Editor.Utils.F.d(bVar.f2067b.get().str_value, findViewById9);
                                                                                            bVar.f2076k = new C2397d(bVar, findViewById9);
                                                                                            try {
                                                                                                TextInputEditText c10 = com.itsmagic.engine.Activities.Editor.Utils.F.c(findViewById9);
                                                                                                c10.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                                                                                                    @Override
                                                                                                    public final boolean onEditorAction(TextView textView7, int i16, KeyEvent keyEvent) {
                                                                                                        boolean A10;
                                                                                                        A10 = h.A(b.this, textView7, i16, keyEvent);
                                                                                                        return A10;
                                                                                                    }
                                                                                                });
                                                                                                c10.addTextChangedListener(new C2398e(bVar));
                                                                                            } catch (Exception e22) {
                                                                                                e22.printStackTrace();
                                                                                            }
                                                                                            com.itsmagic.engine.Activities.Editor.Utils.F.c(findViewById9).setOnFocusChangeListener(new ViewOnFocusChangeListenerC2399f(bVar, findViewById9));
                                                                                        }
                                                                                        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                                        }
                                                                                        linearLayout.addView(view);
                                                                                    }
                                                                                    e10.printStackTrace();
                                                                                    return null;
                                                                                }
                                                                                if (bVar.f2067b != null) {
                                                                                    String str13 = bVar.f2077l;
                                                                                    if (str13.endsWith(" ")) {
                                                                                        str13 = str13.substring(0, str13.length() - 1);
                                                                                    }
                                                                                    textView.setText(Tc.b.d(str13));
                                                                                    float f12 = bVar.f2089x;
                                                                                    float f13 = f12 > 0.0f ? f12 * 10000.0f : 1.0E-4f;
                                                                                    try {
                                                                                        f10 = Nc.b.u1(bVar.f2067b.get().str_value);
                                                                                    } catch (Exception e23) {
                                                                                        e23.printStackTrace();
                                                                                    }
                                                                                    E5.f fVar = new E5.f();
                                                                                    RangeSeekBarView rangeSeekBarView2 = (RangeSeekBarView) view.findViewById(com.itsmagic.engine2.R.id.rangeseekbar);
                                                                                    rangeSeekBarView2.setStep((int) (f13 * 10000.0f));
                                                                                    rangeSeekBarView2.setMinValue((int) (bVar.f2087v * 10000.0f));
                                                                                    rangeSeekBarView2.setMaxValue((int) (bVar.f2088w * 10000.0f));
                                                                                    rangeSeekBarView2.setCurrentValue((int) (f10 * 10000.0f));
                                                                                    rangeSeekBarView2.setFillColor(Theme.i(Theme.T.PRIMARY_DARK));
                                                                                    rangeSeekBarView2.setBaseColor(Theme.i(Theme.T.PANEL));
                                                                                    rangeSeekBarView2.setCircleFillColor(Theme.i(Theme.T.PRIMARY));
                                                                                    rangeSeekBarView2.setCircleTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
                                                                                    rangeSeekBarView2.setBarHeight(Nc.b.l0(6.0f, context));
                                                                                    rangeSeekBarView2.setCircleRadius(Nc.b.l0(8.0f, context));
                                                                                    rangeSeekBarView2.setCircleTextSize(Nc.b.p1(8, context));
                                                                                    rangeSeekBarView2.setOnRangeSeekBarViewChangeListener(new e0(10000.0f, bVar, fVar));
                                                                                    fVar.e(bVar, view, textView, context, new f0(bVar, rangeSeekBarView2, 10000.0f));
                                                                                }
                                                                                if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                                }
                                                                                linearLayout.addView(view);
                                                                            }
                                                                            new E5.i().c(bVar, view, textView);
                                                                            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                            }
                                                                            linearLayout.addView(view);
                                                                        }
                                                                        new E5.g().d(bVar, view, textView);
                                                                        if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                        }
                                                                        linearLayout.addView(view);
                                                                    }
                                                                    new E5.c().b(bVar, view, textView, i10);
                                                                    if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                    }
                                                                    linearLayout.addView(view);
                                                                }
                                                                new E5.g().d(bVar, view, textView);
                                                                if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                                }
                                                                linearLayout.addView(view);
                                                            }
                                                            new E5.e().c(bVar, view, textView, context);
                                                            if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null) {
                                                            }
                                                            linearLayout.addView(view);
                                                        }
                                                        return view;
                                                    }
                                                    inflate = eVar.a(context, bVar);
                                                    if (inflate == null) {
                                                        inflate = layoutInflater.inflate(bVar.f2074i, (ViewGroup) null);
                                                    }
                                                    bVar.f2072g.onCreate(inflate, context, bVar);
                                                }
                                            }
                                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_texture, (ViewGroup) null);
                                        }
                                    }
                                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slinputfile, (ViewGroup) null);
                                }
                            }
                            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slinputtext, (ViewGroup) null);
                        }
                    }
                    inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slslider, (ViewGroup) null);
                }
                inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_inputtext, (ViewGroup) null);
            }
            inflate = layoutInflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_slwrap_inputtext, (ViewGroup) null);
        }
        view = inflate;
        if (view != null) {
        }
        return view;
    }

    public static void y(LinearLayout anchor, LayoutInflater inflater, b entry, int positionInAdapter, Context context) {
        if (inflater != null) {
            View inflate = entry.f2079n == b.a.Vector ? inflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_inputvector, (ViewGroup) null) : null;
            if (inflate != null) {
                q(inflate, context);
                TextView textView = (TextView) inflate.findViewById(com.itsmagic.engine2.R.id.tittle);
                if (textView != null) {
                    String str = entry.f2077l;
                    if (str == null) {
                        textView.setVisibility(8);
                    } else if (str.equals("")) {
                        textView.setVisibility(8);
                    } else {
                        textView.setText(Tc.b.d(entry.f2077l));
                    }
                }
                LinearLayout linearLayout = (LinearLayout) inflate.findViewById(com.itsmagic.engine2.R.id.content);
                int i10 = 0;
                while (true) {
                    b[] bVarArr = entry.f2081p;
                    if (i10 >= bVarArr.length) {
                        break;
                    }
                    View x10 = x(linearLayout, inflater, bVarArr[i10], positionInAdapter, false, context);
                    if (x10 != null && entry.f2081p[i10].f2055H) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) x10.getLayoutParams();
                        layoutParams.width = -2;
                        layoutParams.weight = 0.0f;
                        x10.setLayoutParams(layoutParams);
                    }
                    i10++;
                }
                if (com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.i2() == null || entry.f2061N == null) {
                    anchor.addView(inflate);
                    return;
                }
                View inflate2 = inflater.inflate(com.itsmagic.engine2.R.layout.inspector_component_keyframe_btn, (ViewGroup) null);
                q(inflate2, context);
                LinearLayout linearLayout2 = (LinearLayout) inflate2.findViewById(com.itsmagic.engine2.R.id.keyframeContent);
                FrameLayout frameLayout = (FrameLayout) inflate2.findViewById(com.itsmagic.engine2.R.id.keyframeBtn);
                frameLayout.setOnClickListener(new c0(entry));
                linearLayout2.addView(inflate);
                anchor.addView(inflate2);
                N7.c.I().a(new v3.k(new d0(entry, frameLayout, context), W7.b.f27306f.f2458a.f4956s, c.g.Editor));
                int v10 = v(entry.f2058K, entry.f2059L, entry.f2060M);
                if (v10 == 0 || v10 == -1) {
                    frameLayout.setBackground(ContextCompat.getDrawable(context, com.itsmagic.engine2.R.drawable.editor3d_v2_input_text_background));
                } else {
                    frameLayout.setBackground(ContextCompat.getDrawable(context, v10));
                }
                q(frameLayout, context);
            }
        }
    }

    public static void z(LinearLayout linearLayout, b bVar, n nVar, int i10, CompoundButton compoundButton, boolean z10) {
        try {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
            if (z10) {
                layoutParams.height = -2;
            } else {
                layoutParams.height = 0;
            }
            if (bVar.f2064Q.b() != null) {
                bVar.f2064Q.b().i(z10);
                if (z10 != bVar.f2064Q.f2045r && nVar != null) {
                    nVar.refresh(i10);
                }
            }
            linearLayout.setLayoutParams(layoutParams);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
