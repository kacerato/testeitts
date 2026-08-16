package V9;

import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import yb.C16165b;

public class q {

    public ub.g f26714a = null;

    public ub.g f26715b = null;

    public ub.g f26716c = null;

    public ub.g f26717d = null;

    public ub.g f26718e = null;

    public ub.g f26719f = null;

    public ub.g f26720g = null;

    public ub.g f26721h = null;

    public ub.g f26722i = null;

    public ub.g f26723j = null;

    public ub.g f26724k = null;

    public ub.g f26725l = null;

    public ub.g f26726m = null;

    public ub.g f26727n = null;

    public ub.g a() {
        return this.f26720g;
    }

    public ub.g b() {
        return this.f26721h;
    }

    public ub.g c() {
        return this.f26717d;
    }

    public ub.g d() {
        return this.f26716c;
    }

    public ub.g e() {
        return this.f26727n;
    }

    public ub.g f() {
        return this.f26726m;
    }

    public ub.g g() {
        return this.f26723j;
    }

    public ub.g h() {
        return this.f26722i;
    }

    public ub.g i() {
        return this.f26715b;
    }

    public ub.g j() {
        return this.f26725l;
    }

    public ub.g k() {
        return this.f26724k;
    }

    public ub.g l() {
        return this.f26719f;
    }

    public ub.g m() {
        return this.f26718e;
    }

    public void n() {
        TextureConfig textureConfig = new TextureConfig(false, TextureConfig.c.Nearest);
        textureConfig.genMipmaps = false;
        textureConfig.J0(TextureConfig.h.Clamp);
        ub.g v10 = C16165b.v("@@ASSET@@/Engine/UI/theme/sprite_v2.png", textureConfig.a());
        this.f26714a = v10;
        v10.n0(true);
        ub.g v11 = C16165b.v("@@ASSET@@/Engine/UI/theme/panel_v2.png", textureConfig.a());
        this.f26715b = v11;
        v11.n0(true);
        ub.g v12 = C16165b.v("@@ASSET@@/Engine/UI/theme/checkboxOn.png", textureConfig.a());
        this.f26716c = v12;
        v12.n0(true);
        ub.g v13 = C16165b.v("@@ASSET@@/Engine/UI/theme/checkboxOff.png", textureConfig.a());
        this.f26717d = v13;
        v13.n0(true);
        ub.g v14 = C16165b.v("@@ASSET@@/Engine/UI/theme/radioBtnOn.png", textureConfig.a());
        this.f26718e = v14;
        v14.n0(false);
        ub.g v15 = C16165b.v("@@ASSET@@/Engine/UI/theme/radioBtnOff.png", textureConfig.a());
        this.f26719f = v15;
        v15.n0(false);
        ub.g v16 = C16165b.v("@@ASSET@@/Engine/UI/theme/buttonNormal_v2.png", textureConfig.a());
        this.f26720g = v16;
        v16.n0(true);
        ub.g v17 = C16165b.v("@@ASSET@@/Engine/UI/theme/buttonPressed_v2.png", textureConfig.a());
        this.f26721h = v17;
        v17.n0(true);
        this.f26722i = C16165b.v("@@ASSET@@/Engine/UI/theme/joystick_handle_v3.png", textureConfig.a());
        this.f26723j = C16165b.v("@@ASSET@@/Engine/UI/theme/joystick_background_v3.png", textureConfig.a());
        ub.g v18 = C16165b.v("@@ASSET@@/Engine/UI/theme/progressbar_handler_v2.png", textureConfig.a());
        this.f26724k = v18;
        v18.n0(true);
        ub.g v19 = C16165b.v("@@ASSET@@/Engine/UI/theme/progressbar_background_v2.png", textureConfig.a());
        this.f26725l = v19;
        v19.n0(true);
        this.f26726m = C16165b.v("@@ASSET@@/Engine/UI/theme/driving_wheel.png", textureConfig.a());
        this.f26727n = C16165b.v("@@ASSET@@/Engine/UI/theme/circular_progress_bar_handle.png", textureConfig.a());
    }
}
