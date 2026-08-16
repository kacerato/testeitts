package com.itsmagic.engine.Engines.Engine.ImGUI.Utils;

import C5.b;
import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.Anchor;
import com.itsmagic.engine2.R;
import java.util.LinkedList;
import java.util.List;

public class Anchor {

    @Expose
    public boolean f78231bc;

    @Expose
    public boolean f78232bl;

    @Expose
    public boolean br;

    @Expose
    public boolean f78233cc;

    @Expose
    public boolean f78234cl;

    @Expose
    public boolean cr;

    @Expose
    public boolean f78235tc;

    @Expose
    public boolean f78236tl;

    @Expose
    public boolean tr;

    public class a implements D5.e {

        public final T9.a f78237a;

        public class ViewOnClickListenerC1310a implements View.OnClickListener {

            public final CheckBox f78239b;

            public final CheckBox f78240c;

            public final CheckBox f78241d;

            public final CheckBox f78242e;

            public final CheckBox f78243f;

            public final CheckBox f78244g;

            public final CheckBox f78245h;

            public final CheckBox f78246i;

            public final CheckBox f78247j;

            public ViewOnClickListenerC1310a(final CheckBox val$tl, final CheckBox val$tc, final CheckBox val$tr, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78239b = val$tl;
                this.f78240c = val$tc;
                this.f78241d = val$tr;
                this.f78242e = val$cl;
                this.f78243f = val$cc;
                this.f78244g = val$cr;
                this.f78245h = val$bl;
                this.f78246i = val$bc;
                this.f78247j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78239b.setChecked(true);
                this.f78240c.setChecked(false);
                this.f78241d.setChecked(false);
                this.f78242e.setChecked(false);
                this.f78243f.setChecked(false);
                this.f78244g.setChecked(false);
                this.f78245h.setChecked(false);
                this.f78246i.setChecked(false);
                this.f78247j.setChecked(false);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(true, false, false, false, false, false, false, false, false);
                }
            }
        }

        public class b implements View.OnClickListener {

            public final CheckBox f78249b;

            public final CheckBox f78250c;

            public final CheckBox f78251d;

            public final CheckBox f78252e;

            public final CheckBox f78253f;

            public final CheckBox f78254g;

            public final CheckBox f78255h;

            public final CheckBox f78256i;

            public final CheckBox f78257j;

            public b(final CheckBox val$tl, final CheckBox val$tc, final CheckBox val$tr, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78249b = val$tl;
                this.f78250c = val$tc;
                this.f78251d = val$tr;
                this.f78252e = val$cl;
                this.f78253f = val$cc;
                this.f78254g = val$cr;
                this.f78255h = val$bl;
                this.f78256i = val$bc;
                this.f78257j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78249b.setChecked(false);
                this.f78250c.setChecked(false);
                this.f78251d.setChecked(true);
                this.f78252e.setChecked(false);
                this.f78253f.setChecked(false);
                this.f78254g.setChecked(false);
                this.f78255h.setChecked(false);
                this.f78256i.setChecked(false);
                this.f78257j.setChecked(false);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(false, false, true, false, false, false, false, false, false);
                }
            }
        }

        public class c implements View.OnClickListener {

            public final CheckBox f78259b;

            public final CheckBox f78260c;

            public final CheckBox f78261d;

            public final CheckBox f78262e;

            public final CheckBox f78263f;

            public final CheckBox f78264g;

            public final CheckBox f78265h;

            public final CheckBox f78266i;

            public final CheckBox f78267j;

            public c(final CheckBox val$tl, final CheckBox val$tr, final CheckBox val$tc, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78259b = val$tl;
                this.f78260c = val$tr;
                this.f78261d = val$tc;
                this.f78262e = val$cl;
                this.f78263f = val$cc;
                this.f78264g = val$cr;
                this.f78265h = val$bl;
                this.f78266i = val$bc;
                this.f78267j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78259b.setChecked(false);
                this.f78260c.setChecked(false);
                this.f78261d.setChecked(false);
                this.f78262e.setChecked(false);
                this.f78263f.setChecked(false);
                this.f78264g.setChecked(false);
                this.f78265h.setChecked(true);
                this.f78266i.setChecked(false);
                this.f78267j.setChecked(false);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(false, false, false, false, false, false, true, false, false);
                }
            }
        }

        public class d implements View.OnClickListener {

            public final CheckBox f78269b;

            public final CheckBox f78270c;

            public final CheckBox f78271d;

            public final CheckBox f78272e;

            public final CheckBox f78273f;

            public final CheckBox f78274g;

            public final CheckBox f78275h;

            public final CheckBox f78276i;

            public final CheckBox f78277j;

            public d(final CheckBox val$tl, final CheckBox val$tr, final CheckBox val$tc, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78269b = val$tl;
                this.f78270c = val$tr;
                this.f78271d = val$tc;
                this.f78272e = val$cl;
                this.f78273f = val$cc;
                this.f78274g = val$cr;
                this.f78275h = val$bl;
                this.f78276i = val$bc;
                this.f78277j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78269b.setChecked(false);
                this.f78270c.setChecked(false);
                this.f78271d.setChecked(false);
                this.f78272e.setChecked(false);
                this.f78273f.setChecked(false);
                this.f78274g.setChecked(false);
                this.f78275h.setChecked(false);
                this.f78276i.setChecked(false);
                this.f78277j.setChecked(true);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(false, false, false, false, false, false, false, false, true);
                }
            }
        }

        public class e implements View.OnClickListener {

            public final CheckBox f78279b;

            public final CheckBox f78280c;

            public final CheckBox f78281d;

            public final CheckBox f78282e;

            public final CheckBox f78283f;

            public final CheckBox f78284g;

            public final CheckBox f78285h;

            public final CheckBox f78286i;

            public final CheckBox f78287j;

            public e(final CheckBox val$tl, final CheckBox val$tc, final CheckBox val$tr, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78279b = val$tl;
                this.f78280c = val$tc;
                this.f78281d = val$tr;
                this.f78282e = val$cl;
                this.f78283f = val$cc;
                this.f78284g = val$cr;
                this.f78285h = val$bl;
                this.f78286i = val$bc;
                this.f78287j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78279b.setChecked(true);
                this.f78280c.setChecked(false);
                this.f78281d.setChecked(true);
                this.f78282e.setChecked(false);
                this.f78283f.setChecked(false);
                this.f78284g.setChecked(false);
                this.f78285h.setChecked(false);
                this.f78286i.setChecked(false);
                this.f78287j.setChecked(false);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(true, false, false, false, false, false, false, false, false);
                }
            }
        }

        public class f implements View.OnClickListener {

            public final CheckBox f78289b;

            public final CheckBox f78290c;

            public final CheckBox f78291d;

            public final CheckBox f78292e;

            public final CheckBox f78293f;

            public final CheckBox f78294g;

            public final CheckBox f78295h;

            public final CheckBox f78296i;

            public final CheckBox f78297j;

            public f(final CheckBox val$tl, final CheckBox val$tc, final CheckBox val$tr, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78289b = val$tl;
                this.f78290c = val$tc;
                this.f78291d = val$tr;
                this.f78292e = val$cl;
                this.f78293f = val$cc;
                this.f78294g = val$cr;
                this.f78295h = val$bl;
                this.f78296i = val$bc;
                this.f78297j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78289b.setChecked(false);
                this.f78290c.setChecked(false);
                this.f78291d.setChecked(false);
                this.f78292e.setChecked(false);
                this.f78293f.setChecked(false);
                this.f78294g.setChecked(false);
                this.f78295h.setChecked(true);
                this.f78296i.setChecked(false);
                this.f78297j.setChecked(true);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(false, false, false, false, false, false, true, false, true);
                }
            }
        }

        public class g implements View.OnClickListener {

            public final CheckBox f78299b;

            public final CheckBox f78300c;

            public final CheckBox f78301d;

            public final CheckBox f78302e;

            public final CheckBox f78303f;

            public final CheckBox f78304g;

            public final CheckBox f78305h;

            public final CheckBox f78306i;

            public final CheckBox f78307j;

            public g(final CheckBox val$tl, final CheckBox val$tr, final CheckBox val$tc, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78299b = val$tl;
                this.f78300c = val$tr;
                this.f78301d = val$tc;
                this.f78302e = val$cl;
                this.f78303f = val$cc;
                this.f78304g = val$cr;
                this.f78305h = val$bl;
                this.f78306i = val$bc;
                this.f78307j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78299b.setChecked(true);
                this.f78300c.setChecked(false);
                this.f78301d.setChecked(false);
                this.f78302e.setChecked(false);
                this.f78303f.setChecked(false);
                this.f78304g.setChecked(false);
                this.f78305h.setChecked(true);
                this.f78306i.setChecked(false);
                this.f78307j.setChecked(false);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(true, false, false, false, false, false, true, false, false);
                }
            }
        }

        public class h implements View.OnClickListener {

            public final CheckBox f78309b;

            public final CheckBox f78310c;

            public final CheckBox f78311d;

            public final CheckBox f78312e;

            public final CheckBox f78313f;

            public final CheckBox f78314g;

            public final CheckBox f78315h;

            public final CheckBox f78316i;

            public final CheckBox f78317j;

            public h(final CheckBox val$tl, final CheckBox val$tc, final CheckBox val$tr, final CheckBox val$cl, final CheckBox val$cc, final CheckBox val$cr, final CheckBox val$bl, final CheckBox val$bc, final CheckBox val$br) {
                this.f78309b = val$tl;
                this.f78310c = val$tc;
                this.f78311d = val$tr;
                this.f78312e = val$cl;
                this.f78313f = val$cc;
                this.f78314g = val$cr;
                this.f78315h = val$bl;
                this.f78316i = val$bc;
                this.f78317j = val$br;
            }

            @Override
            public void onClick(View view) {
                this.f78309b.setChecked(false);
                this.f78310c.setChecked(false);
                this.f78311d.setChecked(true);
                this.f78312e.setChecked(false);
                this.f78313f.setChecked(false);
                this.f78314g.setChecked(false);
                this.f78315h.setChecked(false);
                this.f78316i.setChecked(false);
                this.f78317j.setChecked(true);
                T9.a aVar = a.this.f78237a;
                if (aVar != null) {
                    aVar.a(false, false, true, false, false, false, false, false, true);
                }
            }
        }

        public a(final T9.a val$listener) {
            this.f78237a = val$listener;
        }

        public static void l(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.f78236tl = z10;
            if (aVar != null) {
                aVar.a(z10, false, false, false, false, false, false, false, false);
            }
        }

        public static void m(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.f78235tc = z10;
            if (aVar != null) {
                aVar.a(false, z10, false, false, false, false, false, false, false);
            }
        }

        public static void n(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.tr = z10;
            if (aVar != null) {
                aVar.a(false, false, z10, false, false, false, false, false, false);
            }
        }

        public static void o(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.f78234cl = z10;
            if (aVar != null) {
                aVar.a(false, false, false, z10, false, false, false, false, false);
            }
        }

        public static void p(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.f78233cc = z10;
            if (aVar != null) {
                aVar.a(false, false, false, false, z10, false, false, false, false);
            }
        }

        public static void q(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.cr = z10;
            if (aVar != null) {
                aVar.a(false, false, false, false, false, z10, false, false, false);
            }
        }

        public static void r(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.f78232bl = z10;
            if (aVar != null) {
                aVar.a(false, false, false, false, false, false, z10, false, false);
            }
        }

        public static void s(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.f78231bc = z10;
            if (aVar != null) {
                aVar.a(false, false, false, false, false, false, false, z10, false);
            }
        }

        public static void t(Anchor anchor, T9.a aVar, CompoundButton compoundButton, boolean z10) {
            anchor.br = z10;
            if (aVar != null) {
                aVar.a(false, false, false, false, false, false, false, false, z10);
            }
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            final Anchor anchor = Anchor.this;
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.f131515tl);
            CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.f131514tc);
            CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.tr);
            CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.f131508cl);
            CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.f131507cc);
            CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.cr);
            CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.f131505bl);
            CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.f131504bc);
            CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.br);
            checkBox.setChecked(anchor.f78236tl);
            checkBox2.setChecked(anchor.f78235tc);
            checkBox3.setChecked(anchor.tr);
            checkBox4.setChecked(anchor.f78234cl);
            checkBox5.setChecked(anchor.f78233cc);
            checkBox6.setChecked(anchor.cr);
            checkBox7.setChecked(anchor.f78232bl);
            checkBox8.setChecked(anchor.f78231bc);
            checkBox9.setChecked(anchor.br);
            final T9.a aVar = this.f78237a;
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.l(Anchor.this, aVar, compoundButton, z10);
                }
            });
            final T9.a aVar2 = this.f78237a;
            checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.m(Anchor.this, aVar2, compoundButton, z10);
                }
            });
            final T9.a aVar3 = this.f78237a;
            checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.n(Anchor.this, aVar3, compoundButton, z10);
                }
            });
            final T9.a aVar4 = this.f78237a;
            checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.o(Anchor.this, aVar4, compoundButton, z10);
                }
            });
            final T9.a aVar5 = this.f78237a;
            checkBox5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.p(Anchor.this, aVar5, compoundButton, z10);
                }
            });
            final T9.a aVar6 = this.f78237a;
            checkBox6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.q(Anchor.this, aVar6, compoundButton, z10);
                }
            });
            final T9.a aVar7 = this.f78237a;
            checkBox7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.r(Anchor.this, aVar7, compoundButton, z10);
                }
            });
            final T9.a aVar8 = this.f78237a;
            checkBox8.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.s(Anchor.this, aVar8, compoundButton, z10);
                }
            });
            final T9.a aVar9 = this.f78237a;
            checkBox9.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                    Anchor.a.t(Anchor.this, aVar9, compoundButton, z10);
                }
            });
            view.findViewById(R.id.fitTopLeft).setOnClickListener(new ViewOnClickListenerC1310a(checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitTopRight).setOnClickListener(new b(checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitBottomLeft).setOnClickListener(new c(checkBox, checkBox3, checkBox2, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitBottomRight).setOnClickListener(new d(checkBox, checkBox3, checkBox2, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitWidth).setOnClickListener(new e(checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitWidthOnBottom).setOnClickListener(new f(checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitHeight).setOnClickListener(new g(checkBox, checkBox3, checkBox2, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
            view.findViewById(R.id.fitHeightOnRight).setOnClickListener(new h(checkBox, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9));
        }
    }

    public Anchor a() {
        Anchor anchor = new Anchor();
        anchor.f78236tl = this.f78236tl;
        anchor.f78235tc = this.f78235tc;
        anchor.tr = this.tr;
        anchor.f78234cl = this.f78234cl;
        anchor.f78233cc = this.f78233cc;
        anchor.cr = this.cr;
        anchor.f78232bl = this.f78232bl;
        anchor.f78231bc = this.f78231bc;
        anchor.br = this.br;
        return anchor;
    }

    public List<b> b(Context context, T9.a listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new b(new a(listener), R.layout.inspector_anchor, (Object) null));
        return linkedList;
    }

    public float c() {
        float f10;
        int i10 = (this.f78236tl || this.f78234cl || this.f78232bl) ? 1 : 0;
        if (this.f78235tc || this.f78233cc || this.f78231bc) {
            i10++;
            f10 = 0.5f;
        } else {
            f10 = 0.0f;
        }
        if (this.tr || this.cr || this.br) {
            f10 += 1.0f;
            i10++;
        }
        if (i10 > 0) {
            return f10 / i10;
        }
        return 0.0f;
    }

    public float d() {
        float f10;
        int i10 = (this.f78236tl || this.f78235tc || this.tr) ? 1 : 0;
        if (this.f78234cl || this.f78233cc || this.cr) {
            i10++;
            f10 = 0.5f;
        } else {
            f10 = 0.0f;
        }
        if (this.f78232bl || this.f78231bc || this.br) {
            f10 += 1.0f;
            i10++;
        }
        if (i10 > 0) {
            return f10 / i10;
        }
        return 0.0f;
    }

    public boolean e() {
        return this.f78231bc;
    }

    public boolean f() {
        return this.f78232bl;
    }

    public boolean g() {
        return this.br;
    }

    public boolean h() {
        return this.f78233cc;
    }

    public boolean i() {
        return this.f78234cl;
    }

    public boolean j() {
        return this.cr;
    }

    public boolean k() {
        return this.f78235tc;
    }

    public boolean l() {
        return this.f78236tl;
    }

    public boolean m() {
        return this.tr;
    }

    public void n(boolean bc2) {
        this.f78231bc = bc2;
    }

    public void o(boolean bl2) {
        this.f78232bl = bl2;
    }

    public void p(boolean br) {
        this.br = br;
    }

    public void q(boolean cc2) {
        this.f78233cc = cc2;
    }

    public void r(boolean cl2) {
        this.f78234cl = cl2;
    }

    public void s(boolean cr) {
        this.cr = cr;
    }

    public void t(boolean tc2) {
        this.f78235tc = tc2;
    }

    public void u(boolean tl2) {
        this.f78236tl = tl2;
    }

    public void v(boolean tr) {
        this.tr = tr;
    }
}
