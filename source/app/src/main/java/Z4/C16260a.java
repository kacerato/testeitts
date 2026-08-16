package z4;

import Ic.C2630i;
import Z6.c;
import Z6.h;
import Z6.i;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.io.File;
import java.util.List;
import q7.C15045a;
import r4.C15147a;
import z8.C16273a;

public class C16260a extends RecyclerView.Adapter<f> {

    public List<A4.c> f130625a;

    public final LayoutInflater f130626b;

    public final e f130627c;

    public final Context f130628d;

    public class C2231a extends AbstractViewOnClickListenerC12733a {

        public final A4.b f130629b;

        public final A4.c f130630c;

        public C2231a(final A4.b val$backup, final A4.c val$element) {
            this.f130629b = val$backup;
            this.f130630c = val$element;
        }

        @Override
        public void click(View v10) {
            C16260a.this.r(v10, this.f130629b, this.f130630c);
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final A4.b f130632b;

        public final A4.c f130633c;

        public b(final A4.b val$backup, final A4.c val$element) {
            this.f130632b = val$backup;
            this.f130633c = val$element;
        }

        @Override
        public void click(View v10) {
            C16260a.this.r(v10, this.f130632b, this.f130633c);
        }
    }

    public class c extends SteppedArrayList<C12908b> {

        public final View f130635b;

        public final A4.b f130636c;

        public final A4.c f130637d;

        public class C2232a implements dd.d {

            public class C2233a implements c.i {

                public class C2234a implements C15045a.d {

                    public final c.g f130641a;

                    public class RunnableC2235a implements Runnable {

                        public final C15045a f130643b;

                        public class RunnableC2236a implements Runnable {

                            public final boolean f130645b;

                            public RunnableC2236a(final boolean val$finalUnziped) {
                                this.f130645b = val$finalUnziped;
                            }

                            @Override
                            public void run() {
                                if (this.f130645b) {
                                    RunnableC2235a.this.f130643b.p1();
                                    h.w1(c.this.f130635b, C15147a.e.Below, "Nice!", "Backup restored successfully.", new h.g());
                                } else {
                                    RunnableC2235a.this.f130643b.p1();
                                    i.w1(c.this.f130635b, C15147a.e.Below, "Ops!", "Something went wrong.", new i.g());
                                }
                            }
                        }

                        public RunnableC2235a(final C15045a val$loadingBar) {
                            this.f130643b = val$loadingBar;
                        }

                        @Override
                        public void run() {
                            boolean z10;
                            try {
                                z10 = nd.e.n(c.this.f130636c.a().getAbsolutePath(), W7.b.f27306f.f2458a.n(C16260a.this.f130628d));
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                TextOutputActivity.h(e10);
                                z10 = false;
                            }
                            N7.c.j0(new RunnableC2236a(z10));
                        }
                    }

                    public C2234a(final c.g val$dialogC) {
                        this.f130641a = val$dialogC;
                    }

                    @Override
                    public void a(C15045a loadingBar) {
                        this.f130641a.dismiss();
                        O9.b.d(new RunnableC2235a(loadingBar));
                    }
                }

                public C2233a() {
                }

                @Override
                public void a(c.g dialogC) {
                    C15045a.u1(true, new C2234a(dialogC));
                }

                @Override
                public void b(c.g dialog) {
                    dialog.dismiss();
                }
            }

            public C2232a() {
            }

            @Override
            public void onSelected(View v10) {
                Z6.c.w1(c.this.f130635b, C15147a.e.Below, Lang.l(Lang.T.RESTORE_THIS_BACKUP), Lang.l(Lang.T.IF_THE_PROJECT_EXISTS_WILL_BE_OVERRIDE), new C2233a());
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                C2630i.t(new File(W7.b.f27306f.f2458a.e(C16260a.this.f130628d) + "/" + c.this.f130636c.b()), "Export backup", "zip");
            }
        }

        public class C2237c implements dd.d {

            public class C2238a implements z8.b {
                public C2238a() {
                }

                @Override
                public void a() {
                }

                @Override
                public void b() {
                    C16260a.this.f130627c.a(c.this.f130637d);
                }

                @Override
                public void c() {
                }
            }

            public C2237c() {
            }

            @Override
            public void onSelected(View v10) {
                C16273a.b(C16260a.this.f130628d, c.this.f130636c.a().getAbsolutePath(), new C2238a());
            }
        }

        public c(final View val$view, final A4.b val$pack, final A4.c val$element) {
            this.f130635b = val$view;
            this.f130636c = val$pack;
            this.f130637d = val$element;
            add(new C12908b(Lang.l(Lang.T.RESTORE), new C2232a()));
            add(new C12908b(Lang.l(Lang.T.PROJECTS_MENU_EXPORT_BACKUP), new b()));
            add(new C12908b(Lang.l(Lang.T.DELETE), new C2237c()));
        }
    }

    public static class d extends f {

        public final TextView f130650a;

        public final ImageView f130651b;

        public final TextView f130652c;

        public final TextView f130653d;

        public final View f130654e;

        public d(View v10) {
            super(v10);
            this.f130650a = (TextView) v10.findViewById(R.id.tittle);
            this.f130651b = (ImageView) v10.findViewById(R.id.thumb);
            this.f130652c = (TextView) v10.findViewById(R.id.date);
            this.f130653d = (TextView) v10.findViewById(R.id.desc);
            this.f130654e = v10.findViewById(R.id.menu);
        }
    }

    public interface e {
        void a(A4.c element);
    }

    public static class f extends RecyclerView.ViewHolder {
        public f(View v10) {
            super(v10);
        }
    }

    public C16260a(Context context, e listener) {
        listener.getClass();
        context.getClass();
        this.f130628d = context;
        this.f130625a = new SteppedArrayList();
        this.f130626b = LayoutInflater.from(context);
        this.f130627c = listener;
    }

    @Override
    public int getItemCount() {
        return this.f130625a.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f130625a.get(position) instanceof A4.a ? 1 : 0;
    }

    public void j(A4.c elements) {
        int size = this.f130625a.size();
        this.f130625a.add(elements);
        notifyItemInserted(size);
    }

    public void k(List<A4.c> elements) {
        int size = this.f130625a.size();
        this.f130625a.addAll(elements);
        notifyItemRangeInserted(size, elements.size());
    }

    public A4.c l(int i10) {
        return this.f130625a.get(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ac  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBindViewHolder(@NonNull f baseHolder, final int initialPosition) {
        String str;
        long length;
        A4.c cVar = this.f130625a.get(initialPosition);
        if (!(cVar instanceof A4.b)) {
            throw new RuntimeException("Invalid holder " + baseHolder.getClass().getName());
        }
        A4.b bVar = (A4.b) cVar;
        d dVar = (d) baseHolder;
        String b10 = bVar.b();
        if (bVar.b().contains(" ")) {
            String[] split = bVar.b().split(" ");
            if (split.length > 2) {
                String w10 = Tc.b.w(split[split.length - 2] + " " + split[split.length - 1], true);
                String replace = bVar.b().replace(" " + w10, "");
                str = w10;
                b10 = replace;
                dVar.f130650a.setText(b10.replace(".itsmbp", ""));
                dVar.itemView.setOnClickListener(new C2231a(bVar, cVar));
                Vc.e.V(dVar.f130651b, R.drawable.backup_icon, this.f130628d);
                dVar.f130652c.setText(str);
                length = bVar.a().length();
                if (length != 0) {
                    dVar.f130653d.setText("...");
                } else {
                    dVar.f130653d.setText(Tc.b.s(length));
                }
                dVar.f130654e.setOnClickListener(new b(bVar, cVar));
            }
        }
        str = "";
        dVar.f130650a.setText(b10.replace(".itsmbp", ""));
        dVar.itemView.setOnClickListener(new C2231a(bVar, cVar));
        Vc.e.V(dVar.f130651b, R.drawable.backup_icon, this.f130628d);
        dVar.f130652c.setText(str);
        length = bVar.a().length();
        if (length != 0) {
        }
        dVar.f130654e.setOnClickListener(new b(bVar, cVar));
    }

    @Override
    @NonNull
    public f onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        if (viewType == 0) {
            return new d(this.f130626b.inflate(R.layout.backup_single_element, viewGroup, false));
        }
        throw new RuntimeException("Invalid type " + viewType);
    }

    public boolean o(A4.c element) {
        int indexOf = this.f130625a.indexOf(element);
        if (indexOf < 0) {
            return false;
        }
        this.f130625a.remove(indexOf);
        notifyItemRemoved(indexOf);
        return true;
    }

    public void p() {
        int size = this.f130625a.size();
        this.f130625a.clear();
        notifyItemRangeRemoved(0, size);
    }

    public void q(List<A4.c> elements) {
        for (A4.c cVar : elements) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f130625a.size()) {
                    break;
                }
                A4.c cVar2 = this.f130625a.get(i10);
                if (cVar2 == cVar) {
                    this.f130625a.remove(cVar2);
                    notifyItemRemoved(i10);
                    break;
                }
                i10++;
            }
        }
    }

    public final void r(View view, A4.b pack, A4.c element) {
        Y6.a.F1(view, C15147a.e.Below, new c(view, pack, element));
    }
}
