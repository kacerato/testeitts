package tc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class i {

    public Vector2 f117322a;

    public Vector2 f117323b;

    public i(Vector2 slide1, Vector2 slide2) {
        if (this.f117323b == null) {
            this.f117323b = new Vector2();
        }
        float f10 = slide1.f79838x;
        if (f10 == 0.0f) {
            this.f117323b.f79838x = 0.0f;
        } else if (f10 > 0.0f) {
            float f11 = slide2.f79838x;
            if (f11 == 0.0f) {
                this.f117323b.f79838x = 0.0f;
            } else if (f11 > 0.0f) {
                this.f117323b.f79838x = b(f10, f11);
            } else {
                this.f117323b.f79838x = 0.0f;
            }
        } else {
            float f12 = slide2.f79838x;
            if (f12 < 0.0f) {
                this.f117323b.f79838x = c(f10, f12);
            } else {
                this.f117323b.f79838x = 0.0f;
            }
        }
        float f13 = slide1.f79839y;
        if (f13 == 0.0f) {
            this.f117323b.f79839y = 0.0f;
            return;
        }
        if (f13 <= 0.0f) {
            float f14 = slide2.f79839y;
            if (f14 >= 0.0f) {
                this.f117323b.f79839y = 0.0f;
                return;
            } else {
                this.f117323b.f79839y = c(f13, f14);
                return;
            }
        }
        float f15 = slide2.f79839y;
        if (f15 == 0.0f) {
            this.f117323b.f79839y = 0.0f;
        } else if (f15 <= 0.0f) {
            this.f117323b.f79839y = 0.0f;
        } else {
            this.f117323b.f79839y = b(f13, f15);
        }
    }

    public Vector2 a() {
        if (this.f117323b == null) {
            this.f117323b = new Vector2();
        }
        return this.f117323b;
    }

    public final float b(float one, float second) {
        return one > second ? one : second;
    }

    public final float c(float one, float second) {
        return one < second ? one : second;
    }

    public Vector2 d() {
        if (this.f117322a == null) {
            this.f117322a = new Vector2();
        }
        return this.f117322a;
    }

    public final boolean e(Vector2 slide1, Vector2 slide2) {
        return (slide1.f79838x * slide2.f79838x) + (slide1.f79839y * slide2.f79839y) > 0.0f;
    }
}
