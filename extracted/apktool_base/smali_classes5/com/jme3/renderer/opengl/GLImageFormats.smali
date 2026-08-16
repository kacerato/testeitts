.class public final Lcom/jme3/renderer/opengl/GLImageFormats;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V
    .locals 8

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v7, Lcom/jme3/renderer/opengl/GLImageFormat;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZZ)V

    aput-object v7, p0, p1

    return-void
.end method

.method private static formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V
    .locals 11

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v10, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v6, 0x1

    move-object v2, v10

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZZZ)V

    aput-object v10, v0, v1

    return-void
.end method

.method private static formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V
    .locals 11

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v10, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v6, 0x1

    move-object v2, v10

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZZZ)V

    aput-object v10, v0, v1

    return-void
.end method

.method private static formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V
    .locals 12

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v11, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZZZZ)V

    aput-object v11, v0, v1

    return-void
.end method

.method private static formatSrgbSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V
    .locals 12

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v11, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v11

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZZZZ)V

    aput-object v11, v0, v1

    return-void
.end method

.method private static formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V
    .locals 12

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v11, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v11

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZZZZ)V

    aput-object v11, v0, v1

    return-void
.end method

.method public static getFormatsForCaps(Ljava/util/EnumSet;)[[Lcom/jme3/renderer/opengl/GLImageFormat;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;)[[",
            "Lcom/jme3/renderer/opengl/GLImageFormat;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lcom/jme3/texture/Image$Format;->values()[Lcom/jme3/texture/Image$Format;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v2, v3, v1

    const-class v2, Lcom/jme3/renderer/opengl/GLImageFormat;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/jme3/renderer/opengl/GLImageFormat;

    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v14, v4

    goto :goto_0

    :cond_0
    move v14, v1

    :goto_0
    if-eqz v13, :cond_1

    if-nez v14, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    sget-object v15, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v15}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v17, v13, 0x1

    sget-object v6, Lcom/jme3/renderer/Caps;->CoreProfile:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v18

    sget-object v6, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferR:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v19

    sget-object v6, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRG:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v20

    sget-object v6, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGB:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v21

    sget-object v6, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v22

    sget-object v6, Lcom/jme3/renderer/Caps;->FloatColorBufferR:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v23

    sget-object v6, Lcom/jme3/renderer/Caps;->FloatColorBufferRG:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v24

    sget-object v6, Lcom/jme3/renderer/Caps;->FloatColorBufferRGB:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v25

    sget-object v6, Lcom/jme3/renderer/Caps;->FloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v26

    sget-object v6, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v27

    sget-object v6, Lcom/jme3/renderer/Caps;->HalfFloatTextureFilter:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v28

    sget-object v6, Lcom/jme3/renderer/Caps;->FloatTextureFilter:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v5, :cond_2

    const v5, 0x8d61

    :goto_2
    move/from16 v30, v5

    goto :goto_3

    :cond_2
    const/16 v5, 0x140b

    goto :goto_2

    :goto_3
    if-eqz v18, :cond_5

    sget-object v6, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8229

    const/16 v8, 0x1903

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v31, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    move-object/from16 v6, v31

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v32, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v7, 0x822b

    const v8, 0x8227

    move-object/from16 v6, v32

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1903

    const v7, 0x822d

    move/from16 v9, v30

    move/from16 v10, v19

    move/from16 v12, v28

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    const/16 v9, 0x1406

    const v7, 0x822e

    move/from16 v10, v23

    move/from16 v12, v29

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    const v8, 0x8227

    const v7, 0x822f

    move/from16 v9, v30

    move/from16 v10, v20

    move/from16 v12, v28

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    const/4 v12, 0x1

    const v7, 0x8c41

    const/16 v8, 0x1903

    const/16 v9, 0x1401

    move-object/from16 v6, v31

    move/from16 v10, v17

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgbSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    if-eqz v13, :cond_4

    if-nez v14, :cond_4

    if-eqz v16, :cond_3

    goto :goto_4

    :cond_3
    move v10, v1

    goto :goto_5

    :cond_4
    :goto_4
    move v10, v4

    :goto_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c43

    const v8, 0x8227

    const/16 v9, 0x1401

    move-object v5, v2

    move-object/from16 v6, v32

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgbSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_5
    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v14, :cond_6

    goto/16 :goto_6

    :cond_6
    sget-object v5, Lcom/jme3/renderer/Caps;->Rgba8:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v18, :cond_7

    sget-object v6, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8058

    const/16 v8, 0x1906

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1909

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x190a

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_7
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8051

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8058

    const/16 v8, 0x1908

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    if-nez v13, :cond_15

    sget-object v6, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8051

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->ARGB8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8058

    const/16 v8, 0x1908

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->BGRA8:Lcom/jme3/texture/Image$Format;

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto/16 :goto_d

    :cond_8
    if-nez v18, :cond_9

    sget-object v6, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8056

    const/16 v8, 0x1906

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d62

    const/16 v8, 0x1909

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8056

    const/16 v8, 0x190a

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_9
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8d62

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8056

    const/16 v8, 0x1908

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto/16 :goto_d

    :cond_a
    :goto_6
    if-nez v18, :cond_b

    sget-object v6, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x803c

    const/16 v8, 0x1906

    const/16 v9, 0x1401

    move-object v5, v2

    move/from16 v10, v17

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8040

    const/16 v8, 0x1909

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8045

    const/16 v8, 0x190a

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_b
    sget-object v31, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    if-eqz v13, :cond_d

    if-nez v14, :cond_d

    if-eqz v16, :cond_c

    goto :goto_7

    :cond_c
    move v10, v1

    goto :goto_8

    :cond_d
    :goto_7
    move v10, v4

    :goto_8
    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8051

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    move-object v5, v2

    move-object/from16 v6, v31

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v32, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8058

    const/16 v8, 0x1908

    const/4 v10, 0x1

    move-object/from16 v6, v32

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    if-nez v14, :cond_11

    if-eqz v16, :cond_e

    goto :goto_b

    :cond_e
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    if-eqz v13, :cond_10

    if-nez v14, :cond_10

    if-eqz v16, :cond_f

    goto :goto_9

    :cond_f
    move v10, v1

    goto :goto_a

    :cond_10
    :goto_9
    move v10, v4

    :goto_a
    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8051

    const/16 v8, 0x1907

    const v9, 0x8363

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto :goto_c

    :cond_11
    :goto_b
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8d62

    const/16 v8, 0x1907

    const v9, 0x8363

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :goto_c
    if-nez v13, :cond_12

    sget-object v6, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8051

    const v8, 0x80e0

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->ARGB8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8058

    const v8, 0x80e1

    const v9, 0x8035

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->BGRA8:Lcom/jme3/texture/Image$Format;

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1908

    const v9, 0x8035

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_12
    sget-object v5, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c41

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    move-object v5, v2

    move-object/from16 v6, v31

    move/from16 v10, v17

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    const v9, 0x8363

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c43

    const/16 v8, 0x1908

    const v9, 0x8034

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object/from16 v6, v32

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    if-nez v18, :cond_13

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c47

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    move-object v5, v2

    move/from16 v10, v17

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c45

    const/16 v8, 0x190a

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_13
    if-nez v13, :cond_14

    sget-object v6, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c41

    const v8, 0x80e0

    const/16 v9, 0x1401

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c43

    const/16 v8, 0x1908

    const v9, 0x8035

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->ARGB8:Lcom/jme3/texture/Image$Format;

    const v8, 0x80e1

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->BGRA8:Lcom/jme3/texture/Image$Format;

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_14
    sget-object v5, Lcom/jme3/renderer/Caps;->TextureCompressionS3TC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c4c

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4d

    const/16 v8, 0x1908

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4e

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4f

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_15
    :goto_d
    if-eqz v13, :cond_16

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8d62

    const/16 v8, 0x1907

    const v9, 0x8363

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_16
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8057

    const/16 v8, 0x1908

    const v9, 0x8034

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v12, Lcom/jme3/renderer/Caps;->HalfFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_e

    :cond_17
    move-object v1, v12

    goto/16 :goto_11

    :cond_18
    :goto_e
    if-nez v18, :cond_1a

    invoke-virtual {v0, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v7, 0x881e

    const/16 v8, 0x1909

    move-object v5, v2

    move/from16 v9, v30

    move-object v1, v12

    move/from16 v12, v28

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x881f

    const/16 v8, 0x190a

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto :goto_f

    :cond_19
    move-object v1, v12

    :goto_f
    sget-object v5, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v7, 0x8818

    const/16 v8, 0x1909

    const/16 v9, 0x1406

    move-object v5, v2

    move/from16 v12, v29

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto :goto_10

    :cond_1a
    move-object v1, v12

    :cond_1b
    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v6, Lcom/jme3/texture/Image$Format;->R16F:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1903

    const/4 v11, 0x0

    const v7, 0x822d

    move-object v5, v2

    move/from16 v9, v30

    move/from16 v10, v19

    move/from16 v12, v28

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG16F:Lcom/jme3/texture/Image$Format;

    const v8, 0x8227

    const v7, 0x822f

    move/from16 v10, v20

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1907

    const v7, 0x881b

    move/from16 v10, v21

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1908

    const v7, 0x881a

    move/from16 v10, v22

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_1c
    sget-object v5, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v6, Lcom/jme3/texture/Image$Format;->R32F:Lcom/jme3/texture/Image$Format;

    const/16 v9, 0x1406

    const/4 v11, 0x0

    const v7, 0x822e

    const/16 v8, 0x1903

    move-object v5, v2

    move/from16 v10, v23

    move/from16 v12, v29

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8230

    const v8, 0x8227

    move/from16 v10, v24

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8815

    const/16 v8, 0x1907

    move/from16 v10, v25

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8814

    const/16 v8, 0x1908

    move/from16 v10, v26

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_1d
    :goto_11
    sget-object v5, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    if-eqz v13, :cond_1f

    if-eqz v14, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v12, 0x0

    goto :goto_13

    :cond_1f
    :goto_12
    move v12, v4

    :goto_13
    const v7, 0x8c3a

    const/16 v8, 0x1907

    const v9, 0x8c3b

    const/4 v11, 0x0

    move-object v5, v2

    move/from16 v10, v27

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB111110F:Lcom/jme3/texture/Image$Format;

    if-eqz v13, :cond_21

    if-eqz v14, :cond_20

    goto :goto_14

    :cond_20
    const/4 v12, 0x0

    goto :goto_15

    :cond_21
    :goto_14
    move v12, v4

    :goto_15
    const v7, 0x8c3a

    const/16 v8, 0x1907

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    move/from16 v9, v30

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_22
    sget-object v5, Lcom/jme3/renderer/Caps;->SharedExponentTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB9E5:Lcom/jme3/texture/Image$Format;

    if-eqz v13, :cond_24

    if-eqz v14, :cond_23

    goto :goto_16

    :cond_23
    const/4 v12, 0x0

    goto :goto_17

    :cond_24
    :goto_16
    move v12, v4

    :goto_17
    const v7, 0x8c3d

    const/16 v8, 0x1907

    const v9, 0x8c3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB9E5:Lcom/jme3/texture/Image$Format;

    if-eqz v13, :cond_26

    if-eqz v14, :cond_25

    goto :goto_18

    :cond_25
    const/4 v12, 0x0

    goto :goto_19

    :cond_26
    :goto_18
    move v12, v4

    :goto_19
    const v7, 0x8c3d

    const/16 v8, 0x1907

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    move/from16 v9, v30

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_27
    sget-object v4, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB10A2:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8059

    const/16 v8, 0x1908

    const v9, 0x8368

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    if-nez v18, :cond_28

    sget-object v6, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v7, 0x1906

    const/16 v8, 0x1906

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const/16 v7, 0x1909

    const/16 v8, 0x1909

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const/16 v7, 0x190a

    const/16 v8, 0x190a

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_28
    sget-object v4, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c41

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c43

    const/16 v8, 0x1908

    const/4 v10, 0x1

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_29
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1907

    const/4 v11, 0x0

    const v7, 0x881b

    move-object v5, v2

    move/from16 v9, v30

    move/from16 v10, v21

    move/from16 v12, v28

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    const/16 v8, 0x1908

    const v7, 0x881a

    move/from16 v10, v22

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_2a
    sget-object v1, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    const/16 v9, 0x1406

    const/4 v11, 0x0

    const v7, 0x8815

    const/16 v8, 0x1907

    move-object v5, v2

    move/from16 v10, v25

    move/from16 v12, v29

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8814

    const/16 v8, 0x1908

    move/from16 v10, v26

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_2b
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8c3a

    const/16 v8, 0x1907

    const v9, 0x8c3b

    move-object v5, v2

    move/from16 v10, v27

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_2c
    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth16:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x81a5

    const/16 v8, 0x1902

    const/16 v9, 0x1403

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    invoke-virtual {v0, v15}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x81a6

    const/16 v8, 0x1902

    const/16 v9, 0x1405

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto :goto_1a

    :cond_2d
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x81a5

    const/16 v8, 0x1902

    const/16 v9, 0x1403

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto :goto_1a

    :cond_2e
    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v7, 0x1902

    const/16 v8, 0x1902

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :goto_1a
    sget-object v1, Lcom/jme3/renderer/Caps;->Depth24:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth24:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x81a6

    const/16 v8, 0x1902

    const/16 v9, 0x1405

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_2f
    sget-object v1, Lcom/jme3/renderer/Caps;->Depth32:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth32:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x81a7

    const/16 v8, 0x1902

    const/16 v9, 0x1405

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_30
    sget-object v1, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x8cac

    const/16 v8, 0x1902

    const/16 v9, 0x1406

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_31
    sget-object v1, Lcom/jme3/renderer/Caps;->PackedDepthStencilBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v6, Lcom/jme3/texture/Image$Format;->Depth24Stencil8:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v7, 0x88f0

    const v8, 0x84f9

    const v9, 0x84fa

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_32
    sget-object v1, Lcom/jme3/renderer/Caps;->TextureCompressionS3TC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x83f0

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    const v7, 0x83f1

    const/16 v8, 0x1908

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    const v7, 0x83f2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    const v7, 0x83f3

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_33
    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    sget-object v1, Lcom/jme3/renderer/Caps;->TextureCompressionRGTC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_34
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGTC2:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8dbd

    const v8, 0x8227

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC2:Lcom/jme3/texture/Image$Format;

    const v7, 0x8dbe

    const/16 v9, 0x1400

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGTC1:Lcom/jme3/texture/Image$Format;

    const v7, 0x8dbb

    const/16 v8, 0x1903

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC1:Lcom/jme3/texture/Image$Format;

    const v7, 0x8dbc

    const/16 v9, 0x1400

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_35
    sget-object v1, Lcom/jme3/renderer/Caps;->TextureCompressionETC2:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/jme3/texture/Image$Format;->ETC2:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x9278

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v1

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v3, Lcom/jme3/texture/Image$Format;->ETC2_ALPHA1:Lcom/jme3/texture/Image$Format;

    const v7, 0x9276

    move-object v6, v3

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    const v7, 0x9274

    const/16 v8, 0x1907

    move-object v6, v4

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v5, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x9279

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v1

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    const v7, 0x9277

    move-object v6, v3

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    const v7, 0x9275

    const/16 v8, 0x1907

    move-object v6, v4

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    goto :goto_1b

    :cond_36
    sget-object v1, Lcom/jme3/renderer/Caps;->TextureCompressionETC1:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    sget-object v6, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8d64

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_37
    :goto_1b
    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL42:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    sget-object v1, Lcom/jme3/renderer/Caps;->TextureCompressionBPTC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_38
    sget-object v6, Lcom/jme3/texture/Image$Format;->BC6H_SF16:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v7, 0x8e8e

    const/16 v8, 0x1907

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->BC6H_UF16:Lcom/jme3/texture/Image$Format;

    const v7, 0x8e8f

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->BC7_UNORM:Lcom/jme3/texture/Image$Format;

    const v7, 0x8e8c

    const/16 v8, 0x1908

    const/16 v9, 0x1405

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->BC7_UNORM_SRGB:Lcom/jme3/texture/Image$Format;

    const v7, 0x8e8d

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_39
    sget-object v1, Lcom/jme3/renderer/Caps;->IntegerTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v6, Lcom/jme3/texture/Image$Format;->R8I:Lcom/jme3/texture/Image$Format;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v7, 0x8231

    const v8, 0x8d94

    const/16 v9, 0x1400

    const/4 v10, 0x1

    move-object v5, v2

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->R8UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8232

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->R16I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8233

    const/16 v9, 0x1402

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->R16UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8234

    const/16 v9, 0x1403

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->R32I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8235

    const/16 v9, 0x1404

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->R32UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8236

    const/16 v9, 0x1405

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG8I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8237

    const v8, 0x8228

    const/16 v9, 0x1400

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG8UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8238

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG16I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8239

    const/16 v9, 0x1402

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG16UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x823a

    const/16 v9, 0x1403

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG32I:Lcom/jme3/texture/Image$Format;

    const v7, 0x823b

    const/16 v9, 0x1404

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RG32UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x823c

    const/16 v9, 0x1405

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB8I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d8f

    const v8, 0x8d98

    const/16 v9, 0x1400

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB8UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d7d

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB16I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d89

    const/16 v9, 0x1402

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB16UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d77

    const/16 v9, 0x1403

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB32I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d83

    const/16 v9, 0x1404

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB32UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d71

    const/16 v9, 0x1405

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA8I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d8e

    const v8, 0x8d99

    const/16 v9, 0x1400

    const/4 v10, 0x1

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA8UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d7c

    const/16 v9, 0x1401

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA16I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d88

    const/16 v9, 0x1402

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA16UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d76

    const/16 v9, 0x1403

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA32I:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d82

    const/16 v9, 0x1404

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGBA32UI:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d70

    const/16 v9, 0x1405

    invoke-static/range {v5 .. v12}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;IIIZZZ)V

    :cond_3a
    return-object v2
.end method
