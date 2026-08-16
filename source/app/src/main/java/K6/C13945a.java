package k6;

import H7.d;
import Ic.C2633l;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.ImportedPackage;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.n;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.b;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.List;
import q7.C15045a;

public class C13945a extends H7.d {

    public e f94951g;

    public class C1836a implements d.c {
        @Override
        public void a(Product product, View anchor) {
        }
    }

    public class b extends d.b {
        public b(int layout) {
            super(layout);
        }

        @Override
        public d.a e(View itemView) {
            return new f(itemView);
        }
    }

    public class c extends d.b {
        public c(int layout) {
            super(layout);
        }

        @Override
        public d.a e(View itemView) {
            return new g(itemView);
        }
    }

    public class d extends d.b {
        public d(int layout) {
            super(layout);
        }

        @Override
        public d.a e(View itemView) {
            return new h(itemView);
        }
    }

    public interface e {
        void b();
    }

    public class f extends d.a {

        public View f94955b;

        public ImageView f94956c;

        public TextView f94957d;

        public class C1837a extends AbstractViewOnClickListenerC12733a {

            public final File f94959b;

            public class C1838a implements b.g {
                public C1838a() {
                }

                @Override
                public void a(GameObject object) {
                    W7.b.f27308h.h(object);
                }

                @Override
                public void b(String t10) {
                }

                @Override
                public void onUpdate() {
                }
            }

            public C1837a(final File val$file) {
                this.f94959b = val$file;
            }

            @Override
            public void click(View view) {
                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(this.f94959b), true, new C1838a());
                C13945a.this.f94951g.b();
            }
        }

        public f(@NonNull View itemView) {
            super(itemView);
            this.f94955b = itemView;
            this.f94956c = (ImageView) itemView.findViewById(R.id.icon);
            this.f94957d = (TextView) itemView.findViewById(R.id.title);
        }

        @Override
        @SuppressLint({"SetTextI18n"})
        public void a(H7.a element, d.c ll2) {
            File e10 = ((j6.b) element).e();
            this.f94957d.setText(e10.getName());
            File file = new File(Tc.b.O(e10.getAbsolutePath()) + ".meta/thumb.png");
            if (file.exists()) {
                Vc.e.F(this.f94956c, file);
            } else {
                try {
                    D7.b.c(e10, this.f94956c);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                Vc.e.U(this.f94956c, R.drawable.cube_v2);
            }
            this.f94955b.setOnClickListener(new C1837a(e10));
        }
    }

    public class g extends d.a {

        public View f94962b;

        public ImageView f94963c;

        public View f94964d;

        public class C1839a extends AbstractViewOnClickListenerC12733a {

            public final Package f94966b;

            public C1839a(final Package val$pack) {
                this.f94966b = val$pack;
            }

            @Override
            public void click(View view) {
                g.this.f(this.f94966b);
            }
        }

        public class b implements g.p {

            public final Package f94968a;

            public final C15045a f94969b;

            public b(final Package val$pack, final C15045a val$loading) {
                this.f94968a = val$pack;
                this.f94969b = val$loading;
            }

            @Override
            public void a(String error) {
                N7.c.v0("Ops:" + error);
                this.f94969b.p1();
            }

            @Override
            public void b() {
                V5.a.p1();
                this.f94969b.p1();
            }

            @Override
            public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, g.p.a updateStep) {
            }

            @Override
            public void e(g.p.a updateStep) {
                if (updateStep == g.p.a.Import) {
                    g.this.d(this.f94968a);
                    this.f94969b.p1();
                }
            }
        }

        public class c implements b.g {
            public c() {
            }

            @Override
            public void a(GameObject object) {
                W7.b.f27308h.h(object);
            }

            @Override
            public void b(String t10) {
            }

            @Override
            public void onUpdate() {
            }
        }

        public g(@NonNull View itemView) {
            super(itemView);
            this.f94962b = itemView;
            this.f94963c = (ImageView) itemView.findViewById(R.id.icon);
            this.f94964d = itemView.findViewById(R.id.free);
        }

        @Override
        @SuppressLint({"SetTextI18n"})
        public void a(H7.a element, d.c ll2) {
            List<String> list;
            Package b10 = element.b();
            String I10 = (b10 == null || (list = b10.images) == null || list.isEmpty()) ? null : T5.b.I(b10, b10.images.get(0));
            if (I10 != null) {
                Vc.e.a0(this.f94963c, I10, R.drawable.package_failedload, R.drawable.package_failedload, C13945a.this.f8291d);
            } else {
                Vc.e.U(this.f94963c, R.drawable.package_failedload);
            }
            this.f94964d.setVisibility(0);
            this.f94962b.setOnClickListener(new C1839a(b10));
        }

        public final void d(Package pack) {
            ImportedPackage l10 = n.n().l(pack.f71742id);
            if (l10 != null) {
                for (int i10 = 0; i10 < l10.i(); i10++) {
                    e(l10.h(i10));
                }
            }
        }

        public final void e(ImportedPackage.SFile file) {
            for (int i10 = 0; i10 < file.e(); i10++) {
                ImportedPackage.SFile d10 = file.d(i10);
                if (C2633l.b(d10.f(), ".go")) {
                    com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.Q(d10.g()), true, new c());
                    return;
                }
                e(d10);
            }
        }

        public final void f(Package pack) {
            if (pack == null) {
                return;
            }
            if (!com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                N7.c.v0("Theres no open project!");
                return;
            }
            try {
                C15045a r12 = C15045a.r1();
                C13945a.this.f94951g.b();
                com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g.U1(pack, new b(pack, r12));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class h extends d.a {
        public h(@NonNull View itemView) {
            super(itemView);
        }

        @Override
        @SuppressLint({"SetTextI18n"})
        public void a(H7.a element, d.c ll2) {
        }
    }

    public C13945a(List<H7.a> elements, Context context, e listener) {
        super(elements, context, new C1836a());
        this.f94951g = listener;
        b bVar = new b(R.layout.prefab_spawner_list_item);
        c cVar = new c(R.layout.embed_marketplace_search_panel_single_product);
        d dVar = new d(R.layout.marketplace_search_product_skeleton);
        this.f8288a.put(0, cVar);
        this.f8288a.put(2, dVar);
        this.f8288a.put(3, bVar);
        this.f8289b.add(cVar);
        this.f8289b.add(dVar);
        this.f8289b.add(bVar);
        for (int i10 = 0; i10 < this.f8289b.size(); i10++) {
            this.f8289b.get(i10).f8296c = i10;
        }
    }

    public void q(List<j6.b> elements) {
        super.h(new SteppedArrayList(elements));
    }
}
