package C5;

import JAVARuntime.Color;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a {

    public String f2028a;

    public String f2029b;

    public boolean f2030c;

    public boolean f2031d;

    public D5.h f2034g;

    public D5.g f2035h;

    public InspectorEditor f2036i;

    public boolean f2046s;

    public boolean f2032e = true;

    public boolean f2033f = false;

    public int f2037j = R.drawable.unknow_component_icon_2;

    public boolean f2038k = false;

    public final List<C12908b> f2039l = new SteppedArrayList();

    public final List<m> f2040m = new SteppedArrayList();

    public List<b> f2041n = new LinkedList();

    public List<b> f2042o = new LinkedList();

    public int f2043p = 0;

    public Color f2044q = null;

    public boolean f2045r = false;

    public boolean f2047t = false;

    public a(String tittle, boolean enabled) {
        this.f2030c = true;
        this.f2031d = true;
        this.f2028a = tittle;
        this.f2031d = false;
        this.f2030c = enabled;
        d(null);
    }

    public void a() {
        this.f2047t = true;
        this.f2034g = null;
        this.f2028a = null;
        this.f2035h = null;
        d(null);
        Iterator<b> it = this.f2041n.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
        Iterator<b> it2 = this.f2042o.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
        this.f2041n.clear();
        this.f2041n = null;
        this.f2042o.clear();
        this.f2042o = null;
    }

    public InspectorEditor b() {
        if (this.f2036i == null) {
            this.f2036i = new InspectorEditor();
        }
        return this.f2036i;
    }

    public boolean c() {
        return this.f2047t;
    }

    public void d(InspectorEditor editor) {
        this.f2036i = editor;
    }

    public a(String tittle, boolean enabled, InspectorEditor editor) {
        this.f2030c = true;
        this.f2031d = true;
        this.f2028a = tittle;
        this.f2031d = false;
        this.f2030c = enabled;
        d(editor);
    }

    public a(String tittle, boolean enabled, D5.h enableCallback) {
        this.f2030c = true;
        this.f2031d = true;
        this.f2028a = tittle;
        this.f2034g = enableCallback;
        this.f2031d = true;
        this.f2030c = enabled;
        d(null);
    }

    public a(String tittle, boolean enabled, D5.h enableCallback, InspectorEditor editor) {
        this.f2030c = true;
        this.f2031d = true;
        this.f2028a = tittle;
        this.f2034g = enableCallback;
        this.f2031d = true;
        this.f2030c = enabled;
        d(editor);
    }

    public a(String tittle, boolean enabled, D5.h enableCallback, InspectorEditor editor, D5.g insComponentCallbacks) {
        this.f2030c = true;
        this.f2031d = true;
        this.f2028a = tittle;
        this.f2034g = enableCallback;
        this.f2031d = true;
        this.f2030c = enabled;
        d(editor);
        this.f2035h = insComponentCallbacks;
    }
}
