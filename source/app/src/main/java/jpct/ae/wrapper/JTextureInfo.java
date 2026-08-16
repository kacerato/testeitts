package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.TextureInfo;

@BA.ShortName("JpctTextureInfo")
public class JTextureInfo extends AbsObjectWrapper<TextureInfo> {
    public static final int MAX_PHYSICAL_TEXTURE_STAGES() {
        return 4;
    }

    public static final int MODE_ADD() {
        return 2;
    }

    public static final int MODE_BLEND() {
        return 4;
    }

    public static final int MODE_MODULATE() {
        return 1;
    }

    public static final int MODE_REPLACE() {
        return 3;
    }

    public void Initialize(int i10) {
        setObject(new TextureInfo(i10));
    }

    public void Initialize2(int i10, float f10, float f11, float f12, float f13, float f14, float f15) {
        setObject(new TextureInfo(i10, f10, f11, f12, f13, f14, f15));
    }

    public void add(int i10, int i11) {
        ((TextureInfo) getObject()).add(i10, i11);
    }

    public void add2(int i10, float f10, float f11, float f12, float f13, float f14, float f15, int i11) {
        ((TextureInfo) getObject()).add(i10, f10, f11, f12, f13, f14, f15, i11);
    }

    public void set(int i10, int i11, int i12) {
        ((TextureInfo) getObject()).set(i10, i11, i12);
    }

    public void set2(int i10, int i11, float f10, float f11, float f12, float f13, float f14, float f15, int i12) {
        ((TextureInfo) getObject()).set(i10, i11, f10, f11, f12, f13, f14, f15, i12);
    }
}
