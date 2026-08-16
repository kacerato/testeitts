package P7;

import Ic.C2622a;
import Ic.C2633l;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Share.FileExplorer.Utils.GridAutofitLayoutManager;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2.util.FetchDefaults;
import h7.RunnableC13432c;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;
import w3.C15908b;

public abstract class b {

    public final AtomicBoolean f20844A;

    public boolean f20845B;

    public boolean f20846C;

    public final i f20847D;

    public volatile String f20848E;

    public boolean f20849F;

    public int f20850a;

    public final int f20851b;

    public final int f20852c;

    public final int f20853d;

    public final int f20854e;

    public final int f20855f;

    public final int f20856g;

    public final int f20857h;

    public final ColorINT f20858i;

    public final Context f20859j;

    public final Activity f20860k;

    public final LayoutInflater f20861l;

    public final V7.d f20862m;

    public final V7.c f20863n;

    public volatile String f20864o;

    public volatile File f20865p;

    public View f20866q;

    public View f20867r;

    public View f20868s;

    public GridAutofitLayoutManager f20869t;

    public RecyclerView f20870u;

    public Q7.a f20871v;

    public ScaleGestureDetector f20872w;

    public final List<RecyclerView.OnScrollListener> f20873x;

    public final AtomicBoolean f20874y;

    public final AtomicBoolean f20875z;

    public class a implements View.OnLongClickListener {
        public a() {
        }

        @Override
        public boolean onLongClick(View view) {
            b.this.P();
            return true;
        }
    }

    public class C0512b implements Q7.b {
        public C0512b() {
        }

        @Override
        public void a(R7.b eElement, View v10) {
            b.this.T(v10, eElement);
        }

        @Override
        public void b(R7.b element, View v10) {
            b.this.U(v10, element, true);
        }
    }

    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public c() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            if (!b.this.f20846C) {
                return false;
            }
            int round = Math.round(b.this.f20850a * detector.getScaleFactor());
            if (Math.abs(round - b.this.f20850a) < 2) {
                return false;
            }
            b.this.V(round);
            return true;
        }
    }

    public class d implements RecyclerView.OnItemTouchListener {
        public d() {
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (b.this.f20872w == null) {
                return false;
            }
            b.this.f20872w.onTouchEvent(motionEvent);
            return false;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (b.this.f20872w != null) {
                b.this.f20872w.onTouchEvent(motionEvent);
            }
        }
    }

    public class e implements Runnable {

        public final String f20880b;

        public final String f20881c;

        public class a implements Runnable {

            public final C2622a f20883b;

            public a(final C2622a val$phaser) {
                this.f20883b = val$phaser;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
            
                r1 = r7.f20884c;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x00c5, code lost:
            
                if (r1.f20881c.equals(r1.f20882d.f20848E) != false) goto L27;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00cd, code lost:
            
                if (r0.isEmpty() != false) goto L33;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x00df, code lost:
            
                if (r7.f20884c.f20882d.f20864o.equals(r7.f20884c.f20880b) != false) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00e3, code lost:
            
                r7.f20884c.f20882d.f20871v.r(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00ee, code lost:
            
                r7.f20883b.e();
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00f3, code lost:
            
                return;
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                try {
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= b.this.f20871v.getItemCount()) {
                            break;
                        }
                        if (!b.this.f20864o.equals(e.this.f20880b)) {
                            break;
                        }
                        e eVar = e.this;
                        if (eVar.f20881c.equals(b.this.f20848E)) {
                            R7.b m10 = b.this.f20871v.m(i10);
                            if (b.this.f20862m.a(m10.u()) && m10.u().getAbsolutePath().startsWith(b.this.f20862m.f())) {
                                if (!b.this.f20862m.j(m10.u(), m10.u().getAbsolutePath().replace(b.this.f20862m.f(), ""), b.this.f20848E)) {
                                    steppedArrayList.add(m10);
                                }
                                i10++;
                            }
                            steppedArrayList.add(m10);
                            i10++;
                        }
                    }
                } finally {
                    this.f20883b.e();
                }
            }
        }

        public class C0513b implements j {

            public final HashSet f20885a;

            public final C2622a f20886b;

            public C0513b(final HashSet val$searchIds, final C2622a val$phaser) {
                this.f20885a = val$searchIds;
                this.f20886b = val$phaser;
            }

            @Override
            public void a(File file) {
                if (b.this.f20863n.a(file)) {
                    String g10 = b.this.f20862m.g(file, file.getAbsolutePath().replace(b.this.f20862m.f(), ""));
                    if (g10 != null && !g10.trim().isEmpty()) {
                        if (this.f20885a.contains(g10)) {
                            return;
                        } else {
                            this.f20885a.add(g10);
                        }
                    }
                    this.f20886b.bulkRegister(1);
                    b bVar = b.this;
                    C2622a c2622a = this.f20886b;
                    Objects.requireNonNull(c2622a);
                    bVar.A(file, new RunnableC13432c(c2622a));
                    this.f20886b.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
                }
            }
        }

        public class c implements Predicate<File> {
            public c() {
            }

            @Override
            public boolean test(File file) {
                return !b.this.f20863n.a(file);
            }
        }

        public class d implements Runnable {

            public final LinkedList f20889b;

            public final C2622a f20890c;

            public class a implements Predicate<File> {
                public a() {
                }

                @Override
                public boolean test(File file) {
                    if (!b.this.f20864o.equals(e.this.f20880b)) {
                        return false;
                    }
                    for (int i10 = 0; i10 < b.this.f20871v.getItemCount(); i10++) {
                        if (b.this.f20871v.m(i10).u().getAbsolutePath().equals(file.getAbsolutePath())) {
                            return true;
                        }
                    }
                    return false;
                }
            }

            public d(final LinkedList val$pendingFiles, final C2622a val$phaser) {
                this.f20889b = val$pendingFiles;
                this.f20890c = val$phaser;
            }

            @Override
            public void run() {
                try {
                    if (b.this.f20864o.equals(e.this.f20880b)) {
                        this.f20889b.removeIf(new a());
                    }
                } finally {
                    this.f20890c.e();
                }
            }
        }

        public class RunnableC0514e implements Runnable {

            public final String f20893b;

            public final C2622a f20894c;

            public RunnableC0514e(final String val$folderPath, final C2622a val$phaser) {
                this.f20893b = val$folderPath;
                this.f20894c = val$phaser;
            }

            /* JADX WARN: Code restructure failed: missing block: B:26:0x002d, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x00a6, code lost:
            
                if (r1.isEmpty() != false) goto L31;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
            
                if (r6.f20895d.f20882d.f20864o.equals(r6.f20895d.f20880b) != false) goto L30;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x00bc, code lost:
            
                r6.f20895d.f20882d.f20871v.r(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
            
                r6.f20894c.e();
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00cc, code lost:
            
                return;
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                try {
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= b.this.f20871v.getItemCount()) {
                            break;
                        }
                        if (!b.this.f20864o.equals(e.this.f20880b)) {
                            break;
                        }
                        R7.b m10 = b.this.f20871v.m(i10);
                        if (b.this.f20862m.a(m10.u()) && m10.u().getAbsolutePath().startsWith(b.this.f20862m.f())) {
                            String o10 = Tc.b.o(m10.u().getParentFile().getAbsolutePath());
                            if (!o10.endsWith("/")) {
                                o10 = o10 + "/";
                            }
                            if (!o10.equals(this.f20893b)) {
                                steppedArrayList.add(m10);
                            }
                            i10++;
                        }
                        steppedArrayList.add(m10);
                        i10++;
                    }
                } finally {
                    this.f20894c.e();
                }
            }
        }

        public class f implements Runnable {

            public final C2622a f20896b;

            public f(final C2622a val$phaser) {
                this.f20896b = val$phaser;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < b.this.f20871v.getItemCount(); i10++) {
                    try {
                        if (b.this.f20864o.equals(e.this.f20880b)) {
                            R7.b m10 = b.this.f20871v.m(i10);
                            if (m10.u().getAbsolutePath().equals(b.this.f20865p.getAbsolutePath())) {
                                b.this.f20871v.w(m10);
                            }
                        }
                        this.f20896b.e();
                        return;
                    } catch (Throwable th2) {
                        this.f20896b.e();
                        throw th2;
                    }
                }
                b.this.f20871v.w(null);
                this.f20896b.e();
            }
        }

        public class g implements Predicate<File> {
            public g() {
            }

            @Override
            public boolean test(File file) {
                return !b.this.f20863n.a(file);
            }
        }

        public e(final String val$inThisThreadFolder, final String val$inThisThreadSearch) {
            this.f20880b = val$inThisThreadFolder;
            this.f20881c = val$inThisThreadSearch;
        }

        public void a(File folder, j internalSearch) {
            if (this.f20881c.equals(b.this.f20848E)) {
                List<File> i10 = b.this.f20862m.i(folder);
                i10.removeIf(new g());
                for (int i11 = 0; i11 < i10.size() && this.f20881c.equals(b.this.f20848E); i11++) {
                    File file = i10.get(i11);
                    if (b.this.f20862m.a(file)) {
                        if (b.this.f20862m.j(file, file.getAbsolutePath().replace(b.this.f20862m.f(), ""), b.this.f20848E)) {
                            internalSearch.a(file);
                        }
                        if (b.this.f20862m.h(file)) {
                            a(file, internalSearch);
                        }
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x0186, code lost:
        
            if (r5.b(com.tonyodev.fetch2.util.FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) == false) goto L5;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                try {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (b.this.f20864o.equals(this.f20880b) && this.f20881c.equals(b.this.f20848E)) {
                    if (!b.this.f20844A.get()) {
                        String E10 = b.this.E(this.f20880b);
                        File file = new File(E10);
                        if (b.this.f20862m.a(file)) {
                            List<File> i10 = b.this.f20862m.i(file);
                            i10.removeIf(new c());
                            if (b.this.f20864o.equals(this.f20880b)) {
                                b.this.a0(i10);
                                if (b.this.f20864o.equals(this.f20880b)) {
                                    LinkedList linkedList = new LinkedList();
                                    linkedList.addAll(i10);
                                    C2622a c2622a = new C2622a(1);
                                    c2622a.bulkRegister(1);
                                    b.this.f20860k.runOnUiThread(new d(linkedList, c2622a));
                                    if (!c2622a.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) {
                                    }
                                    while (true) {
                                        if (linkedList.isEmpty()) {
                                            c2622a.bulkRegister(1);
                                            b.this.f20860k.runOnUiThread(new RunnableC0514e(E10, c2622a));
                                            if (c2622a.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) {
                                                c2622a.bulkRegister(1);
                                                b.this.f20860k.runOnUiThread(new f(c2622a));
                                            }
                                        } else {
                                            if (!b.this.f20864o.equals(this.f20880b)) {
                                                break;
                                            }
                                            File file2 = (File) linkedList.removeFirst();
                                            c2622a.bulkRegister(1);
                                            b.this.A(file2, new RunnableC13432c(c2622a));
                                            if (!c2622a.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) {
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        b.this.d0();
                        b.this.f20875z.set(false);
                    }
                    HashSet hashSet = new HashSet();
                    C2622a c2622a2 = new C2622a(1);
                    c2622a2.bulkRegister(1);
                    b.this.f20860k.runOnUiThread(new a(c2622a2));
                    if (c2622a2.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) && this.f20881c.equals(b.this.f20848E)) {
                        if (b.this.f20848E.isEmpty()) {
                            if (b.this.f20862m.k()) {
                            }
                            b.this.d0();
                            b.this.f20875z.set(false);
                        }
                        File file3 = new File(b.this.f20862m.f());
                        if (b.this.f20862m.a(file3)) {
                            a(file3, new C0513b(hashSet, c2622a2));
                        }
                        b.this.d0();
                        b.this.f20875z.set(false);
                    }
                }
            } finally {
                b.this.d0();
                b.this.f20875z.set(false);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            if (b.this.f20871v.getItemCount() > 0) {
                b.this.f20867r.setVisibility(0);
                b.this.f20868s.setVisibility(8);
            } else {
                b.this.f20867r.setVisibility(8);
                b.this.f20868s.setVisibility(0);
            }
        }
    }

    public class g implements Runnable {

        public final View f20900b;

        public final R7.b f20901c;

        public final boolean f20902d;

        public g(final View val$v, final R7.b val$element, final boolean val$fromUserAction) {
            this.f20900b = val$v;
            this.f20901c = val$element;
            this.f20902d = val$fromUserAction;
        }

        @Override
        public void run() {
            b.this.R(this.f20900b, this.f20901c, this.f20902d);
        }
    }

    public class h implements Runnable {

        public final File f20904b;

        public final String f20905c;

        public final String f20906d;

        public final Runnable f20907e;

        public h(final File val$file, final String val$ipp, final String val$description, final Runnable val$onAdded) {
            this.f20904b = val$file;
            this.f20905c = val$ipp;
            this.f20906d = val$description;
            this.f20907e = val$onAdded;
        }

        @Override
        public void run() {
            File k10;
            if (b.this.f20862m.h(this.f20904b)) {
                String name = this.f20904b.getName();
                if (C2633l.b(this.f20904b.getName(), ".meta") && (k10 = Tc.b.k(this.f20904b)) != null) {
                    name = Tc.b.w(this.f20904b.getName(), true) + Tc.b.t(k10.getName());
                }
                String d10 = b.this.f20862m.d(this.f20904b, this.f20905c);
                if (d10 != null && !d10.trim().isEmpty()) {
                    name = d10;
                }
                R7.b fVar = b.this.f20846C ? new R7.f(name, this.f20904b.getAbsolutePath()) : new R7.h(name, this.f20904b.getAbsolutePath());
                fVar.C(this.f20906d);
                fVar.B(b.this.f20846C);
                F7.j e10 = b.this.f20862m.e(this.f20904b, this.f20905c, b.this.f20846C);
                if (e10 != null) {
                    fVar.s(e10);
                }
                b.this.O(fVar);
            } else {
                String d11 = b.this.f20862m.d(this.f20904b, this.f20905c);
                if (d11 == null || d11.trim().isEmpty()) {
                    d11 = this.f20904b.getName();
                }
                R7.b eVar = b.this.f20846C ? new R7.e(d11, this.f20904b.getAbsolutePath(), null) : new R7.g(d11, this.f20904b.getAbsolutePath(), null);
                eVar.C(this.f20906d);
                eVar.B(b.this.f20846C);
                F7.j e11 = b.this.f20862m.e(this.f20904b, this.f20905c, b.this.f20846C);
                if (e11 != null) {
                    eVar.s(e11);
                }
                b.this.O(eVar);
            }
            b.this.d0();
            this.f20907e.run();
        }
    }

    public interface i {
        void a(int newSize);
    }

    public interface j {
        void a(File file);
    }

    public b(Activity activity, V7.d explorerDataProvider, V7.c filter, boolean startSearching, i gridZoomListener) {
        this(activity, explorerDataProvider, filter, gridZoomListener);
        this.f20849F = startSearching;
    }

    public final void A(File file, Runnable onAdded) {
        String replace = file.getAbsolutePath().replace(this.f20862m.f(), "");
        this.f20860k.runOnUiThread(new h(file, replace, this.f20862m.c(this.f20844A.get(), file, replace), onAdded));
    }

    public final void B() {
        Q7.a aVar = this.f20871v;
        if (aVar == null) {
            return;
        }
        if (!this.f20846C) {
            aVar.v(false, this.f20854e, this.f20855f);
            RecyclerView recyclerView = this.f20870u;
            if (recyclerView != null) {
                this.f20871v.i(recyclerView);
                return;
            }
            return;
        }
        this.f20871v.v(true, Math.max(1, Math.round((this.f20852c * this.f20850a) / this.f20851b)), Math.max(1, Math.round((this.f20853d * this.f20850a) / this.f20851b)));
        RecyclerView recyclerView2 = this.f20870u;
        if (recyclerView2 != null) {
            this.f20871v.i(recyclerView2);
        }
    }

    public View C() {
        View inflate = this.f20861l.inflate(R.layout.files_explorer_stack, (ViewGroup) null);
        this.f20866q = inflate;
        this.f20867r = inflate.findViewById(R.id.contentView);
        this.f20868s = inflate.findViewById(R.id.blankSlate);
        this.f20870u = (RecyclerView) inflate.findViewById(R.id.contentViewRecycler);
        this.f20868s.setOnLongClickListener(new a());
        GridAutofitLayoutManager gridAutofitLayoutManager = new GridAutofitLayoutManager(this.f20860k, this.f20850a);
        this.f20869t = gridAutofitLayoutManager;
        this.f20870u.setLayoutManager(gridAutofitLayoutManager);
        Q7.a aVar = new Q7.a(this.f20860k, new C0512b());
        this.f20871v = aVar;
        aVar.x(this.f20858i);
        this.f20870u.setAdapter(this.f20871v);
        this.f20870u.setItemAnimator(null);
        for (int i10 = 0; i10 < this.f20873x.size(); i10++) {
            this.f20870u.addOnScrollListener(this.f20873x.get(i10));
        }
        B();
        this.f20872w = new ScaleGestureDetector(this.f20859j, new c());
        this.f20870u.addOnItemTouchListener(new d());
        if (this.f20849F) {
            b0();
        } else {
            c0();
        }
        this.f20867r.setVisibility(0);
        this.f20868s.setVisibility(8);
        return inflate;
    }

    public void D() {
        this.f20871v.k();
    }

    public final String E(String inThisThreadFolder) {
        String o10 = Tc.b.o(this.f20862m.f() + inThisThreadFolder);
        if (o10.endsWith("/")) {
            return o10;
        }
        return o10 + "/";
    }

    public String F() {
        return this.f20864o;
    }

    public View G() {
        return this.f20866q;
    }

    public String H() {
        return this.f20848E;
    }

    public File I() {
        return this.f20865p;
    }

    public int J() {
        return this.f20850a;
    }

    public void K() {
        String str = this.f20864o;
        while (true) {
            if (!str.endsWith("/")) {
                break;
            } else {
                str = str.substring(0, str.length() - 1);
            }
        }
        String B10 = Tc.b.B(str);
        L(B10.isEmpty() ? "/" : B10);
    }

    public void L(String openFolder) {
        boolean z10;
        if (openFolder == null || openFolder.trim().isEmpty()) {
            openFolder = "";
        }
        String o10 = Tc.b.o(openFolder);
        File file = new File(this.f20862m.f() + o10);
        if (!this.f20862m.a(file)) {
            this.f20864o = o10;
            d0();
            return;
        }
        if (this.f20862m.h(file)) {
            if (!o10.endsWith("/")) {
                o10 = o10 + "/";
            }
            z10 = !this.f20864o.equals(o10);
            this.f20864o = o10;
        } else {
            String u10 = Tc.b.u(o10);
            if (!u10.endsWith("/")) {
                u10 = u10 + "/";
            }
            boolean z11 = !this.f20864o.equals(u10);
            this.f20864o = u10;
            this.f20865p = new File(this.f20862m.f() + this.f20864o + Tc.b.v(o10));
            z10 = z11;
        }
        if (z10) {
            D();
        }
    }

    public boolean M() {
        return this.f20845B;
    }

    public boolean N() {
        return this.f20846C;
    }

    public final void P() {
        Q(this.f20864o, this.f20868s);
    }

    public abstract void Q(String openFolder, View v10);

    public abstract void R(View v10, R7.b element, boolean fromUserAction);

    public abstract void S(File file, View v10);

    public final void T(View v10, R7.b element) {
        S(element.u(), v10);
    }

    public final void U(View v10, R7.b element, boolean fromUserAction) {
        this.f20865p = element.u();
        this.f20871v.w(element);
        this.f20870u.post(new g(v10, element, fromUserAction));
    }

    public final void V(int newSize) {
        int max = Math.max(this.f20856g, Math.min(this.f20857h, newSize));
        if (max == this.f20850a) {
            return;
        }
        i iVar = this.f20847D;
        if (iVar != null) {
            iVar.a(max);
        } else {
            Z(max);
        }
    }

    public void W(boolean allowAsyncUpdate) {
        this.f20845B = allowAsyncUpdate;
    }

    public void X(boolean grid) {
        this.f20846C = grid;
        B();
    }

    public void Y(String searchText) {
        this.f20848E = searchText;
    }

    public void Z(int viewContentSize) {
        this.f20850a = viewContentSize;
        GridAutofitLayoutManager gridAutofitLayoutManager = this.f20869t;
        if (gridAutofitLayoutManager != null) {
            gridAutofitLayoutManager.l(viewContentSize);
        }
        B();
    }

    public final void a0(List<File> files) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (File file : files) {
            if (file.isDirectory()) {
                steppedArrayList.add(file);
            } else {
                steppedArrayList2.add(file);
            }
        }
        C15908b c15908b = new C15908b();
        Comparator<String> comparator = String.CASE_INSENSITIVE_ORDER;
        Collections.sort(steppedArrayList, Comparator.comparing(c15908b, comparator));
        Collections.sort(steppedArrayList2, Comparator.comparing(new C15908b(), comparator));
        files.clear();
        files.addAll(steppedArrayList);
        files.addAll(steppedArrayList2);
    }

    public final void b0() {
        this.f20844A.set(true);
    }

    public final void c0() {
        D();
        this.f20844A.set(false);
    }

    public final void d0() {
        this.f20860k.runOnUiThread(new f());
    }

    public final void e0() {
        this.f20875z.set(true);
        Thread thread = new Thread(new e(this.f20864o, this.f20848E));
        thread.setPriority(1);
        thread.start();
    }

    public void f0() {
        if (this.f20875z.get() || !this.f20845B) {
            return;
        }
        e0();
    }

    public final void O(final R7.b element) {
        if (this.f20870u.isComputingLayout()) {
            this.f20870u.post(new Runnable() {
                @Override
                public final void run() {
                    b.this.O(element);
                }
            });
        } else {
            this.f20871v.h(element);
        }
    }

    public void z(RecyclerView.OnScrollListener listener) {
        if (listener == null) {
            return;
        }
        RecyclerView recyclerView = this.f20870u;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(listener);
        } else {
            this.f20873x.add(listener);
        }
    }

    public b(Activity activity, V7.d explorerDataProvider, V7.c filter, i gridZoomListener) {
        this.f20864o = "";
        this.f20865p = new File("");
        this.f20873x = new SteppedArrayList();
        this.f20874y = new AtomicBoolean();
        this.f20875z = new AtomicBoolean();
        this.f20844A = new AtomicBoolean();
        this.f20845B = true;
        this.f20846C = false;
        this.f20848E = "";
        this.f20849F = false;
        this.f20859j = activity;
        this.f20860k = activity;
        this.f20861l = LayoutInflater.from(activity);
        int dimension = (int) activity.getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_width);
        this.f20851b = dimension;
        this.f20852c = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_icon_height);
        this.f20853d = Nc.b.l0(20.0f, activity);
        int dimension2 = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_horizontal_icon_height);
        this.f20854e = dimension2;
        this.f20855f = dimension2;
        this.f20850a = dimension;
        int max = Math.max(Nc.b.l0(64.0f, activity), (int) (dimension * 0.6f));
        this.f20856g = max;
        this.f20857h = Math.max(max + 1, (int) (dimension * 3.0f));
        this.f20858i = new ColorINT(activity.getResources().getColor(R.color.theme_primary_dark));
        this.f20862m = explorerDataProvider;
        this.f20863n = filter;
        this.f20847D = gridZoomListener;
    }
}
