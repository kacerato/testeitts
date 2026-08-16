package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import Ic.C2629h;
import Ic.C2632k;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;

public class ShaderGraphInputDefault {

    @Expose
    public int inputIndex;

    @Expose
    public float f81302w;

    @Expose
    public float f81303x;

    @Expose
    public float f81304y;

    @Expose
    public float f81305z;

    @Expose
    public C type = C.NUMBER;

    @Expose
    public String fileIPP = "";

    public static class a {

        public static final int[] f81306a;

        static {
            int[] iArr = new int[C.values().length];
            f81306a = iArr;
            try {
                iArr[C.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81306a[C.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81306a[C.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81306a[C.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static String a(float v10) {
        return Tc.b.p(v10, 6);
    }

    public static ShaderGraphInputDefault c(int inputIndex, String cubemapFile) {
        ShaderGraphInputDefault shaderGraphInputDefault = new ShaderGraphInputDefault();
        shaderGraphInputDefault.inputIndex = inputIndex;
        shaderGraphInputDefault.type = C.CUBEMAP;
        if (cubemapFile == null) {
            cubemapFile = "";
        }
        shaderGraphInputDefault.fileIPP = cubemapFile;
        return shaderGraphInputDefault;
    }

    public static ShaderGraphInputDefault d(int inputIndex, float x10, float y10) {
        ShaderGraphInputDefault shaderGraphInputDefault = new ShaderGraphInputDefault();
        shaderGraphInputDefault.inputIndex = inputIndex;
        shaderGraphInputDefault.type = C.FLOAT2;
        shaderGraphInputDefault.f81303x = x10;
        shaderGraphInputDefault.f81304y = y10;
        return shaderGraphInputDefault;
    }

    public static ShaderGraphInputDefault e(int inputIndex, float x10, float y10, float z10) {
        ShaderGraphInputDefault shaderGraphInputDefault = new ShaderGraphInputDefault();
        shaderGraphInputDefault.inputIndex = inputIndex;
        shaderGraphInputDefault.type = C.FLOAT3;
        shaderGraphInputDefault.f81303x = x10;
        shaderGraphInputDefault.f81304y = y10;
        shaderGraphInputDefault.f81305z = z10;
        return shaderGraphInputDefault;
    }

    public static ShaderGraphInputDefault f(int inputIndex, float x10, float y10, float z10, float w10) {
        ShaderGraphInputDefault shaderGraphInputDefault = new ShaderGraphInputDefault();
        shaderGraphInputDefault.inputIndex = inputIndex;
        shaderGraphInputDefault.type = C.FLOAT4;
        shaderGraphInputDefault.f81303x = x10;
        shaderGraphInputDefault.f81304y = y10;
        shaderGraphInputDefault.f81305z = z10;
        shaderGraphInputDefault.f81302w = w10;
        return shaderGraphInputDefault;
    }

    public static ShaderGraphInputDefault g(int inputIndex, float v10) {
        ShaderGraphInputDefault shaderGraphInputDefault = new ShaderGraphInputDefault();
        shaderGraphInputDefault.inputIndex = inputIndex;
        shaderGraphInputDefault.type = C.NUMBER;
        shaderGraphInputDefault.f81303x = v10;
        return shaderGraphInputDefault;
    }

    public static ShaderGraphInputDefault h(int inputIndex, String textureFile) {
        ShaderGraphInputDefault shaderGraphInputDefault = new ShaderGraphInputDefault();
        shaderGraphInputDefault.inputIndex = inputIndex;
        shaderGraphInputDefault.type = C.TEXTURE;
        if (textureFile == null) {
            textureFile = "";
        }
        shaderGraphInputDefault.fileIPP = textureFile;
        return shaderGraphInputDefault;
    }

    public C2632k b(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.fileIPP;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.fileIPP);
        }
        return c2632k;
    }

    public void i(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.fileIPP;
        if (str == null || str.isEmpty() || this.fileIPP.startsWith("@@ASSET@@") || (f10 = dictionary.f(this.fileIPP)) == null) {
            return;
        }
        dictionary.h("NoCodeInputDefault: REPLACING " + this.fileIPP + " TO " + f10.b());
        this.fileIPP = f10.b();
    }

    public String j() {
        int i10 = a.f81306a[this.type.ordinal()];
        if (i10 == 1) {
            return "float2(" + a(this.f81303x) + ", " + a(this.f81304y) + ")";
        }
        if (i10 == 2) {
            return "float3(" + a(this.f81303x) + ", " + a(this.f81304y) + ", " + a(this.f81305z) + ")";
        }
        if (i10 != 3) {
            return a(this.f81303x);
        }
        return "float4(" + a(this.f81303x) + ", " + a(this.f81304y) + ", " + a(this.f81305z) + ", " + a(this.f81302w) + ")";
    }
}
