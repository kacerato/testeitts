package n0;

import android.security.keystore.KeyProperties;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.filament.utils.Manipulator;
import java.util.ArrayList;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;

@t0({"SMAP\nGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float2\n*L\n1#1,155:1\n626#2:156\n624#2:158\n137#3:157\n*S KotlinDebug\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector\n*L\n143#1:156\n143#1:158\n143#1:157\n*E\n"})
public final class C14343h {

    @NotNull
    public final View f97598a;

    @NotNull
    public final Manipulator f97599b;

    @NotNull
    public a f97600c;

    @NotNull
    public b f97601d;

    @NotNull
    public final ArrayList<b> f97602e;

    @NotNull
    public final ArrayList<b> f97603f;

    @NotNull
    public final ArrayList<b> f97604g;

    public final int f97605h;

    public final int f97606i;

    public final int f97607j;

    public final float f97608k;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final Cf.a $ENTRIES;
        private static final a[] $VALUES;
        public static final a NONE = new a(KeyProperties.DIGEST_NONE, 0);
        public static final a ORBIT = new a("ORBIT", 1);
        public static final a PAN = new a("PAN", 2);
        public static final a ZOOM = new a("ZOOM", 3);

        static {
            a[] a10 = a();
            $VALUES = a10;
            $ENTRIES = Cf.c.c(a10);
        }

        public a(String str, int i10) {
        }

        public static final a[] a() {
            return new a[]{NONE, ORBIT, PAN, ZOOM};
        }

        @NotNull
        public static Cf.a<a> b() {
            return $ENTRIES;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    @t0({"SMAP\nGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,155:1\n626#2:156\n624#2:158\n660#2,2:159\n662#2:162\n137#3:157\n42#4:161\n*S KotlinDebug\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n*L\n44#1:156\n44#1:158\n45#1:159,2\n45#1:162\n44#1:157\n45#1:161\n*E\n"})
    public static final class b {

        @NotNull
        public C14340e f97609a;

        @NotNull
        public C14340e f97610b;

        public int f97611c;

        public b(@NotNull C14340e pt0, @NotNull C14340e pt1, int i10) {
            M.p(pt0, "pt0");
            M.p(pt1, "pt1");
            this.f97609a = pt0;
            this.f97610b = pt1;
            this.f97611c = i10;
        }

        public static b e(b bVar, C14340e c14340e, C14340e c14340e2, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                c14340e = bVar.f97609a;
            }
            if ((i11 & 2) != 0) {
                c14340e2 = bVar.f97610b;
            }
            if ((i11 & 4) != 0) {
                i10 = bVar.f97611c;
            }
            return bVar.d(c14340e, c14340e2, i10);
        }

        @NotNull
        public final C14340e a() {
            return this.f97609a;
        }

        @NotNull
        public final C14340e b() {
            return this.f97610b;
        }

        public final int c() {
            return this.f97611c;
        }

        @NotNull
        public final b d(@NotNull C14340e pt0, @NotNull C14340e pt1, int i10) {
            M.p(pt0, "pt0");
            M.p(pt1, "pt1");
            return new b(pt0, pt1, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return M.g(this.f97609a, bVar.f97609a) && M.g(this.f97610b, bVar.f97610b) && this.f97611c == bVar.f97611c;
        }

        public final int f() {
            return this.f97611c;
        }

        @NotNull
        public final C14340e g() {
            C14340e c14340e = this.f97609a;
            C14340e c14340e2 = this.f97610b;
            return new C14340e((c14340e.z() * 0.5f) + (c14340e2.z() * 0.5f), (c14340e.B() * 0.5f) + (c14340e2.B() * 0.5f));
        }

        @NotNull
        public final C14340e h() {
            return this.f97609a;
        }

        public int hashCode() {
            return (((this.f97609a.hashCode() * 31) + this.f97610b.hashCode()) * 31) + Integer.hashCode(this.f97611c);
        }

        @NotNull
        public final C14340e i() {
            return this.f97610b;
        }

        public final float j() {
            C14340e c14340e = this.f97609a;
            C14340e c14340e2 = this.f97610b;
            C14340e c14340e3 = new C14340e(c14340e.z() - c14340e2.z(), c14340e.B() - c14340e2.B());
            return (float) Math.sqrt((c14340e3.z() * c14340e3.z()) + (c14340e3.B() * c14340e3.B()));
        }

        public final int k() {
            return (int) g().z();
        }

        public final int l() {
            return (int) g().B();
        }

        public final void m(int i10) {
            this.f97611c = i10;
        }

        public final void n(@NotNull C14340e c14340e) {
            M.p(c14340e, "<set-?>");
            this.f97609a = c14340e;
        }

        public final void o(@NotNull C14340e c14340e) {
            M.p(c14340e, "<set-?>");
            this.f97610b = c14340e;
        }

        @NotNull
        public String toString() {
            C14340e c14340e = this.f97609a;
            C14340e c14340e2 = this.f97610b;
            return "TouchPair(pt0=" + ((Object) c14340e) + ", pt1=" + ((Object) c14340e2) + ", count=" + this.f97611c + ")";
        }

        public b() {
            this(new C14340e(0.0f), new C14340e(0.0f), 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public b(@NotNull MotionEvent me2, int i10) {
            this();
            M.p(me2, "me");
            if (me2.getPointerCount() >= 1) {
                C14340e c14340e = new C14340e(me2.getX(0), i10 - me2.getY(0));
                this.f97609a = c14340e;
                this.f97610b = c14340e;
                this.f97611c++;
            }
            if (me2.getPointerCount() >= 2) {
                this.f97610b = new C14340e(me2.getX(1), i10 - me2.getY(1));
                this.f97611c++;
            }
        }
    }

    public C14343h(@NotNull View view, @NotNull Manipulator manipulator) {
        M.p(view, "view");
        M.p(manipulator, "manipulator");
        this.f97598a = view;
        this.f97599b = manipulator;
        this.f97600c = a.NONE;
        this.f97601d = new b();
        this.f97602e = new ArrayList<>();
        this.f97603f = new ArrayList<>();
        this.f97604g = new ArrayList<>();
        this.f97605h = 2;
        this.f97606i = 4;
        this.f97607j = 10;
        this.f97608k = 0.1f;
    }

    public final void a() {
        this.f97602e.clear();
        this.f97603f.clear();
        this.f97604g.clear();
        this.f97600c = a.NONE;
        this.f97599b.C();
    }

    public final boolean b() {
        return this.f97603f.size() > this.f97605h;
    }

    public final boolean c() {
        if (this.f97602e.size() <= this.f97605h) {
            return false;
        }
        C14340e g10 = ((b) S.G2(this.f97602e)).g();
        C14340e g11 = ((b) S.u3(this.f97602e)).g();
        C14340e c14340e = new C14340e(g10.z() - g11.z(), g10.B() - g11.B());
        return ((float) Math.sqrt((double) ((c14340e.z() * c14340e.z()) + (c14340e.B() * c14340e.B())))) > ((float) this.f97606i);
    }

    public final boolean d() {
        if (this.f97604g.size() <= this.f97605h) {
            return false;
        }
        return Math.abs(((b) S.u3(this.f97604g)).j() - ((b) S.G2(this.f97604g)).j()) > ((float) this.f97607j);
    }

    public final void e(@NotNull MotionEvent event) {
        M.p(event, "event");
        b bVar = new b(event, this.f97598a.getHeight());
        int actionMasked = event.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if ((event.getPointerCount() != 1 && this.f97600c == a.ORBIT) || ((event.getPointerCount() != 2 && this.f97600c == a.PAN) || (event.getPointerCount() != 2 && this.f97600c == a.ZOOM))) {
                    a();
                    return;
                }
                a aVar = this.f97600c;
                a aVar2 = a.ZOOM;
                if (aVar == aVar2) {
                    this.f97599b.I(bVar.k(), bVar.l(), (this.f97601d.j() - bVar.j()) * this.f97608k);
                    this.f97601d = bVar;
                    return;
                }
                if (aVar != a.NONE) {
                    this.f97599b.D(bVar.k(), bVar.l());
                    return;
                }
                if (event.getPointerCount() == 1) {
                    this.f97603f.add(bVar);
                }
                if (event.getPointerCount() == 2) {
                    this.f97602e.add(bVar);
                    this.f97604g.add(bVar);
                }
                if (b()) {
                    this.f97599b.B(bVar.k(), bVar.l(), false);
                    this.f97600c = a.ORBIT;
                    return;
                } else if (d()) {
                    this.f97600c = aVar2;
                    this.f97601d = bVar;
                    return;
                } else {
                    if (c()) {
                        this.f97599b.B(bVar.k(), bVar.l(), true);
                        this.f97600c = a.PAN;
                        return;
                    }
                    return;
                }
            }
            if (actionMasked != 3) {
                return;
            }
        }
        a();
    }
}
