package com.itsmagic.engine.Engines.Engine.NoCode;

import Ic.C2629h;
import Ic.C2632k;
import Tc.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import ga.H;

public class NoCodeInputDefault {

    public transient Object f79016a;

    @Expose
    public int inputIndex;

    @Expose
    public float f79017w;

    @Expose
    public float f79018x;

    @Expose
    public float f79019y;

    @Expose
    public float f79020z;

    @Expose
    public H type = H.NUMBER;

    @Expose
    public String fileIPP = "";

    @Expose
    public String stringValue = "";

    @Expose
    public String jsonData = "";

    public static String a(float v10) {
        return b.p(v10, 6);
    }

    public static NoCodeInputDefault c(int inputIndex, String animationFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.ANIMATION_FILE;
        if (animationFile == null) {
            animationFile = "";
        }
        noCodeInputDefault.fileIPP = animationFile;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault d(int inputIndex, String animationMaskFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.ANIMATION_MASK_FILE;
        if (animationMaskFile == null) {
            animationMaskFile = "";
        }
        noCodeInputDefault.fileIPP = animationMaskFile;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault e(int inputIndex, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.BIG_NUMBER;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault f(int inputIndex, boolean value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.BOOLEAN;
        noCodeInputDefault.stringValue = String.valueOf(value);
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault g(int inputIndex, float r10, float g10, float b10, float a10) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.COLOR;
        noCodeInputDefault.f79018x = r10;
        noCodeInputDefault.f79019y = g10;
        noCodeInputDefault.f79020z = b10;
        noCodeInputDefault.f79017w = a10;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault h(int inputIndex, H type, String componentReferenceJson, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        if (type == null) {
            type = H.ANY_COMPONENT;
        }
        noCodeInputDefault.type = type;
        if (componentReferenceJson == null) {
            componentReferenceJson = "";
        }
        noCodeInputDefault.jsonData = componentReferenceJson;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault i(int inputIndex, String cubemapFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.CUBEMAP;
        if (cubemapFile == null) {
            cubemapFile = "";
        }
        noCodeInputDefault.fileIPP = cubemapFile;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault j(int inputIndex, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.DIRECTION;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault k(int inputIndex, H type, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        if (type == null) {
            type = H.BLENDING_MODE;
        }
        noCodeInputDefault.type = type;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault l(int inputIndex, String file) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.FILE;
        if (file == null) {
            file = "";
        }
        noCodeInputDefault.fileIPP = file;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault m(int inputIndex, float x10, float y10) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.FLOAT2;
        noCodeInputDefault.f79018x = x10;
        noCodeInputDefault.f79019y = y10;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault n(int inputIndex, float x10, float y10, float z10) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.FLOAT3;
        noCodeInputDefault.f79018x = x10;
        noCodeInputDefault.f79019y = y10;
        noCodeInputDefault.f79020z = z10;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault o(int inputIndex, float x10, float y10, float z10, float w10) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.FLOAT4;
        noCodeInputDefault.f79018x = x10;
        noCodeInputDefault.f79019y = y10;
        noCodeInputDefault.f79020z = z10;
        noCodeInputDefault.f79017w = w10;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault p(int inputIndex, String objectReferenceJson, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.GAME_OBJECT;
        if (objectReferenceJson == null) {
            objectReferenceJson = "";
        }
        noCodeInputDefault.jsonData = objectReferenceJson;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault q(int inputIndex, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.MATERIAL;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault r(int inputIndex, float v10) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.NUMBER;
        noCodeInputDefault.f79018x = v10;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault s(int inputIndex, String objectFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.OBJECT_FILE;
        if (objectFile == null) {
            objectFile = "";
        }
        noCodeInputDefault.fileIPP = objectFile;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault t(int inputIndex, String file) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.PROJECT_FILE;
        if (file == null) {
            file = "";
        }
        noCodeInputDefault.fileIPP = file;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault u(int inputIndex, float x10, float y10, float z10, float w10) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.QUATERNION;
        noCodeInputDefault.f79018x = x10;
        noCodeInputDefault.f79019y = y10;
        noCodeInputDefault.f79020z = z10;
        noCodeInputDefault.f79017w = w10;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault v(int inputIndex, String soundFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.SOUND_FILE;
        if (soundFile == null) {
            soundFile = "";
        }
        noCodeInputDefault.fileIPP = soundFile;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault w(int inputIndex, String value) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.TEXT;
        if (value == null) {
            value = "";
        }
        noCodeInputDefault.stringValue = value;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault x(int inputIndex, String textureFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.TEXTURE;
        if (textureFile == null) {
            textureFile = "";
        }
        noCodeInputDefault.fileIPP = textureFile;
        return noCodeInputDefault;
    }

    public static NoCodeInputDefault y(int inputIndex, String worldFile) {
        NoCodeInputDefault noCodeInputDefault = new NoCodeInputDefault();
        noCodeInputDefault.inputIndex = inputIndex;
        noCodeInputDefault.type = H.WORLD_FILE;
        if (worldFile == null) {
            worldFile = "";
        }
        noCodeInputDefault.fileIPP = worldFile;
        return noCodeInputDefault;
    }

    public C2632k b(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.fileIPP;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.fileIPP);
        }
        return c2632k;
    }

    public void z(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.fileIPP;
        if (str == null || str.isEmpty() || this.fileIPP.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.fileIPP)) == null) {
            return;
        }
        dictionary.h("NoCodeInputDefault: REPLACING " + this.fileIPP + " TO " + f10.b());
        this.fileIPP = f10.b();
    }
}
