package com.itsmagic.engine.Engines.Engine.NoCode;

import C5.b;
import F5.c;
import Ic.C2633l;
import JAVARuntime.InputDialog;
import N9.a;
import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.ardor3d.util.export.xml.XMLExporter;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeFileExecutor;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import ec.EnumC13053a;
import ga.C13305a;
import ga.C13306b;
import ga.C13308d;
import ga.G;
import ga.H;
import java.util.List;
import org.eclipse.jdt.core.Signature;

public final class a {

    public class C1336a implements D5.d {

        public final NoCodeStoredValue f79147a;

        public final NoCodeData f79148b;

        public final H f79149c;

        public final NoCodeData.q f79150d;

        public C1336a(final NoCodeStoredValue val$value, final NoCodeData val$data, final H val$type, final NoCodeData.q val$listener) {
            this.f79147a = val$value;
            this.f79148b = val$data;
            this.f79149c = val$type;
            this.f79150d = val$listener;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public Component get() {
            Object w10 = this.f79147a.w(this.f79148b.h0(), this.f79148b.i0());
            if (w10 instanceof JAVARuntime.Component) {
                return ((JAVARuntime.Component) w10).getEngineComponent();
            }
            return null;
        }

        @Override
        public GameObject getAllowObject() {
            return null;
        }

        @Override
        public String getExtraTittle() {
            return "";
        }

        @Override
        public String getTittle() {
            return C13305a.d(this.f79149c);
        }

        @Override
        public boolean match(Component component) {
            return component != null && C13308d.s(this.f79149c, component.toJAVARuntime());
        }

        @Override
        public void set(Component component) {
            this.f79147a.f(component != null ? component.toJAVARuntime() : null, this.f79148b.h0(), this.f79148b.i0());
            a.v(this.f79148b, this.f79150d);
        }
    }

    public class b implements D5.h {

        public final NoCodeStoredValue f79151a;

        public final NoCodeData f79152b;

        public final NoCodeData.q f79153c;

        public b(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79151a = val$value;
            this.f79152b = val$data;
            this.f79153c = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f79151a.file;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f79151a.file = variable.d();
                a.v(this.f79152b, this.f79153c);
            }
        }
    }

    public class c implements D5.h {

        public final NoCodeStoredValue f79154a;

        public final NoCodeData f79155b;

        public final NoCodeData.q f79156c;

        public c(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79154a = val$value;
            this.f79155b = val$data;
            this.f79156c = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f79154a.file;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f79154a.file = variable.d();
                this.f79154a.f79031a = null;
                a.v(this.f79155b, this.f79156c);
            }
        }
    }

    public class d implements D5.h {

        public final NoCodeStoredValue f79157a;

        public final NoCodeData f79158b;

        public final NoCodeData.q f79159c;

        public d(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79157a = val$value;
            this.f79158b = val$data;
            this.f79159c = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f79157a.file;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f79157a.file = variable.d();
                this.f79157a.f79031a = null;
                a.v(this.f79158b, this.f79159c);
            }
        }
    }

    public class e implements D5.h {

        public final NoCodeStoredValue f79160a;

        public final NoCodeData f79161b;

        public final NoCodeData.q f79162c;

        public e(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79160a = val$value;
            this.f79161b = val$data;
            this.f79162c = val$listener;
        }

        @Override
        public Variable get() {
            ColorINT colorINT = this.f79160a.color;
            return new Variable("", colorINT != null ? colorINT.clone() : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f));
        }

        @Override
        public void set(Variable variable) {
            ColorINT colorINT;
            if (variable == null || (colorINT = variable.color_value) == null) {
                return;
            }
            this.f79160a.color.K(colorINT);
            a.v(this.f79161b, this.f79162c);
        }
    }

    public class f implements a.b {

        public final NoCodeData f79163a;

        public final NoCodeData.q f79164b;

        public f(final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79163a = val$data;
            this.f79164b = val$listener;
        }

        @Override
        public void a() {
            a.v(this.f79163a, this.f79164b);
        }
    }

    public class g implements D5.h {

        public final int f79165a;

        public final Vector2 f79166b;

        public final NoCodeData f79167c;

        public final NoCodeData.q f79168d;

        public g(final int val$component, final Vector2 val$vector, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79165a = val$component;
            this.f79166b = val$vector;
            this.f79167c = val$data;
            this.f79168d = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f79165a == 0 ? this.f79166b.f79838x : this.f79166b.f79839y);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = this.f79165a;
                if (i10 == 0) {
                    this.f79166b.f79838x = variable.float_value;
                }
                if (i10 == 1) {
                    this.f79166b.f79839y = variable.float_value;
                }
                a.v(this.f79167c, this.f79168d);
            }
        }
    }

    public class h implements D5.h {

        public final int f79169a;

        public final Vector3 f79170b;

        public final NoCodeData f79171c;

        public final NoCodeData.q f79172d;

        public h(final int val$component, final Vector3 val$vector, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79169a = val$component;
            this.f79170b = val$vector;
            this.f79171c = val$data;
            this.f79172d = val$listener;
        }

        @Override
        public Variable get() {
            int i10 = this.f79169a;
            return i10 == 0 ? new Variable("", this.f79170b.getX()) : i10 == 1 ? new Variable("", this.f79170b.getY()) : new Variable("", this.f79170b.getZ());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                if (this.f79169a == 0) {
                    this.f79170b.setX(variable.float_value);
                }
                if (this.f79169a == 1) {
                    this.f79170b.setY(variable.float_value);
                }
                if (this.f79169a == 2) {
                    this.f79170b.setZ(variable.float_value);
                }
                a.v(this.f79171c, this.f79172d);
            }
        }
    }

    public class i implements D5.h {

        public final int f79173a;

        public final Vector4 f79174b;

        public final NoCodeData f79175c;

        public final NoCodeData.q f79176d;

        public i(final int val$component, final Vector4 val$vector, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79173a = val$component;
            this.f79174b = val$vector;
            this.f79175c = val$data;
            this.f79176d = val$listener;
        }

        @Override
        public Variable get() {
            int i10 = this.f79173a;
            return i10 == 0 ? new Variable("", this.f79174b.getX()) : i10 == 1 ? new Variable("", this.f79174b.getY()) : i10 == 2 ? new Variable("", this.f79174b.getZ()) : new Variable("", this.f79174b.f());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                if (this.f79173a == 0) {
                    this.f79174b.n(variable.float_value);
                }
                if (this.f79173a == 1) {
                    this.f79174b.o(variable.float_value);
                }
                if (this.f79173a == 2) {
                    this.f79174b.p(variable.float_value);
                }
                if (this.f79173a == 3) {
                    this.f79174b.m(variable.float_value);
                }
                a.v(this.f79175c, this.f79176d);
            }
        }
    }

    public class j implements D5.h {

        public final NoCodeStoredValue f79177a;

        public final NoCodeData f79178b;

        public final NoCodeData.q f79179c;

        public j(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79177a = val$value;
            this.f79178b = val$data;
            this.f79179c = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f79177a.listItems.size() + "");
        }

        @Override
        public void set(Variable variable) {
            int max = variable != null ? Math.max(0, variable.int_value) : 0;
            while (this.f79177a.listItems.size() < max) {
                NoCodeStoredValue noCodeStoredValue = this.f79177a;
                noCodeStoredValue.listItems.add(noCodeStoredValue.h());
            }
            while (this.f79177a.listItems.size() > max) {
                this.f79177a.listItems.remove(r3.size() - 1);
            }
            a.v(this.f79178b, this.f79179c);
        }
    }

    public class k extends c.n0<EnumC13053a> {

        public final NoCodeStoredValue f79180a;

        public final NoCodeData f79181b;

        public final NoCodeData.q f79182c;

        public k(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79180a = val$value;
            this.f79181b = val$data;
            this.f79182c = val$listener;
        }

        @Override
        public void a() {
            a.v(this.f79181b, this.f79182c);
        }

        @Override
        public void set(EnumC13053a selected) {
            NoCodeStoredValue noCodeStoredValue = this.f79180a;
            if (selected == null) {
                selected = EnumC13053a.OPAQUE;
            }
            noCodeStoredValue.text = selected.name();
        }
    }

    public static class l {

        public static final int[] f79183a;

        static {
            int[] iArr = new int[H.values().length];
            f79183a = iArr;
            try {
                iArr[H.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79183a[H.BIG_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79183a[H.NUMBER01.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79183a[H.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f79183a[H.TEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f79183a[H.FLOAT2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f79183a[H.FLOAT3.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f79183a[H.DIRECTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f79183a[H.FLOAT4.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f79183a[H.QUATERNION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f79183a[H.COLOR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f79183a[H.GAME_OBJECT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f79183a[H.MATERIAL.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f79183a[H.FILE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f79183a[H.PROJECT_FILE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f79183a[H.OBJECT_FILE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f79183a[H.WORLD_FILE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f79183a[H.SOUND_FILE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f79183a[H.TEXTURE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f79183a[H.CUBEMAP.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f79183a[H.COLOR_GRADIENT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f79183a[H.BLENDING_MODE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f79183a[H.UV_SOURCE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f79183a[H.INPUT_DIALOG_TYPE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f79183a[H.POPUP_DIALOG_TYPE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
        }
    }

    public class m extends c.n0<cc.e> {

        public final NoCodeStoredValue f79184a;

        public final NoCodeData f79185b;

        public final NoCodeData.q f79186c;

        public m(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79184a = val$value;
            this.f79185b = val$data;
            this.f79186c = val$listener;
        }

        @Override
        public void a() {
            a.v(this.f79185b, this.f79186c);
        }

        @Override
        public void set(cc.e selected) {
            NoCodeStoredValue noCodeStoredValue = this.f79184a;
            if (selected == null) {
                selected = cc.e.Vertex;
            }
            noCodeStoredValue.text = selected.name();
        }
    }

    public class n extends c.n0<InputDialog.Type> {

        public final NoCodeStoredValue f79187a;

        public final NoCodeData f79188b;

        public final NoCodeData.q f79189c;

        public n(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79187a = val$value;
            this.f79188b = val$data;
            this.f79189c = val$listener;
        }

        @Override
        public void a() {
            a.v(this.f79188b, this.f79189c);
        }

        @Override
        public void set(InputDialog.Type selected) {
            NoCodeStoredValue noCodeStoredValue = this.f79187a;
            if (selected == null) {
                selected = InputDialog.Type.String;
            }
            noCodeStoredValue.text = selected.name();
        }
    }

    public class o extends c.n0<G> {

        public final NoCodeStoredValue f79190a;

        public final NoCodeData f79191b;

        public final NoCodeData.q f79192c;

        public o(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79190a = val$value;
            this.f79191b = val$data;
            this.f79192c = val$listener;
        }

        @Override
        public void a() {
            a.v(this.f79191b, this.f79192c);
        }

        @Override
        public void set(G selected) {
            NoCodeStoredValue noCodeStoredValue = this.f79190a;
            if (selected == null) {
                selected = G.SUCCESS;
            }
            noCodeStoredValue.text = selected.name();
        }
    }

    public class p implements D5.h {

        public final NoCodeStoredValue f79193a;

        public final NoCodeData f79194b;

        public final NoCodeData.q f79195c;

        public p(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79193a = val$value;
            this.f79194b = val$data;
            this.f79195c = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", "" + this.f79193a.number);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f79193a.number = variable.float_value;
                a.v(this.f79194b, this.f79195c);
            }
        }
    }

    public class q implements D5.h {

        public final NoCodeStoredValue f79196a;

        public final NoCodeData f79197b;

        public final NoCodeData.q f79198c;

        public q(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79196a = val$value;
            this.f79197b = val$data;
            this.f79198c = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f79196a.text;
            if (str == null) {
                str = C13306b.f88185c.h();
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            String str;
            if (variable != null) {
                String str2 = variable.str_value;
                str = (str2 == null || str2.isEmpty()) ? String.valueOf(variable.double_value) : variable.str_value;
            } else {
                str = "";
            }
            this.f79196a.text = ga.m.M(str).h();
            a.v(this.f79197b, this.f79198c);
        }
    }

    public class r implements D5.h {

        public final NoCodeStoredValue f79199a;

        public final NoCodeData f79200b;

        public final NoCodeData.q f79201c;

        public r(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79199a = val$value;
            this.f79200b = val$data;
            this.f79201c = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", "" + this.f79199a.booleanValue);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f79199a.booleanValue = variable.booolean_value.booleanValue();
                a.v(this.f79200b, this.f79201c);
            }
        }
    }

    public class s implements D5.h {

        public final NoCodeStoredValue f79202a;

        public final NoCodeData f79203b;

        public final NoCodeData.q f79204c;

        public s(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79202a = val$value;
            this.f79203b = val$data;
            this.f79204c = val$listener;
        }

        @Override
        public Variable get() {
            String str = this.f79202a.text;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            this.f79202a.text = variable != null ? variable.d() : "";
            a.v(this.f79203b, this.f79204c);
        }
    }

    public class t implements D5.k {

        public final NoCodeStoredValue f79205a;

        public final NoCodeData f79206b;

        public final NoCodeData.q f79207c;

        public t(final NoCodeStoredValue val$value, final NoCodeData val$data, final NoCodeData.q val$listener) {
            this.f79205a = val$value;
            this.f79206b = val$data;
            this.f79207c = val$listener;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return C13308d.A(this.f79205a.w(this.f79206b.h0(), this.f79206b.i0()));
        }

        @Override
        public String getExtraTittle() {
            return " (Object)";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            this.f79205a.f(gameObject, this.f79206b.h0(), this.f79206b.i0());
            a.v(this.f79206b, this.f79207c);
        }
    }

    public static void b(List<C5.b> target, String title, NoCodeStoredValue value, NoCodeData data, Context context, NoCodeData.q listener) {
        if (target == null || value == null || data == null) {
            return;
        }
        value.e();
        H h10 = value.type;
        if (C13305a.c(h10)) {
            if (h10 == H.LIST) {
                target.add(l(title, value, data, context, listener));
                return;
            }
            if (C13308d.n(h10)) {
                target.add(g(title, value, h10, data, listener));
                return;
            }
            switch (l.f79183a[h10.ordinal()]) {
                case 1:
                    target.add(m(title, value, data, listener, b.a.SLFloat));
                    return;
                case 2:
                    target.add(d(title, value, data, listener));
                    return;
                case 3:
                    target.add(m(title, value, data, listener, b.a.SLFloat01));
                    return;
                case 4:
                    target.add(e(title, value, data, listener));
                    return;
                case 5:
                    target.add(n(title, value, data, listener));
                    return;
                case 6:
                    target.add(q(title, value, data, listener));
                    return;
                case 7:
                case 8:
                    target.add(s(title, value, data, listener));
                    return;
                case 9:
                case 10:
                    target.add(u(title, value, data, listener));
                    return;
                case 11:
                    target.add(f(title, value, data, listener));
                    return;
                case 12:
                    target.add(j(title, value, data, listener));
                    return;
                case 13:
                    target.add(i(title, value, data, listener, ".mat"));
                    return;
                case 14:
                case 15:
                    target.add(i(title, value, data, listener, null));
                    return;
                case 16:
                    target.add(i(title, value, data, listener, ".go"));
                    return;
                case 17:
                    target.add(i(title, value, data, listener, ".world"));
                    return;
                case 18:
                    target.add(i(title, value, data, listener, C2633l.d(".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv", ".imvs", ".sound")));
                    return;
                case 19:
                    target.add(o(title, value, data, listener));
                    return;
                case 20:
                    target.add(h(title, value, data, listener));
                    return;
                case 21:
                    target.add(k(title, value, data, context, listener));
                    return;
                case 22:
                    target.add(F5.c.j(title, EnumC13053a.class, ga.m.N(value.text), new k(value, data, listener), b.a.SLDropdownWrap));
                    return;
                case 23:
                    target.add(F5.c.j(title, cc.e.class, ga.m.k0(value.text), new m(value, data, listener), b.a.SLDropdownWrap));
                    return;
                case 24:
                    target.add(F5.c.j(title, InputDialog.Type.class, ga.m.Y(value.text), new n(value, data, listener), b.a.SLDropdownWrap));
                    return;
                case 25:
                    target.add(F5.c.j(title, G.class, ga.m.d0(value.text), new o(value, data, listener), b.a.SLDropdownWrap));
                    return;
                default:
                    return;
            }
        }
    }

    public static List<C5.b> c(NoCodeData data, Context context, NoCodeData.q listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (data == null) {
            return steppedArrayList;
        }
        data.H();
        for (NoCodeAttribute noCodeAttribute : data.attributes) {
            if (noCodeAttribute != null && noCodeAttribute.visible && C13305a.c(noCodeAttribute.type)) {
                b(steppedArrayList, noCodeAttribute.name, noCodeAttribute, data, context, listener);
            }
        }
        return steppedArrayList;
    }

    public static C5.b d(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new q(value, data, listener), title, b.a.SLString);
    }

    public static C5.b e(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new r(value, data, listener), title, b.a.SLBoolean);
    }

    public static C5.b f(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new e(value, data, listener), title, b.a.Color);
    }

    public static C5.b g(String title, NoCodeStoredValue value, H type, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new C1336a(value, data, type, listener), title);
    }

    public static C5.b h(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new d(value, data, listener), title, b.a.CubemapOrGallery);
    }

    public static C5.b i(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener, String formats) {
        return new C5.b(new b(value, data, listener), title, b.a.InputFile, formats);
    }

    public static C5.b j(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new t(value, data, listener), title);
    }

    public static C5.b k(String title, NoCodeStoredValue value, NoCodeData data, Context context, NoCodeData.q listener) {
        return N9.a.b(title, value.gradient, context, new f(data, listener));
    }

    public static C5.b l(String title, NoCodeStoredValue value, NoCodeData data, Context context, NoCodeData.q listener) {
        value.e();
        C5.b bVar = new C5.b(new C5.a(title, true));
        C5.a aVar = bVar.f2064Q;
        aVar.f2043p = R.color.interface_panel;
        aVar.f2029b = "L (" + value.listItems.size() + ")";
        bVar.f2064Q.f2042o.add(new C5.b(new j(value, data, listener), XMLExporter.ATTRIBUTE_SIZE, b.a.SLInt));
        for (int i10 = 0; i10 < value.listItems.size(); i10++) {
            NoCodeStoredValue noCodeStoredValue = value.listItems.get(i10);
            if (noCodeStoredValue == null) {
                noCodeStoredValue = value.h();
                value.listItems.set(i10, noCodeStoredValue);
            }
            NoCodeStoredValue noCodeStoredValue2 = noCodeStoredValue;
            noCodeStoredValue2.type = value.g();
            b(bVar.f2064Q.f2042o, "Element " + i10, noCodeStoredValue2, data, context, listener);
        }
        return bVar;
    }

    public static C5.b m(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener, b.a type) {
        return new C5.b(new p(value, data, listener), title, type);
    }

    public static C5.b n(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new s(value, data, listener), title, b.a.SLString);
    }

    public static C5.b o(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new c(value, data, listener), title, b.a.Texture);
    }

    public static C5.b p(String axis, Vector2 vector, int component, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new g(component, vector, data, listener), axis, b.a.SLFloat);
    }

    public static C5.b q(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[2]);
        bVar.f2081p[0] = p("X", value.vector2, 0, data, listener);
        bVar.f2081p[1] = p("Y", value.vector2, 1, data, listener);
        return bVar;
    }

    public static C5.b r(String axis, Vector3 vector, int component, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new h(component, vector, data, listener), axis, b.a.SLFloat);
    }

    public static C5.b s(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[3]);
        bVar.f2081p[0] = r("X", value.vector3, 0, data, listener);
        bVar.f2081p[1] = r("Y", value.vector3, 1, data, listener);
        bVar.f2081p[2] = r(Signature.SIG_BOOLEAN, value.vector3, 2, data, listener);
        return bVar;
    }

    public static C5.b t(String axis, Vector4 vector, int component, NoCodeData data, NoCodeData.q listener) {
        return new C5.b(new i(component, vector, data, listener), axis, b.a.SLFloat);
    }

    public static C5.b u(String title, NoCodeStoredValue value, NoCodeData data, NoCodeData.q listener) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[4]);
        bVar.f2081p[0] = t("X", value.vector4, 0, data, listener);
        bVar.f2081p[1] = t("Y", value.vector4, 1, data, listener);
        bVar.f2081p[2] = t(Signature.SIG_BOOLEAN, value.vector4, 2, data, listener);
        bVar.f2081p[3] = t(ExifInterface.LONGITUDE_WEST, value.vector4, 3, data, listener);
        return bVar;
    }

    public static void v(NoCodeData data, NoCodeData.q listener) {
        if (data != null) {
            data.y0();
            if (data.i0() instanceof NoCodeFileExecutor) {
                ((NoCodeFileExecutor) data.i0()).storeRuntimeAttributeValues();
            }
        }
        if (listener != null) {
            listener.a();
        }
    }
}
