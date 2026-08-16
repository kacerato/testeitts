package V9;

import C5.b;
import F5.c;
import JAVARuntime.GUIUtils;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;
import org.eclipse.jdt.core.JavaCore;
import rc.C15169a;

public class m {

    public class a implements c.o0 {

        public final ColorINT f26702a;

        public final ColorINT f26703b;

        public class C0734a implements D5.h {
            public C0734a() {
            }

            @Override
            public Variable get() {
                ColorINT colorINT = a.this.f26702a;
                return colorINT != null ? new Variable("temp", colorINT) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    a.this.f26702a.intColor = variable.color_value.intColor;
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                ColorINT colorINT = a.this.f26703b;
                return colorINT != null ? new Variable("temp", colorINT) : new Variable("", "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    a.this.f26703b.intColor = variable.color_value.intColor;
                }
            }
        }

        public a(final ColorINT val$normalColor, final ColorINT val$pressedColor) {
            this.f26702a = val$normalColor;
            this.f26703b = val$pressedColor;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C0734a c0734a = new C0734a();
            b.a aVar = b.a.Color;
            entries.add(new C5.b(c0734a, JavaCore.NORMAL, aVar));
            entries.add(new C5.b(new b(), "pressed", aVar));
            return entries;
        }
    }

    public static Vector2 a(tc.h touch) {
        if (touch != null) {
            return touch.d();
        }
        throw new NullPointerException("touch can`t be null");
    }

    public static C5.b b(String tittle, ColorINT normalColor, ColorINT pressedColor) {
        return F5.c.e(tittle, new a(normalColor, pressedColor));
    }

    public static tc.h c(UIController controller, W9.c rect, GUIUtils.TouchFilter touchFilter) {
        List<tc.h> list = C15169a.f108802k;
        for (int i10 = 0; i10 < list.size(); i10++) {
            tc.h hVar = list.get(i10);
            if (hVar != null && GUIUtils.applyFilter(hVar, touchFilter) && ((!hVar.q() || !N7.c.D().W(hVar)) && e(hVar, controller, rect))) {
                return hVar;
            }
        }
        return null;
    }

    public static boolean d(tc.h touch, W9.c controllerRect, W9.c rect) {
        if (touch == null) {
            throw new NullPointerException("touch can`t be null");
        }
        if (controllerRect == null) {
            throw new NullPointerException("controllerRect can`t be null");
        }
        if (rect == null) {
            throw new NullPointerException("rect can`t be null");
        }
        Vector2 a10 = a(touch);
        float x10 = a10.getX();
        float y10 = a10.getY();
        if (touch instanceof r) {
            x10 = touch.g().f79838x / controllerRect.c();
            y10 = touch.g().f79839y / controllerRect.b();
        }
        return x10 >= ((float) rect.d()) / ((float) controllerRect.c()) && x10 <= ((float) rect.f()) / ((float) controllerRect.c()) && y10 >= ((float) rect.e()) / ((float) controllerRect.b()) && y10 <= ((float) rect.g()) / ((float) controllerRect.b());
    }

    public static boolean e(tc.h touch, UIController controller, W9.c rect) {
        if (touch == null) {
            throw new NullPointerException("touch can`t be null");
        }
        if (controller == null) {
            throw new NullPointerException("controller can`t be null");
        }
        if (rect == null) {
            throw new NullPointerException("rect can`t be null");
        }
        W9.c controllerScreenRect = controller.getControllerScreenRect();
        Vector2 a10 = a(touch);
        float x10 = a10.getX();
        float y10 = a10.getY();
        if (touch instanceof r) {
            x10 = touch.g().f79838x / controllerScreenRect.c();
            y10 = touch.g().f79839y / controllerScreenRect.b();
        }
        return x10 >= ((float) rect.d()) / ((float) controllerScreenRect.c()) && x10 <= ((float) rect.f()) / ((float) controllerScreenRect.c()) && y10 >= ((float) rect.e()) / ((float) controllerScreenRect.b()) && y10 <= ((float) rect.g()) / ((float) controllerScreenRect.b());
    }
}
