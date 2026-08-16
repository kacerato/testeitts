package com.itsmagic.engine.Engines.Engine.ImGUI;

import K8.a;
import android.util.Log;
import com.google.android.material.timepicker.f;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.Anchor;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIImageHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.UVec2I;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import ub.p;

public class ImGui {

    public static final String f78138c = "ImGuiAdapter";

    public long f78139a;

    public boolean f78140b = false;

    static {
        System.loadLibrary("imgui-adapter");
    }

    public ImGui() {
        this.f78139a = 0L;
        long nativeCreate = nativeCreate();
        this.f78139a = nativeCreate;
        if (nativeCreate == 0) {
            Log.e(f78138c, "Failed to create native ImGui adapter");
        }
    }

    public static void B(Anchor anchor) {
        nativePopAnchors(anchor.f78236tl, anchor.f78235tc, anchor.tr, anchor.f78234cl, anchor.f78233cc, anchor.cr, anchor.f78232bl, anchor.f78231bc, anchor.br);
    }

    public static void C(Anchor anchor) {
        nativePushAnchors(anchor.f78236tl, anchor.f78235tc, anchor.tr, anchor.f78234cl, anchor.f78233cc, anchor.cr, anchor.f78232bl, anchor.f78231bc, anchor.br);
    }

    public static String D(ByteBuffer buf) {
        int capacity = buf.capacity();
        int i10 = 0;
        while (i10 < capacity && buf.get(i10) != 0) {
            i10++;
        }
        byte[] bArr = new byte[i10];
        buf.rewind();
        buf.get(bArr, 0, i10);
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static void F() {
        nativeSameLineSimple();
    }

    public static void G(int x10, int y10) {
        nativeSetCursorPos(x10, y10);
    }

    public static void H(UVec2I pos) {
        nativeSetCursorPos(pos.e(), pos.f());
    }

    public static boolean I(String label, p textureInstance, float borderPX, float paddingx, float paddingy, ColorINT tint, ColorINT textColor, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText) {
        return K(label, textureInstance, borderPX, paddingx, paddingy, tint, textColor, fontSize, sizeX, sizeY, fontPtr, autoFitText, false, false);
    }

    public static boolean J(String label, p textureInstance, float borderPX, float paddingx, float paddingy, ColorINT tint, ColorINT textColor, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText, UIImageHandler imageHandler) {
        Rect m10 = imageHandler != null ? imageHandler.m() : null;
        return m10 != null ? L(label, textureInstance, borderPX, paddingx, paddingy, tint, textColor, fontSize, sizeX, sizeY, fontPtr, autoFitText, false, false, m10.d(), m10.e(), m10.c(), m10.b()) : I(label, textureInstance, borderPX, paddingx, paddingy, tint, textColor, fontSize, sizeX, sizeY, fontPtr, autoFitText);
    }

    public static boolean K(String label, p textureInstance, float borderPX, float paddingx, float paddingy, ColorINT tint, ColorINT textColor, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText, boolean flipX, boolean flipY) {
        return L(label, textureInstance, borderPX, paddingx, paddingy, tint, textColor, fontSize, sizeX, sizeY, fontPtr, autoFitText, flipX, flipY, 0.0f, 0.0f, 1.0f, 1.0f);
    }

    public static boolean L(String label, p textureInstance, float borderPX, float paddingx, float paddingy, ColorINT tint, ColorINT textColor, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY) {
        return nativeImageButtonNinePatch(textureInstance != null ? textureInstance.q() : 0L, textureInstance != null ? textureInstance.getWidth() : 0, textureInstance != null ? textureInstance.getHeight() : 0, label != null ? label : "", borderPX, paddingx, paddingy, tint != null ? tint.w() : 0.0f, tint != null ? tint.u() : 0.0f, tint != null ? tint.s() : 0.0f, tint != null ? tint.r() : 0.0f, textColor != null ? textColor.w() : 0.0f, textColor != null ? textColor.u() : 0.0f, textColor != null ? textColor.s() : 0.0f, textColor != null ? textColor.r() : 0.0f, fontSize, sizeX, sizeY, fontPtr, autoFitText, flipX, flipY, offsetX, offsetY, tillingX, tillingY);
    }

    public static boolean M(String label, float[] value, float min, float max) {
        return nativeSliderFloat(label, value, min, max, "%.3f");
    }

    public static boolean N(String label, int[] value, int min, int max) {
        return nativeSliderInt(label, value, min, max, f.f65291j);
    }

    public static void Q(String label, ColorINT colorINT, boolean wrapped, float fontScale, float sizeX, float sizeY, float alignX, float alignY, long fontPtr) {
        nativeText(label, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r(), wrapped, fontScale, sizeX, sizeY, alignX, alignY, fontPtr);
    }

    public static void R(String label, ColorINT colorINT, ColorINT outlineColor, float outlineDP, boolean wrapped, float fontScale, float sizeX, float sizeY, float alignX, float alignY, long fontPtr) {
        if (outlineDP <= 0.0f || outlineColor == null) {
            Q(label, colorINT, wrapped, fontScale, sizeX, sizeY, alignX, alignY, fontPtr);
            return;
        }
        int ceil = (int) Math.ceil(outlineDP);
        if (ceil <= 0) {
            Q(label, colorINT, wrapped, fontScale, sizeX, sizeY, alignX, alignY, fontPtr);
        } else {
            nativeTextOutlined(label, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r(), outlineColor.w(), outlineColor.u(), outlineColor.s(), outlineColor.r(), wrapped, fontScale, sizeX, sizeY, alignX, alignY, fontPtr, ceil);
        }
    }

    public static void S(ByteBuffer buf, String s10) {
        byte[] bytes = s10 == null ? new byte[0] : s10.getBytes(StandardCharsets.UTF_8);
        int min = Math.min(bytes.length, buf.capacity() - 1);
        buf.clear();
        buf.put(bytes, 0, min);
        buf.put((byte) 0);
        while (true) {
            min++;
            if (min >= buf.capacity()) {
                buf.rewind();
                return;
            }
            buf.put((byte) 0);
        }
    }

    public static long a(String absPath, float sizePx, boolean setAsDefault) {
        if (a.r()) {
            return nativeAddFontFromFile(absPath, sizePx, setAsDefault);
        }
        throw new IllegalStateException("Call from opengl thread");
    }

    public static void b(String label, ColorINT normal, ColorINT hover, ColorINT active) {
        nativeButtonColored(label, normal.w(), normal.u(), normal.s(), normal.r(), hover.w(), hover.u(), hover.s(), hover.r(), active.w(), active.u(), active.s(), active.r());
    }

    public static boolean c(String label, p textureInstance, float paddingx, float paddingy, ColorINT tint, ColorINT textColor, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText) {
        return nativeImageButtonText(textureInstance != null ? textureInstance.q() : 0L, textureInstance != null ? textureInstance.getWidth() : 0, textureInstance != null ? textureInstance.getHeight() : 0, label != null ? label : "", paddingx, paddingy, tint != null ? tint.w() : 0.0f, tint != null ? tint.u() : 0.0f, tint != null ? tint.s() : 0.0f, tint != null ? tint.r() : 0.0f, textColor != null ? textColor.w() : 0.0f, textColor != null ? textColor.u() : 0.0f, textColor != null ? textColor.s() : 0.0f, textColor != null ? textColor.r() : 0.0f, fontSize, sizeX, sizeY, fontPtr, autoFitText);
    }

    public static boolean d(String label, p textureInstance, float paddingx, float paddingy, ColorINT tint, ColorINT textColor, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText, UIImageHandler imageHandler) {
        Rect m10 = imageHandler != null ? imageHandler.m() : null;
        return m10 != null ? L(label, textureInstance, 0.0f, paddingx, paddingy, tint, textColor, fontSize, sizeX, sizeY, fontPtr, autoFitText, false, false, m10.d(), m10.e(), m10.c(), m10.b()) : c(label, textureInstance, paddingx, paddingy, tint, textColor, fontSize, sizeX, sizeY, fontPtr, autoFitText);
    }

    public static void e(long fontPtr) {
        if (!a.r()) {
            throw new IllegalStateException("Call from opengl thread");
        }
        nativeDeleteFont(fontPtr);
    }

    public static void g(p textureInstance, float sizeX, float sizeY) {
        h(textureInstance, sizeX, sizeY, false, false);
    }

    public static void h(p textureInstance, float sizeX, float sizeY, boolean flipX, boolean flipY) {
        i(textureInstance, sizeX, sizeY, flipX, flipY, 0.0f, 0.0f, 1.0f, 1.0f);
    }

    public static void i(p textureInstance, float sizeX, float sizeY, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY) {
        nativeImage(textureInstance.q(), sizeX, sizeY, 1.0f, 1.0f, 1.0f, 1.0f, flipX, flipY, offsetX, offsetY, tillingX, tillingY);
    }

    public static void j(p textureInstance, float sizeX, float sizeY, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY, UIImageHandler imageHandler) {
        float f10;
        float f11;
        float f12;
        float f13;
        Rect m10 = imageHandler != null ? imageHandler.m() : null;
        if (m10 != null) {
            float d10 = offsetX + m10.d();
            float e10 = offsetY + m10.e();
            float c10 = m10.c() * tillingX;
            f13 = m10.b() * tillingY;
            f10 = d10;
            f11 = e10;
            f12 = c10;
        } else {
            f10 = offsetX;
            f11 = offsetY;
            f12 = tillingX;
            f13 = tillingY;
        }
        i(textureInstance, sizeX, sizeY, flipX, flipY, f10, f11, f12, f13);
    }

    public static void k(p textureInstance, ColorINT tint, float sizeX, float sizeY) {
        m(textureInstance, tint, sizeX, sizeY, false, false);
    }

    public static void l(p textureInstance, ColorINT tint, float sizeX, float sizeY, UIImageHandler imageHandler) {
        o(textureInstance, tint, sizeX, sizeY, false, false, 0.0f, 0.0f, 1.0f, 1.0f, imageHandler);
    }

    public static void m(p textureInstance, ColorINT tint, float sizeX, float sizeY, boolean flipX, boolean flipY) {
        n(textureInstance, tint, sizeX, sizeY, flipX, flipY, 0.0f, 0.0f, 1.0f, 1.0f);
    }

    public static void n(p textureInstance, ColorINT tint, float sizeX, float sizeY, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY) {
        nativeImage(textureInstance.q(), sizeX, sizeY, tint.w(), tint.u(), tint.s(), tint.r(), flipX, flipY, offsetX, offsetY, tillingX, tillingY);
    }

    private static native long nativeAddFontFromFile(String absPath, float sizePx, boolean setAsDefault);

    public static native boolean nativeBegin(String name, int flags);

    public static native boolean nativeBeginChild(String strId, float width, float height, boolean border, int flags);

    public static native void nativeBeginScreen();

    public static native boolean nativeButton(String label);

    public static native boolean nativeButtonColored(String label, float nr, float ng2, float nb2, float na2, float hr, float hg2, float hb2, float ha2, float ar, float ag2, float ab2, float aa2);

    public static native void nativeCalcImageButtonNinePatchSize(String label, float fontScale, float paddingXPx, float paddingYPx, float sizeX, float sizeY, long fontPtr, float[] outputArray);

    public static native void nativeCalcTextSize(String text, float fontScale, float sizeX, float sizeY, boolean wrapped, long fontPtr, float[] output);

    public static native boolean nativeCheckbox(String label, boolean[] value);

    public static native boolean nativeColorEdit3(String label, float[] rgb);

    private static native long nativeCreate();

    private static native void nativeDeleteFont(long fontPtr);

    private static native void nativeDestroy(long handle);

    public static native void nativeDummy(float w10, float h10);

    public static native void nativeEnd();

    public static native void nativeEndChild();

    public static native void nativeEndScreen();

    public static native void nativeForegroundImage(int x10, int y10, int w10, int h10, long texId, boolean flipX, boolean flipY);

    public static native void nativeGetCursorPos(float[] outXY);

    public static native void nativeGetItemRectMax(int[] outXY);

    public static native void nativeGetItemRectMin(int[] outXY);

    public static native void nativeGetItemRectSize(int[] outXY);

    public static native void nativeImage(long textureId, float sizeX, float sizeY, float r10, float g10, float b10, float a10, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY);

    public static native boolean nativeImageButtonNinePatch(long texId, int texW, int texH, String label, float borderPx, float paddingXPx, float paddingYPx, float tintR, float tintG, float tintB, float tintA, float textR, float textG, float textB, float textA, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY);

    public static native boolean nativeImageButtonText(long texId, int texW, int texH, String label, float paddingXPx, float paddingYPx, float tintR, float tintG, float tintB, float tintA, float textR, float textG, float textB, float textA, float fontSize, float sizeX, float sizeY, long fontPtr, boolean autoFitText);

    public static native void nativeImageRotated(long textureId, float sizeX, float sizeY, float r10, float g10, float b10, float a10, float angle, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY);

    public static native void nativeIndent(float indentW);

    public static native boolean nativeInputTextEx(ByteBuffer buffer, int flags, boolean editable, ByteBuffer outState, float sizeX, float sizeY, float alignX, float alignY, long fontPtr, float r10, float g10, float b10, float a10, float fontScale);

    public static native void nativeNewLine();

    public static native void nativeOffsetPos(float x10, float y10);

    private static native void nativeOnKeyEvent(long handle, int keyCode, int unicodeChar, boolean down);

    private static native void nativeOnResize(long handle, int width, int height);

    private static native void nativeOnTouch(long handle, float x10, float y10, int action);

    private static native void nativeOutputFrame(long handle, boolean g_UsePremultiplied);

    public static native void nativePopAnchors(boolean tl2, boolean tc2, boolean tr, boolean cl2, boolean cc2, boolean cr, boolean bl2, boolean bc2, boolean br);

    public static native void nativePopClipRect();

    public static native void nativeProgressBar(float fraction, float width, float height, String overlay);

    public static native void nativePushAnchors(boolean tl2, boolean tc2, boolean tr, boolean cl2, boolean cc2, boolean cr, boolean bl2, boolean bc2, boolean br);

    public static native void nativePushClipRect(float minX, float minY, float maxX, float maxY, boolean intersectWithCurrent);

    public static native boolean nativeRadioButton(String label, boolean active);

    private static native void nativeRender(long handle);

    public static native void nativeSameLine(float offsetFromStartX, float spacing);

    public static native void nativeSameLineSimple();

    public static native void nativeSeparator();

    public static native void nativeSetCursorPos(float x10, float y10);

    public static native void nativeSetNextWindowPos(float x10, float y10, int cond);

    public static native void nativeSetNextWindowSize(float width, float height, int cond);

    public static native boolean nativeSliderFloat(String label, float[] value, float min, float max, String format);

    public static native boolean nativeSliderInt(String label, int[] value, int min, int max, String format);

    public static native void nativeSpacing();

    private static native boolean nativeStart(long handle);

    private static native void nativeStartFrame(long handle, float pxSize);

    public static native void nativeText(String text, float r10, float g10, float b10, float a10, boolean wrapped, float fontScale, float sizeX, float sizeY, float alignX, float alignY, long fontPtr);

    public static native void nativeTextOutlined(String text, float r10, float g10, float b10, float a10, float outlineR, float outlineG, float outlineB, float outlineA, boolean wrapped, float fontScale, float sizeX, float sizeY, float alignX, float alignY, long fontPtr, int outlineRadius);

    public static native void nativeUnindent(float indentW);

    public static void o(p textureInstance, ColorINT tint, float sizeX, float sizeY, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY, UIImageHandler imageHandler) {
        float f10;
        float f11;
        float f12;
        float f13;
        Rect m10 = imageHandler != null ? imageHandler.m() : null;
        if (m10 != null) {
            float d10 = offsetX + m10.d();
            float e10 = offsetY + m10.e();
            float c10 = m10.c() * tillingX;
            f13 = m10.b() * tillingY;
            f10 = d10;
            f11 = e10;
            f12 = c10;
        } else {
            f10 = offsetX;
            f11 = offsetY;
            f12 = tillingX;
            f13 = tillingY;
        }
        n(textureInstance, tint, sizeX, sizeY, flipX, flipY, f10, f11, f12, f13);
    }

    public static void p(p textureInstance, ColorINT tint, float sizeX, float sizeY, float angle) {
        q(textureInstance, tint, sizeX, sizeY, angle, false, false);
    }

    public static void q(p textureInstance, ColorINT tint, float sizeX, float sizeY, float angle, boolean flipX, boolean flipY) {
        r(textureInstance, tint, sizeX, sizeY, angle, flipX, flipY, 0.0f, 0.0f, 1.0f, 1.0f);
    }

    public static void r(p textureInstance, ColorINT tint, float sizeX, float sizeY, float angle, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY) {
        nativeImageRotated(textureInstance.q(), sizeX, sizeY, tint.w(), tint.u(), tint.s(), tint.r(), angle, flipX, flipY, offsetX, offsetY, tillingX, tillingY);
    }

    public static void s(p textureInstance, ColorINT tint, float sizeX, float sizeY, float angle, boolean flipX, boolean flipY, float offsetX, float offsetY, float tillingX, float tillingY, UIImageHandler imageHandler) {
        float f10;
        float f11;
        float f12;
        float f13;
        Rect m10 = imageHandler != null ? imageHandler.m() : null;
        if (m10 != null) {
            float d10 = offsetX + m10.d();
            float e10 = offsetY + m10.e();
            float c10 = m10.c() * tillingX;
            f13 = m10.b() * tillingY;
            f10 = d10;
            f11 = e10;
            f12 = c10;
        } else {
            f10 = offsetX;
            f11 = offsetY;
            f12 = tillingX;
            f13 = tillingY;
        }
        r(textureInstance, tint, sizeX, sizeY, angle, flipX, flipY, f10, f11, f12, f13);
    }

    public static boolean t(ByteBuffer buffer, int flags, boolean editable, ByteBuffer outState, float sizeX, float sizeY, float alignX, float alignY, long fontPtr, ColorINT colorINT, float fontScale) {
        return nativeInputTextEx(buffer, flags, editable, outState, sizeX, sizeY, alignX, alignY, fontPtr, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r(), fontScale);
    }

    public static ByteBuffer v() {
        return ByteBuffer.allocateDirect(8).order(ByteOrder.nativeOrder());
    }

    public static ByteBuffer w(int capacityChars) {
        if (capacityChars < 1) {
            capacityChars = 1;
        }
        int i10 = capacityChars * 4;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            allocateDirect.put((byte) 0);
        }
        allocateDirect.rewind();
        return allocateDirect;
    }

    public void A(boolean g_UsePremultiplied) {
        long j10 = this.f78139a;
        if (j10 == 0 || !this.f78140b) {
            return;
        }
        nativeOutputFrame(j10, g_UsePremultiplied);
    }

    public void E() {
        long j10 = this.f78139a;
        if (j10 == 0 || !this.f78140b) {
            return;
        }
        nativeRender(j10);
    }

    public boolean O() {
        long j10 = this.f78139a;
        if (j10 == 0) {
            Log.e(f78138c, "Native handle is invalid");
            return false;
        }
        boolean nativeStart = nativeStart(j10);
        if (nativeStart) {
            this.f78140b = true;
            Log.i(f78138c, "ImGui started successfully");
        } else {
            Log.e(f78138c, "Failed to start ImGui");
        }
        return nativeStart;
    }

    public void P(float pxSize) {
        long j10 = this.f78139a;
        if (j10 == 0 || !this.f78140b) {
            return;
        }
        nativeStartFrame(j10, pxSize);
    }

    public void f() {
        long j10 = this.f78139a;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.f78139a = 0L;
            this.f78140b = false;
            Log.i(f78138c, "ImGui adapter destroyed");
        }
    }

    public boolean u() {
        return this.f78140b;
    }

    public void x(int keyCode, int unicodeChar, boolean down) {
        long j10 = this.f78139a;
        if (j10 != 0) {
            nativeOnKeyEvent(j10, keyCode, unicodeChar, down);
        }
    }

    public void y(int width, int height) {
        long j10 = this.f78139a;
        if (j10 == 0 || !this.f78140b) {
            return;
        }
        nativeOnResize(j10, width, height);
    }

    public void z(float x10, float y10, int action) {
        long j10 = this.f78139a;
        if (j10 == 0 || !this.f78140b) {
            return;
        }
        nativeOnTouch(j10, x10, y10, action);
    }
}
