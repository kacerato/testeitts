package p8;

import JAVARuntime.ObjectsPanelMenu;
import android.view.View;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import dd.C12908b;
import g6.C13297e;
import java.util.LinkedList;

public class C14941e extends C13297e {

    public final ObjectsPanelMenu f103684a;

    public class a implements dd.d {

        public final GameObject f103685a;

        public a(final GameObject val$object) {
            this.f103685a = val$object;
        }

        @Override
        public void onSelected(View view) {
            C14941e.this.f103684a.onClick(this.f103685a.W1());
        }
    }

    public class b implements dd.d {

        public final GameObject f103687a;

        public b(final GameObject val$object) {
            this.f103687a = val$object;
        }

        @Override
        public void onSelected(View view) {
            C14941e.this.f103684a.onClick(this.f103687a.W1());
        }
    }

    public C14941e(ObjectsPanelMenu menu) {
        this.f103684a = menu;
    }

    @Override
    public C12908b a(GameObject object) {
        ObjectsPanelMenu objectsPanelMenu = this.f103684a;
        if (objectsPanelMenu == null) {
            return null;
        }
        C12908b c12908b = null;
        C12908b c12908b2 = null;
        for (String str : objectsPanelMenu.getMenu().split("/")) {
            if (c12908b2 == null) {
                c12908b2 = new C12908b(str, new a(object));
            } else {
                c12908b2.f84528a = C12908b.EnumC1575b.Folder;
                c12908b2.f84531d = null;
                c12908b2.f84532e = null;
                C12908b c12908b3 = new C12908b(str, new b(object));
                if (c12908b2.f84530c == null) {
                    c12908b2.f84530c = new LinkedList();
                }
                c12908b2.f84530c.add(c12908b3);
                c12908b2 = c12908b3;
            }
            if (c12908b == null) {
                c12908b = c12908b2;
            }
        }
        return c12908b;
    }
}
