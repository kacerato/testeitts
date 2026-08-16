package a4;

import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import java.util.List;

public class C3580b {

    public String[] f31834a;

    public InterfaceC3579a f31835b;

    public a f31836c = a.DOWN;

    public Object f31837d;

    public EditorPanel f31838e;

    public enum a {
        DOWN,
        PRESSED
    }

    public C3580b() {
    }

    public static String[] a(String savedName) {
        return savedName.split("\\s\\+\\s");
    }

    public C3580b clone() {
        C3580b c3580b = new C3580b();
        c3580b.i(this.f31834a);
        c3580b.j(this.f31835b);
        return c3580b;
    }

    public EditorPanel c() {
        return this.f31838e;
    }

    public String[] d() {
        return this.f31834a;
    }

    public InterfaceC3579a e() {
        return this.f31835b;
    }

    public a f() {
        return this.f31836c;
    }

    public C3580b g(EditorPanel editorPanel) {
        this.f31838e = editorPanel;
        return this;
    }

    public C3580b h(List<String> keys) {
        keys.getClass();
        if (keys.isEmpty()) {
            throw new RuntimeException();
        }
        this.f31834a = new String[keys.size()];
        for (int i10 = 0; i10 < keys.size(); i10++) {
            this.f31834a[i10] = keys.get(i10);
        }
        return this;
    }

    public C3580b i(String... keys) {
        keys.getClass();
        if (keys.length == 0) {
            throw new RuntimeException();
        }
        this.f31834a = keys;
        return this;
    }

    public C3580b j(InterfaceC3579a listener) {
        listener.getClass();
        this.f31835b = listener;
        return this;
    }

    public C3580b k(a mode) {
        this.f31836c = mode;
        return this;
    }

    public C3580b(List<String> keys, InterfaceC3579a listener) {
        keys.getClass();
        listener.getClass();
        if (!keys.isEmpty()) {
            h(keys);
            this.f31835b = listener;
            return;
        }
        throw new RuntimeException();
    }

    public C3580b(String... keys) {
        keys.getClass();
        this.f31834a = keys;
    }
}
