package H9;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class a {
    public static int a(int x10, int y10, int z10, b data) {
        data.f8308b.s(x10, y10, z10);
        int i10 = data.f8309c;
        data.f8309c = i10 + 1;
        return i10;
    }

    public static Vector2 b(float blockType, float atlasSideCount) {
        float f10 = (int) (blockType / atlasSideCount);
        return new Vector2(((int) ((r1 - f10) * atlasSideCount)) - 1, ((int) (atlasSideCount - f10)) - 1);
    }

    public static void c(b data, int textureIndex) {
        int a10 = a(data.f8312f, data.f8313g, data.f8314h, data);
        int a11 = a(data.f8312f + 1, data.f8313g, data.f8314h, data);
        int a12 = a(data.f8312f + 1, data.f8313g + 1, data.f8314h, data);
        int a13 = a(data.f8312f, data.f8313g + 1, data.f8314h, data);
        data.f8307a.l(a12, a11, a10);
        data.f8307a.l(a10, a13, a12);
        data.f8310d.s(0.0f, 0.0f, -1.0f);
        data.f8310d.s(0.0f, 0.0f, -1.0f);
        data.f8310d.s(0.0f, 0.0f, -1.0f);
        data.f8310d.s(0.0f, 0.0f, -1.0f);
        Vector2 b10 = b(textureIndex, data.f8316j);
        float x10 = b10.getX();
        float y10 = b10.getY();
        float f10 = data.f8316j;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        data.f8311e.m(f11, f12);
        float f13 = 1.0f / f10;
        float f14 = f11 + f13;
        data.f8311e.m(f14, f12);
        float f15 = f12 + f13;
        data.f8311e.m(f14, f15);
        data.f8311e.m(f11, f15);
    }

    public static void d(b data, int textureIndex) {
        int a10 = a(data.f8312f, data.f8313g, data.f8314h, data);
        int a11 = a(data.f8312f + 1, data.f8313g, data.f8314h, data);
        int a12 = a(data.f8312f + 1, data.f8313g, data.f8314h + 1, data);
        int a13 = a(data.f8312f, data.f8313g, data.f8314h + 1, data);
        data.f8307a.l(a10, a11, a12);
        data.f8307a.l(a12, a13, a10);
        data.f8310d.s(0.0f, -1.0f, 0.0f);
        data.f8310d.s(0.0f, -1.0f, 0.0f);
        data.f8310d.s(0.0f, -1.0f, 0.0f);
        data.f8310d.s(0.0f, -1.0f, 0.0f);
        Vector2 b10 = b(textureIndex, data.f8316j);
        float x10 = b10.getX();
        float y10 = b10.getY();
        float f10 = data.f8316j;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        float f13 = 1.0f / f10;
        float f14 = f12 + f13;
        data.f8311e.m(f11, f14);
        float f15 = f13 + f11;
        data.f8311e.m(f15, f14);
        data.f8311e.m(f15, f12);
        data.f8311e.m(f11, f12);
    }

    public static void e(b data, int textureIndex) {
        int a10 = a(data.f8312f, data.f8313g, data.f8314h + 1, data);
        int a11 = a(data.f8312f + 1, data.f8313g, data.f8314h + 1, data);
        int a12 = a(data.f8312f + 1, data.f8313g + 1, data.f8314h + 1, data);
        int a13 = a(data.f8312f, data.f8313g + 1, data.f8314h + 1, data);
        data.f8307a.l(a10, a11, a12);
        data.f8307a.l(a12, a13, a10);
        data.f8310d.s(0.0f, 0.0f, 1.0f);
        data.f8310d.s(0.0f, 0.0f, 1.0f);
        data.f8310d.s(0.0f, 0.0f, 1.0f);
        data.f8310d.s(0.0f, 0.0f, 1.0f);
        Vector2 b10 = b(textureIndex, data.f8316j);
        float x10 = b10.getX();
        float y10 = b10.getY();
        float f10 = data.f8316j;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        data.f8311e.m(f11, f12);
        float f13 = 1.0f / f10;
        float f14 = f11 + f13;
        data.f8311e.m(f14, f12);
        float f15 = f12 + f13;
        data.f8311e.m(f14, f15);
        data.f8311e.m(f11, f15);
    }

    public static void f(b data, int textureIndex) {
        int a10 = a(data.f8312f + 1, data.f8313g, data.f8314h, data);
        int a11 = a(data.f8312f + 1, data.f8313g, data.f8314h + 1, data);
        int a12 = a(data.f8312f + 1, data.f8313g + 1, data.f8314h + 1, data);
        int a13 = a(data.f8312f + 1, data.f8313g + 1, data.f8314h, data);
        data.f8307a.l(a12, a11, a10);
        data.f8307a.l(a10, a13, a12);
        data.f8310d.s(1.0f, 0.0f, 0.0f);
        data.f8310d.s(1.0f, 0.0f, 0.0f);
        data.f8310d.s(1.0f, 0.0f, 0.0f);
        data.f8310d.s(1.0f, 0.0f, 0.0f);
        Vector2 b10 = b(textureIndex, data.f8316j);
        float x10 = b10.getX();
        float y10 = b10.getY();
        float f10 = data.f8316j;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        data.f8311e.m(f11, f12);
        float f13 = 1.0f / f10;
        float f14 = f11 + f13;
        data.f8311e.m(f14, f12);
        float f15 = f12 + f13;
        data.f8311e.m(f14, f15);
        data.f8311e.m(f11, f15);
    }

    public static void g(b data, int textureIndex) {
        int a10 = a(data.f8312f, data.f8313g, data.f8314h, data);
        int a11 = a(data.f8312f, data.f8313g, data.f8314h + 1, data);
        int a12 = a(data.f8312f, data.f8313g + 1, data.f8314h + 1, data);
        int a13 = a(data.f8312f, data.f8313g + 1, data.f8314h, data);
        data.f8307a.l(a10, a11, a12);
        data.f8307a.l(a12, a13, a10);
        data.f8310d.s(-1.0f, 0.0f, 0.0f);
        data.f8310d.s(-1.0f, 0.0f, 0.0f);
        data.f8310d.s(-1.0f, 0.0f, 0.0f);
        data.f8310d.s(-1.0f, 0.0f, 0.0f);
        Vector2 b10 = b(textureIndex, data.f8316j);
        float x10 = b10.getX();
        float y10 = b10.getY();
        float f10 = data.f8316j;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        data.f8311e.m(f11, f12);
        float f13 = 1.0f / f10;
        float f14 = f11 + f13;
        data.f8311e.m(f14, f12);
        float f15 = f12 + f13;
        data.f8311e.m(f14, f15);
        data.f8311e.m(f11, f15);
    }

    public static void h(b data, int textureIndex) {
        int a10 = a(data.f8312f, data.f8313g + 1, data.f8314h, data);
        int a11 = a(data.f8312f + 1, data.f8313g + 1, data.f8314h, data);
        int a12 = a(data.f8312f + 1, data.f8313g + 1, data.f8314h + 1, data);
        int a13 = a(data.f8312f, data.f8313g + 1, data.f8314h + 1, data);
        data.f8307a.l(a12, a11, a10);
        data.f8307a.l(a10, a13, a12);
        data.f8310d.s(0.0f, 1.0f, 0.0f);
        data.f8310d.s(0.0f, 1.0f, 0.0f);
        data.f8310d.s(0.0f, 1.0f, 0.0f);
        data.f8310d.s(0.0f, 1.0f, 0.0f);
        Vector2 b10 = b(textureIndex, data.f8316j);
        float x10 = b10.getX();
        float y10 = b10.getY();
        float f10 = data.f8316j;
        float f11 = x10 / f10;
        float f12 = y10 / f10;
        float f13 = 1.0f / f10;
        float f14 = f12 + f13;
        data.f8311e.m(f11, f14);
        float f15 = f13 + f11;
        data.f8311e.m(f15, f14);
        data.f8311e.m(f15, f12);
        data.f8311e.m(f11, f12);
    }

    public static void i(E9.b data) {
        data.f5724a += 4;
        data.f5725b += 4;
        data.f5727d += 4;
        data.f5726c += 2;
        data.f5728e++;
    }
}
