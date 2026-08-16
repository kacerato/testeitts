package h7;

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
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.FileExplorer.Utils.GridAutofitLayoutManager;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2.util.FetchDefaults;
import i7.C13589a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import ob.b;
import w3.C15908b;

public abstract class AbstractC13431b {

    public final AtomicBoolean f90309A;

    public boolean f90310B;

    public boolean f90311C;

    public final i f90312D;

    public volatile String f90313E;

    public boolean f90314F;

    public int f90315a;

    public final int f90316b;

    public final int f90317c;

    public final int f90318d;

    public final int f90319e;

    public final int f90320f;

    public final int f90321g;

    public final int f90322h;

    public final ColorINT f90323i;

    public final Context f90324j;

    public final Activity f90325k;

    public final LayoutInflater f90326l;

    public final AbstractC14360e f90327m;

    public final InterfaceC14359d f90328n;

    public volatile String f90329o;

    public volatile File f90330p;

    public View f90331q;

    public View f90332r;

    public View f90333s;

    public GridAutofitLayoutManager f90334t;

    public RecyclerView f90335u;

    public C13589a f90336v;

    public ScaleGestureDetector f90337w;

    public final List<RecyclerView.OnScrollListener> f90338x;

    public final AtomicBoolean f90339y;

    public final AtomicBoolean f90340z;

    public class a implements View.OnLongClickListener {
        public a() {
        }

        @Override
        public boolean onLongClick(View view) {
            AbstractC13431b.this.P();
            return true;
        }
    }

    public class C1733b implements i7.b {
        public C1733b() {
        }

        @Override
        public void a(j7.b element, View v10) {
            AbstractC13431b.this.U(v10, element, true);
        }

        @Override
        public void b(j7.b eElement, View v10) {
            AbstractC13431b.this.T(v10, eElement);
        }
    }

    public class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public c() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            if (!AbstractC13431b.this.f90311C) {
                return false;
            }
            int round = Math.round(AbstractC13431b.this.f90315a * detector.getScaleFactor());
            if (Math.abs(round - AbstractC13431b.this.f90315a) < 2) {
                return false;
            }
            AbstractC13431b.this.V(round);
            return true;
        }
    }

    public class d implements RecyclerView.OnItemTouchListener {

        public ob.b f90344a;

        public final Object f90345b = new Object();

        public final Vector2 f90346c = new Vector2();

        public final Vector2 f90347d = new Vector2();

        public class a implements b.a {

            public class RunnableC1734a implements Runnable {
                public RunnableC1734a() {
                }

                @Override
                public void run() {
                    AbstractC13431b.this.P();
                }
            }

            public a() {
            }

            @Override
            public boolean run() {
                synchronized (d.this.f90345b) {
                    try {
                        d dVar = d.this;
                        if (dVar.f90344a == null) {
                            return false;
                        }
                        dVar.f90344a = null;
                        N7.c.j0(new RunnableC1734a());
                        return false;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public d() {
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            ob.b bVar;
            if (AbstractC13431b.this.f90337w != null) {
                AbstractC13431b.this.f90337w.onTouchEvent(motionEvent);
            }
            if (motionEvent.getAction() == 0) {
                if (recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) != null) {
                    return false;
                }
                synchronized (this.f90345b) {
                    this.f90346c.w0(motionEvent.getX(), motionEvent.getY());
                    this.f90347d.w0(motionEvent.getRawX(), motionEvent.getRawY());
                    ob.b bVar2 = new ob.b((b.a) new a(), 0.3f);
                    this.f90344a = bVar2;
                    K8.a.J(bVar2);
                }
                return false;
            }
            if (motionEvent.getAction() == 1) {
                synchronized (this.f90345b) {
                    try {
                        ob.b bVar3 = this.f90344a;
                        if (bVar3 != null) {
                            K8.a.p(bVar3);
                            this.f90344a = null;
                        }
                    } finally {
                    }
                }
                return false;
            }
            if (motionEvent.getAction() != 2) {
                return false;
            }
            synchronized (this.f90345b) {
                try {
                    this.f90347d.w0(motionEvent.getRawX(), motionEvent.getRawY());
                    if (this.f90346c.distance(motionEvent.getX(), motionEvent.getY()) >= Nc.b.k0(5.0f) && (bVar = this.f90344a) != null) {
                        K8.a.p(bVar);
                        this.f90344a = null;
                    }
                } finally {
                }
            }
            return false;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (AbstractC13431b.this.f90337w != null) {
                AbstractC13431b.this.f90337w.onTouchEvent(motionEvent);
            }
        }
    }

    public class e implements Runnable {

        public final String f90351b;

        public final String f90352c;

        public class a implements Runnable {

            public final C2622a f90354b;

            public a(final C2622a val$phaser) {
                this.f90354b = val$phaser;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
            
                r1 = r7.f90355c;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x00c5, code lost:
            
                if (r1.f90352c.equals(r1.f90353d.f90313E) != false) goto L27;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00cd, code lost:
            
                if (r0.isEmpty() != false) goto L33;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x00df, code lost:
            
                if (r7.f90355c.f90353d.f90329o.equals(r7.f90355c.f90351b) != false) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00e3, code lost:
            
                r7.f90355c.f90353d.f90336v.s(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00ee, code lost:
            
                r7.f90354b.e();
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
                        if (i10 >= AbstractC13431b.this.f90336v.getItemCount()) {
                            break;
                        }
                        if (!AbstractC13431b.this.f90329o.equals(e.this.f90351b)) {
                            break;
                        }
                        e eVar = e.this;
                        if (eVar.f90352c.equals(AbstractC13431b.this.f90313E)) {
                            j7.b m10 = AbstractC13431b.this.f90336v.m(i10);
                            if (AbstractC13431b.this.f90327m.a(m10.u()) && m10.u().getAbsolutePath().startsWith(AbstractC13431b.this.f90327m.f())) {
                                if (!AbstractC13431b.this.f90327m.k(m10.u(), m10.u().getAbsolutePath().replace(AbstractC13431b.this.f90327m.f(), ""), AbstractC13431b.this.f90313E)) {
                                    steppedArrayList.add(m10);
                                }
                                i10++;
                            }
                            steppedArrayList.add(m10);
                            i10++;
                        }
                    }
                } finally {
                    this.f90354b.e();
                }
            }
        }

        public class C1735b implements j {

            public final HashSet f90356a;

            public final C2622a f90357b;

            public C1735b(final HashSet val$searchIds, final C2622a val$phaser) {
                this.f90356a = val$searchIds;
                this.f90357b = val$phaser;
            }

            @Override
            public void a(File file) {
                if (AbstractC13431b.this.f90328n.a(file)) {
                    String g10 = AbstractC13431b.this.f90327m.g(file, file.getAbsolutePath().replace(AbstractC13431b.this.f90327m.f(), ""));
                    if (g10 != null && !g10.trim().isEmpty()) {
                        if (this.f90356a.contains(g10)) {
                            return;
                        } else {
                            this.f90356a.add(g10);
                        }
                    }
                    this.f90357b.bulkRegister(1);
                    AbstractC13431b abstractC13431b = AbstractC13431b.this;
                    C2622a c2622a = this.f90357b;
                    Objects.requireNonNull(c2622a);
                    abstractC13431b.A(file, new RunnableC13432c(c2622a));
                    this.f90357b.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
                }
            }
        }

        public class c implements Runnable {

            public final LinkedList f90359b;

            public final C2622a f90360c;

            public c(final LinkedList val$pendingFiles, final C2622a val$phaser) {
                this.f90359b = val$pendingFiles;
                this.f90360c = val$phaser;
            }

            @Override
            public void run() {
                try {
                    if (AbstractC13431b.this.f90329o.equals(e.this.f90351b)) {
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        int itemCount = AbstractC13431b.this.f90336v.getItemCount();
                        Iterator<E> it = this.f90359b.iterator();
                        while (it.hasNext()) {
                            File file = (File) it.next();
                            if (AbstractC13431b.this.f90329o.equals(e.this.f90351b)) {
                                String absolutePath = file.getAbsolutePath();
                                int i10 = 0;
                                while (true) {
                                    if (i10 >= itemCount) {
                                        steppedArrayList.add(file);
                                        break;
                                    } else if (AbstractC13431b.this.f90336v.m(i10).u().getAbsolutePath().equals(absolutePath)) {
                                        break;
                                    } else {
                                        i10++;
                                    }
                                }
                            }
                        }
                        this.f90359b.clear();
                        this.f90359b.addAll(steppedArrayList);
                        this.f90360c.e();
                    }
                } finally {
                    this.f90360c.e();
                }
            }
        }

        public class d implements Runnable {

            public final String f90362b;

            public final C2622a f90363c;

            public d(final String val$folderPath, final C2622a val$phaser) {
                this.f90362b = val$folderPath;
                this.f90363c = val$phaser;
            }

            /* JADX WARN: Code restructure failed: missing block: B:26:0x002d, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x00a6, code lost:
            
                if (r1.isEmpty() != false) goto L31;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
            
                if (r6.f90364d.f90353d.f90329o.equals(r6.f90364d.f90351b) != false) goto L30;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x00bc, code lost:
            
                r6.f90364d.f90353d.f90336v.s(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
            
                r6.f90363c.e();
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
                        if (i10 >= AbstractC13431b.this.f90336v.getItemCount()) {
                            break;
                        }
                        if (!AbstractC13431b.this.f90329o.equals(e.this.f90351b)) {
                            break;
                        }
                        j7.b m10 = AbstractC13431b.this.f90336v.m(i10);
                        if (AbstractC13431b.this.f90327m.a(m10.u()) && m10.u().getAbsolutePath().startsWith(AbstractC13431b.this.f90327m.f())) {
                            String o10 = Tc.b.o(m10.u().getParentFile().getAbsolutePath());
                            if (!o10.endsWith("/")) {
                                o10 = o10 + "/";
                            }
                            if (!o10.equals(this.f90362b)) {
                                steppedArrayList.add(m10);
                            }
                            i10++;
                        }
                        steppedArrayList.add(m10);
                        i10++;
                    }
                } finally {
                    this.f90363c.e();
                }
            }
        }

        public class RunnableC1736e implements Runnable {

            public final C2622a f90365b;

            public RunnableC1736e(final C2622a val$phaser) {
                this.f90365b = val$phaser;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < AbstractC13431b.this.f90336v.getItemCount(); i10++) {
                    try {
                        if (AbstractC13431b.this.f90329o.equals(e.this.f90351b)) {
                            j7.b m10 = AbstractC13431b.this.f90336v.m(i10);
                            if (m10.u().getAbsolutePath().equals(AbstractC13431b.this.f90330p.getAbsolutePath())) {
                                AbstractC13431b.this.f90336v.x(m10);
                            }
                        }
                        this.f90365b.e();
                        return;
                    } catch (Throwable th2) {
                        this.f90365b.e();
                        throw th2;
                    }
                }
                AbstractC13431b.this.f90336v.x(null);
                this.f90365b.e();
            }
        }

        public e(final String val$inThisThreadFolder, final String val$inThisThreadSearch) {
            this.f90351b = val$inThisThreadFolder;
            this.f90352c = val$inThisThreadSearch;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(File folder, j internalSearch) {
            if (this.f90352c.equals(AbstractC13431b.this.f90313E)) {
                List<File> j10 = AbstractC13431b.this.f90327m.j(folder);
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                for (File file : j10) {
                    if (AbstractC13431b.this.f90328n.a(file)) {
                        steppedArrayList.add(file);
                    }
                }
                for (int i10 = 0; i10 < steppedArrayList.size() && this.f90352c.equals(AbstractC13431b.this.f90313E); i10++) {
                    File file2 = (File) steppedArrayList.get(i10);
                    if (!file2.getAbsolutePath().startsWith(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/JAVARuntime") && ((!AbstractC13431b.this.f90327m.h(file2) || !file2.getName().startsWith(ConstantDescs.DEFAULT_NAME)) && AbstractC13431b.this.f90327m.a(file2))) {
                        if (AbstractC13431b.this.f90327m.k(file2, file2.getAbsolutePath().replace(AbstractC13431b.this.f90327m.f(), ""), AbstractC13431b.this.f90313E)) {
                            internalSearch.a(file2);
                        }
                        if (AbstractC13431b.this.f90327m.h(file2)) {
                            a(file2, internalSearch);
                        }
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:70:0x01af, code lost:
        
            if (r6.b(com.tonyodev.fetch2.util.FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) == false) goto L5;
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
                if (AbstractC13431b.this.f90329o.equals(this.f90351b) && this.f90352c.equals(AbstractC13431b.this.f90313E)) {
                    if (!AbstractC13431b.this.f90309A.get()) {
                        String E10 = AbstractC13431b.this.E(this.f90351b);
                        File file = new File(E10);
                        if (AbstractC13431b.this.f90327m.a(file)) {
                            List<File> j10 = AbstractC13431b.this.f90327m.j(file);
                            SteppedArrayList steppedArrayList = new SteppedArrayList();
                            for (File file2 : j10) {
                                if (AbstractC13431b.this.f90328n.a(file2)) {
                                    steppedArrayList.add(file2);
                                }
                            }
                            if (AbstractC13431b.this.f90329o.equals(this.f90351b)) {
                                if (!AbstractC13431b.this.f90327m.i(file)) {
                                    AbstractC13431b.this.b0(steppedArrayList);
                                }
                                if (AbstractC13431b.this.f90329o.equals(this.f90351b)) {
                                    LinkedList linkedList = new LinkedList();
                                    linkedList.addAll(steppedArrayList);
                                    C2622a c2622a = new C2622a(1);
                                    c2622a.bulkRegister(1);
                                    AbstractC13431b.this.f90325k.runOnUiThread(new c(linkedList, c2622a));
                                    if (!c2622a.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) {
                                    }
                                    while (true) {
                                        if (!linkedList.isEmpty()) {
                                            if (!AbstractC13431b.this.f90329o.equals(this.f90351b)) {
                                                break;
                                            }
                                            File file3 = (File) linkedList.removeFirst();
                                            c2622a.bulkRegister(1);
                                            AbstractC13431b.this.A(file3, new RunnableC13432c(c2622a));
                                            if (!c2622a.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) {
                                                break;
                                            }
                                        } else {
                                            c2622a.bulkRegister(1);
                                            AbstractC13431b.this.f90325k.runOnUiThread(new d(E10, c2622a));
                                            if (c2622a.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) {
                                                c2622a.bulkRegister(1);
                                                AbstractC13431b.this.f90325k.runOnUiThread(new RunnableC1736e(c2622a));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        AbstractC13431b.this.e0();
                        AbstractC13431b.this.f90340z.set(false);
                    }
                    HashSet hashSet = new HashSet();
                    C2622a c2622a2 = new C2622a(1);
                    c2622a2.bulkRegister(1);
                    AbstractC13431b.this.f90325k.runOnUiThread(new a(c2622a2));
                    if (c2622a2.b(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) && this.f90352c.equals(AbstractC13431b.this.f90313E)) {
                        if (AbstractC13431b.this.f90313E.isEmpty()) {
                            if (AbstractC13431b.this.f90327m.l()) {
                            }
                            AbstractC13431b.this.e0();
                            AbstractC13431b.this.f90340z.set(false);
                        }
                        File file4 = new File(AbstractC13431b.this.f90327m.f());
                        if (AbstractC13431b.this.f90327m.a(file4)) {
                            a(file4, new C1735b(hashSet, c2622a2));
                        }
                        AbstractC13431b.this.e0();
                        AbstractC13431b.this.f90340z.set(false);
                    }
                }
            } finally {
                AbstractC13431b.this.e0();
                AbstractC13431b.this.f90340z.set(false);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            if (AbstractC13431b.this.f90336v.getItemCount() > 0) {
                AbstractC13431b.this.f90332r.setVisibility(0);
                AbstractC13431b.this.f90333s.setVisibility(8);
            } else {
                AbstractC13431b.this.f90332r.setVisibility(8);
                AbstractC13431b.this.f90333s.setVisibility(0);
            }
        }
    }

    public class g implements Runnable {

        public final View f90368b;

        public final j7.b f90369c;

        public final boolean f90370d;

        public g(final View val$v, final j7.b val$element, final boolean val$fromUserAction) {
            this.f90368b = val$v;
            this.f90369c = val$element;
            this.f90370d = val$fromUserAction;
        }

        @Override
        public void run() {
            AbstractC13431b.this.R(this.f90368b, this.f90369c, this.f90370d);
        }
    }

    public class h implements Runnable {

        public final File f90372b;

        public final String f90373c;

        public final String f90374d;

        public final Runnable f90375e;

        public h(final File val$file, final String val$ipp, final String val$description, final Runnable val$onAdded) {
            this.f90372b = val$file;
            this.f90373c = val$ipp;
            this.f90374d = val$description;
            this.f90375e = val$onAdded;
        }

        @Override
        public void run() {
            File k10;
            if (AbstractC13431b.this.f90327m.h(this.f90372b)) {
                String name = this.f90372b.getName();
                if (C2633l.b(this.f90372b.getName(), ".meta") && (k10 = Tc.b.k(this.f90372b)) != null) {
                    name = Tc.b.w(this.f90372b.getName(), true) + Tc.b.t(k10.getName());
                }
                String d10 = AbstractC13431b.this.f90327m.d(this.f90372b, this.f90373c);
                if (d10 != null && !d10.trim().isEmpty()) {
                    name = d10;
                }
                j7.b fVar = AbstractC13431b.this.f90311C ? new j7.f(name, this.f90372b.getAbsolutePath()) : new j7.h(name, this.f90372b.getAbsolutePath());
                fVar.C(this.f90374d);
                fVar.B(AbstractC13431b.this.f90311C);
                F7.j e10 = AbstractC13431b.this.f90327m.e(this.f90372b, this.f90373c, AbstractC13431b.this.f90311C);
                if (e10 != null) {
                    fVar.s(e10);
                }
                AbstractC13431b.this.O(fVar);
            } else {
                String d11 = AbstractC13431b.this.f90327m.d(this.f90372b, this.f90373c);
                if (d11 == null || d11.trim().isEmpty()) {
                    d11 = this.f90372b.getName();
                }
                j7.b eVar = AbstractC13431b.this.f90311C ? new j7.e(d11, this.f90372b.getAbsolutePath(), null) : new j7.g(d11, this.f90372b.getAbsolutePath(), null);
                eVar.C(this.f90374d);
                eVar.B(AbstractC13431b.this.f90311C);
                F7.j e11 = AbstractC13431b.this.f90327m.e(this.f90372b, this.f90373c, AbstractC13431b.this.f90311C);
                if (e11 != null) {
                    eVar.s(e11);
                }
                AbstractC13431b.this.O(eVar);
            }
            AbstractC13431b.this.e0();
            this.f90375e.run();
        }
    }

    public interface i {
        void a(int newSize);
    }

    public interface j {
        void a(File file);
    }

    public AbstractC13431b(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter, boolean startSearching, i gridZoomListener) {
        this(activity, explorerDataProvider, filter, gridZoomListener);
        this.f90314F = startSearching;
    }

    public final void A(File file, Runnable onAdded) {
        String replace = file.getAbsolutePath().replace(this.f90327m.f(), "");
        this.f90325k.runOnUiThread(new h(file, replace, this.f90327m.c(this.f90309A.get(), file, replace), onAdded));
    }

    public final void B() {
        C13589a c13589a = this.f90336v;
        if (c13589a == null) {
            return;
        }
        if (!this.f90311C) {
            c13589a.w(false, this.f90319e, this.f90320f);
            RecyclerView recyclerView = this.f90335u;
            if (recyclerView != null) {
                this.f90336v.i(recyclerView);
                return;
            }
            return;
        }
        this.f90336v.w(true, Math.max(1, Math.round((this.f90317c * this.f90315a) / this.f90316b)), Math.max(1, Math.round((this.f90318d * this.f90315a) / this.f90316b)));
        RecyclerView recyclerView2 = this.f90335u;
        if (recyclerView2 != null) {
            this.f90336v.i(recyclerView2);
        }
    }

    public View C() {
        View inflate = this.f90326l.inflate(R.layout.files_explorer_stack, (ViewGroup) null);
        this.f90331q = inflate;
        this.f90332r = inflate.findViewById(R.id.contentView);
        this.f90333s = inflate.findViewById(R.id.blankSlate);
        this.f90335u = (RecyclerView) inflate.findViewById(R.id.contentViewRecycler);
        this.f90333s.setOnLongClickListener(new a());
        GridAutofitLayoutManager gridAutofitLayoutManager = new GridAutofitLayoutManager(this.f90325k, this.f90315a);
        this.f90334t = gridAutofitLayoutManager;
        this.f90335u.setLayoutManager(gridAutofitLayoutManager);
        C13589a c13589a = new C13589a(this.f90325k, new C1733b());
        this.f90336v = c13589a;
        c13589a.y(this.f90323i);
        this.f90335u.setAdapter(this.f90336v);
        this.f90335u.setItemAnimator(null);
        for (int i10 = 0; i10 < this.f90338x.size(); i10++) {
            this.f90335u.addOnScrollListener(this.f90338x.get(i10));
        }
        B();
        this.f90337w = new ScaleGestureDetector(this.f90324j, new c());
        this.f90335u.addOnItemTouchListener(new d());
        if (this.f90314F) {
            c0();
        } else {
            d0();
        }
        this.f90332r.setVisibility(0);
        this.f90333s.setVisibility(8);
        return inflate;
    }

    public void D() {
        this.f90336v.k();
    }

    public final String E(String inThisThreadFolder) {
        String o10 = Tc.b.o(this.f90327m.f() + inThisThreadFolder);
        if (o10.endsWith("/")) {
            return o10;
        }
        return o10 + "/";
    }

    public String F() {
        return this.f90329o;
    }

    public View G() {
        return this.f90331q;
    }

    public String H() {
        return this.f90313E;
    }

    public File I() {
        return this.f90330p;
    }

    public int J() {
        return this.f90315a;
    }

    public void K() {
        String str = this.f90329o;
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
            openFolder = "Files/";
        }
        String o10 = Tc.b.o(openFolder);
        File file = new File(this.f90327m.f() + o10);
        if (!this.f90327m.a(file)) {
            this.f90329o = o10;
            e0();
            return;
        }
        if (this.f90327m.h(file)) {
            if (!o10.endsWith("/")) {
                o10 = o10 + "/";
            }
            z10 = !this.f90329o.equals(o10);
            this.f90329o = o10;
        } else {
            String u10 = Tc.b.u(o10);
            if (!u10.endsWith("/")) {
                u10 = u10 + "/";
            }
            boolean z11 = !this.f90329o.equals(u10);
            this.f90329o = u10;
            this.f90330p = new File(this.f90327m.f() + this.f90329o + Tc.b.v(o10));
            z10 = z11;
        }
        if (z10) {
            D();
        }
    }

    public boolean M() {
        return this.f90310B;
    }

    public boolean N() {
        return this.f90311C;
    }

    public final void P() {
        Q(this.f90329o, this.f90333s);
    }

    public abstract void Q(String openFolder, View v10);

    public abstract void R(View v10, j7.b element, boolean fromUserAction);

    public abstract void S(File file, View v10);

    public final void T(View v10, j7.b element) {
        S(element.u(), v10);
    }

    public final void U(View v10, j7.b element, boolean fromUserAction) {
        this.f90330p = element.u();
        this.f90336v.x(element);
        N7.c.c0(new g(v10, element, fromUserAction));
    }

    public final void V(int newSize) {
        int max = Math.max(this.f90321g, Math.min(this.f90322h, newSize));
        if (max == this.f90315a) {
            return;
        }
        i iVar = this.f90312D;
        if (iVar != null) {
            iVar.a(max);
        } else {
            a0(max);
        }
    }

    public void W(boolean allowAsyncUpdate) {
        this.f90310B = allowAsyncUpdate;
    }

    public void X(boolean grid) {
        this.f90311C = grid;
        B();
    }

    public void Y(String searchText) {
        this.f90313E = searchText;
        if (this.f90309A.get()) {
            if (searchText == null || searchText.isEmpty()) {
                d0();
                return;
            }
            return;
        }
        if (searchText == null || searchText.isEmpty()) {
            return;
        }
        c0();
    }

    public void Z(File file) {
        this.f90330p = file != null ? file : new File("");
        C13589a c13589a = this.f90336v;
        if (c13589a == null) {
            return;
        }
        if (file == null) {
            c13589a.x(null);
            return;
        }
        for (int i10 = 0; i10 < this.f90336v.getItemCount(); i10++) {
            j7.b m10 = this.f90336v.m(i10);
            if (m10 != null && m10.u() != null && m10.u().getAbsolutePath().equals(file.getAbsolutePath())) {
                this.f90336v.x(m10);
                return;
            }
        }
        this.f90336v.x(null);
    }

    public void a0(int viewContentSize) {
        this.f90315a = viewContentSize;
        GridAutofitLayoutManager gridAutofitLayoutManager = this.f90334t;
        if (gridAutofitLayoutManager != null) {
            gridAutofitLayoutManager.l(viewContentSize);
        }
        B();
    }

    public final void b0(List<File> files) {
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

    public final void c0() {
        this.f90309A.set(true);
    }

    public final void d0() {
        D();
        this.f90309A.set(false);
    }

    public final void e0() {
        N7.c.j0(new f());
    }

    public final void f0() {
        this.f90340z.set(true);
        O9.b.d(new e(this.f90329o, this.f90313E));
    }

    public void g0() {
        if (this.f90340z.get() || !this.f90310B) {
            return;
        }
        f0();
    }

    public final void O(final j7.b element) {
        if (this.f90335u.isComputingLayout()) {
            this.f90335u.post(new Runnable() {
                @Override
                public final void run() {
                    AbstractC13431b.this.O(element);
                }
            });
        } else {
            this.f90336v.h(element);
        }
    }

    public void z(RecyclerView.OnScrollListener listener) {
        if (listener == null) {
            return;
        }
        RecyclerView recyclerView = this.f90335u;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(listener);
        } else {
            this.f90338x.add(listener);
        }
    }

    public AbstractC13431b(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter, i gridZoomListener) {
        this.f90329o = "";
        this.f90330p = new File("");
        this.f90338x = new SteppedArrayList();
        this.f90339y = new AtomicBoolean();
        this.f90340z = new AtomicBoolean();
        this.f90309A = new AtomicBoolean();
        this.f90310B = true;
        this.f90311C = false;
        this.f90313E = "";
        this.f90314F = false;
        this.f90324j = activity;
        this.f90325k = activity;
        this.f90326l = LayoutInflater.from(activity);
        int dimension = (int) activity.getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_width);
        this.f90316b = dimension;
        this.f90317c = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_icon_height);
        this.f90318d = Nc.b.l0(20.0f, activity);
        int dimension2 = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_horizontal_icon_height);
        this.f90319e = dimension2;
        this.f90320f = dimension2;
        this.f90315a = dimension;
        int max = Math.max(Nc.b.l0(64.0f, activity), (int) (dimension * 0.6f));
        this.f90321g = max;
        this.f90322h = Math.max(max + 1, (int) (dimension * 3.0f));
        this.f90323i = new ColorINT(Theme.i(Theme.T.PRIMARY_DARK));
        this.f90327m = explorerDataProvider;
        this.f90328n = filter;
        this.f90312D = gridZoomListener;
    }
}
