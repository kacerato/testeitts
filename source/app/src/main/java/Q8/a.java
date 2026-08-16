package Q8;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class a {
    public static boolean a(ColorINT a10, Point3 b10) {
        return a10 != null && b10 != null && a10.C() == b10.getX() && a10.x() == b10.getY() && a10.p() == b10.getZ();
    }

    public static boolean b(ColorINT a10, ColorINT b10) {
        return (a10 == null || b10 == null || a10.intColor != b10.intColor) ? false : true;
    }

    public static boolean c(ColorINT a10, Vector2 b10) {
        return a10 != null && b10 != null && a10.w() == b10.f79838x && a10.u() == b10.f79839y;
    }

    public static boolean d(ColorINT a10, Vector3 b10) {
        return a10 != null && b10 != null && a10.w() == b10.getX() && a10.u() == b10.getY() && a10.s() == b10.getZ();
    }

    public static ColorINT e(ColorINT start, ColorINT end, float progression) {
        return f(start, end, progression, new ColorINT());
    }

    public static ColorINT f(ColorINT start, ColorINT end, float progression, ColorINT out) {
        if (start != null && end != null) {
            out.Y((int) (start.o() + ((end.o() - start.o()) * progression)), (int) (start.C() + ((end.C() - start.C()) * progression)), (int) (start.x() + ((end.x() - start.x()) * progression)), (int) (start.p() + ((end.p() - start.p()) * progression)));
        } else if (start != null) {
            out.K(start);
        } else if (end != null) {
            out.K(end);
        }
        return out;
    }

    public static void g(ColorINT start, ColorINT end, float progression) {
        if (start == null || end == null) {
            return;
        }
        start.Y((int) (start.o() + ((end.o() - start.o()) * progression)), (int) (start.C() + ((end.C() - start.C()) * progression)), (int) (start.x() + ((end.x() - start.x()) * progression)), (int) (start.p() + ((end.p() - start.p()) * progression)));
    }
}
