package X4;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class a {

    public float f27925a;

    public double f27926b;

    public double f27927c;

    public double f27928d;

    public a(Vector2 startCoord) {
        this(startCoord.getX(), startCoord.getY());
    }

    public final double a(double angle1, double angle2) {
        double d10 = angle2 - angle1;
        while (d10 > 3.141592653589793d) {
            d10 -= 6.283185307179586d;
        }
        while (d10 < -3.141592653589793d) {
            d10 += 6.283185307179586d;
        }
        return d10;
    }

    public float b() {
        return (float) Math.toDegrees(this.f27928d);
    }

    public float c() {
        return this.f27925a;
    }

    public float d() {
        return (float) Math.toDegrees(this.f27927c);
    }

    public void e(double dir2x, double dir2y) {
        double atan2 = Math.atan2(dir2y, dir2x);
        double a10 = a(this.f27926b, atan2);
        this.f27928d = a10;
        this.f27927c += a10;
        this.f27926b = atan2;
    }

    public void f(Vector2 otherCoord) {
        e(otherCoord.getX(), otherCoord.getY());
    }

    public a(double initialDir1x, double initialDir1y) {
        this.f27927c = 0.0d;
        double atan2 = Math.atan2(initialDir1y, initialDir1x);
        this.f27926b = atan2;
        this.f27925a = (float) Math.toDegrees(atan2);
    }
}
