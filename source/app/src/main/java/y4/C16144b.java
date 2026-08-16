package y4;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Iterator;
import java.util.LinkedList;

public class C16144b extends EditorPanel {

    public static final String f129982e0 = "AreaConsole";

    public static final Class f129983f0 = C16144b.class;

    public static final int f129984g0 = 100;

    public static final LinkedList<C16146d> f129985h0;

    public static volatile boolean f129986i0;

    public RecyclerView f129987X;

    public LinearLayoutManager f129988Y;

    public C16143a f129989Z;

    public boolean f129990a0;

    public final LinkedList<C16146d> f129991b0;

    public final Object f129992c0;

    public Process f129993d0;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return C16144b.f129983f0;
        }

        @Override
        public String c() {
            return C16144b.f129982e0;
        }
    }

    public class C2216b extends LinearLayoutManager {
        public C2216b(Context context) {
            super(context);
        }

        @Override
        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    static {
        EditorPanel.a(new a());
        f129985h0 = new LinkedList<>();
    }

    public C16144b(K8.a engine) {
        super(engine);
        this.f129991b0 = new LinkedList<>();
        this.f129992c0 = new Object();
        this.f129993d0 = null;
        super.e1(false);
    }

    public static void q1() {
        LinkedList<C16146d> linkedList = f129985h0;
        synchronized (linkedList) {
            linkedList.clear();
        }
    }

    public static void s1(String line) {
        if (f129986i0) {
            LinkedList<C16146d> linkedList = f129985h0;
            synchronized (linkedList) {
                try {
                    linkedList.add(new C16146d(line));
                    while (true) {
                        LinkedList<C16146d> linkedList2 = f129985h0;
                        if (linkedList2.size() > 100) {
                            linkedList2.removeFirst();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private void t1() {
        this.f129987X.scrollToPosition(this.f129989Z.getItemCount() - 1);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.simple_console, (ViewGroup) null);
        this.f129987X = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        f129986i0 = true;
        C2216b c2216b = new C2216b(A());
        this.f129988Y = c2216b;
        c2216b.setStackFromEnd(true);
        this.f129987X.setLayoutManager(this.f129988Y);
        C16143a c16143a = new C16143a(A(), new SteppedArrayList());
        this.f129989Z = c16143a;
        this.f129987X.setAdapter(c16143a);
        this.f129987X.setItemAnimator(null);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        f129986i0 = false;
    }

    @Override
    public void i() {
        S0();
        super.i();
    }

    @Override
    public EditorPanel k() {
        return new C16144b();
    }

    @Override
    public void o1() {
        super.o1();
        LinkedList<C16146d> linkedList = f129985h0;
        synchronized (linkedList) {
            try {
                if (linkedList.isEmpty()) {
                    if (!this.f129991b0.isEmpty()) {
                        this.f129991b0.clear();
                        this.f129989Z.k();
                    }
                    return;
                }
                if (this.f129991b0.isEmpty()) {
                    SteppedArrayList steppedArrayList = new SteppedArrayList(linkedList);
                    this.f129989Z.g(steppedArrayList);
                    this.f129991b0.addAll(steppedArrayList);
                    u1();
                    return;
                }
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                Iterator<C16146d> it = linkedList.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    C16146d next = it.next();
                    if (i10 >= this.f129991b0.size() || this.f129991b0.get(i10) != next) {
                        steppedArrayList2.add(next);
                    } else {
                        i10++;
                    }
                }
                if (i10 == 0) {
                    SteppedArrayList steppedArrayList3 = new SteppedArrayList(f129985h0);
                    this.f129991b0.clear();
                    this.f129991b0.addAll(steppedArrayList3);
                    this.f129989Z.o(steppedArrayList3);
                    return;
                }
                if (!steppedArrayList2.isEmpty()) {
                    this.f129989Z.g(steppedArrayList2);
                    this.f129991b0.addAll(steppedArrayList2);
                    u1();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean p1() {
        synchronized (this.f129992c0) {
            try {
                return this.f129993d0 == null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean r1() {
        return this.f129990a0 || EditorSettings.a().catchTerminalExceptionsEvenIfClosed;
    }

    public final void u1() {
        int size = this.f129991b0.size() - 100;
        if (size <= 0) {
            return;
        }
        for (int i10 = 0; i10 < size; i10++) {
            this.f129991b0.removeFirst();
        }
        this.f129989Z.l(size);
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        this.f129990a0 = w0();
    }

    public C16144b() {
        super(null, "Bake info log", f129982e0);
        this.f129991b0 = new LinkedList<>();
        this.f129992c0 = new Object();
        this.f129993d0 = null;
        super.e1(false);
    }
}
