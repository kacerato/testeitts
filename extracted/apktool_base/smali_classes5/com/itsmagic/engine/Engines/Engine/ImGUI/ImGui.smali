.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "ImGuiAdapter"


# instance fields
.field public a:J

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "imgui-adapter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-string v0, "ImGuiAdapter"

    const-string v1, "Failed to create native ImGui adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static B(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    iget-boolean v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    iget-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    invoke-static/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativePopAnchors(ZZZZZZZZZ)V

    return-void
.end method

.method public static C(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    iget-boolean v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    iget-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    invoke-static/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativePushAnchors(ZZZZZZZZZ)V

    return-void
.end method

.method public static D(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static F()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSameLineSimple()V

    return-void
.end method

.method public static G(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    int-to-float p0, p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    return-void
.end method

.method public static H(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    return-void
.end method

.method public static I(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZ)Z
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "textureInstance",
            "borderPX",
            "paddingx",
            "paddingy",
            "tint",
            "textColor",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    invoke-static/range {v0 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->K(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZZZ)Z

    move-result v0

    return v0
.end method

.method public static J(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)Z
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "textureInstance",
            "borderPX",
            "paddingx",
            "paddingy",
            "tint",
            "textColor",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText",
            "imageHandler"
        }
    .end annotation

    if-eqz p13, :cond_0

    invoke-virtual/range {p13 .. p13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v16

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v17

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v18

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v19

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p12

    invoke-static/range {v1 .. v19}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->L(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZZZFFFF)Z

    move-result v0

    return v0

    :cond_1
    invoke-static/range {p0 .. p12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->I(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZ)Z

    move-result v0

    return v0
.end method

.method public static K(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZZZ)Z
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "textureInstance",
            "borderPX",
            "paddingx",
            "paddingy",
            "tint",
            "textColor",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText",
            "flipX",
            "flipY"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v0 .. v18}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->L(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZZZFFFF)Z

    move-result v0

    return v0
.end method

.method public static L(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZZZFFFF)Z
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "textureInstance",
            "borderPX",
            "paddingx",
            "paddingy",
            "tint",
            "textColor",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation

    if-eqz p0, :cond_0

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lub/p;->q()J

    move-result-wide v0

    :goto_1
    move-wide v1, v0

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lub/p;->getWidth()I

    move-result v3

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lub/p;->getHeight()I

    move-result v0

    :cond_3
    move v4, v0

    const/4 v0, 0x0

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v6

    move v9, v6

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v6

    move v10, v6

    goto :goto_5

    :cond_5
    move v10, v0

    :goto_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    move v11, v6

    goto :goto_6

    :cond_6
    move v11, v0

    :goto_6
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v6

    move v12, v6

    goto :goto_7

    :cond_7
    move v12, v0

    :goto_7
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v6

    move v13, v6

    goto :goto_8

    :cond_8
    move v13, v0

    :goto_8
    if-eqz p6, :cond_9

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v6

    move v14, v6

    goto :goto_9

    :cond_9
    move v14, v0

    :goto_9
    if-eqz p6, :cond_a

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    move v15, v6

    goto :goto_a

    :cond_a
    move v15, v0

    :goto_a
    if-eqz p6, :cond_b

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    :cond_b
    move/from16 v16, v0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move-wide/from16 v20, p10

    move/from16 v22, p12

    move/from16 v23, p13

    move/from16 v24, p14

    move/from16 v25, p15

    move/from16 v26, p16

    move/from16 v27, p17

    move/from16 v28, p18

    invoke-static/range {v1 .. v28}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeImageButtonNinePatch(JIILjava/lang/String;FFFFFFFFFFFFFFJZZZFFFF)Z

    move-result v0

    return v0
.end method

.method public static M(Ljava/lang/String;[FFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "value",
            "min",
            "max"
        }
    .end annotation

    const-string v0, "%.3f"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSliderFloat(Ljava/lang/String;[FFFLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static N(Ljava/lang/String;[III)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "value",
            "min",
            "max"
        }
    .end annotation

    const-string v0, "%d"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSliderInt(Ljava/lang/String;[IIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static Q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZFFFFFJ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "colorINT",
            "wrapped",
            "fontScale",
            "sizeX",
            "sizeY",
            "alignX",
            "alignY",
            "fontPtr"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v4

    move-object v0, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-static/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeText(Ljava/lang/String;FFFFZFFFFFJ)V

    return-void
.end method

.method public static R(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FZFFFFFJ)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "colorINT",
            "outlineColor",
            "outlineDP",
            "wrapped",
            "fontScale",
            "sizeX",
            "sizeY",
            "alignX",
            "alignY",
            "fontPtr"
        }
    .end annotation

    move/from16 v0, p3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gtz v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    invoke-static/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->Q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZFFFFFJ)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v10

    move-object/from16 v2, p0

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-wide/from16 v17, p10

    move/from16 v19, v0

    invoke-static/range {v2 .. v19}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeTextOutlined(Ljava/lang/String;FFFFFFFFZFFFFFJI)V

    return-void

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    invoke-static/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->Q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;ZFFFFFJ)V

    return-void
.end method

.method public static S(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "s"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    array-length v1, p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public static a(Ljava/lang/String;FZ)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "absPath",
            "sizePx",
            "setAsDefault"
        }
    .end annotation

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeAddFontFromFile(Ljava/lang/String;FZ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call from opengl thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "normal",
            "hover",
            "active"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v7

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v12

    move-object v0, p0

    invoke-static/range {v0 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeButtonColored(Ljava/lang/String;FFFFFFFFFFFF)Z

    return-void
.end method

.method public static c(Ljava/lang/String;Lub/p;FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZ)Z
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "textureInstance",
            "paddingx",
            "paddingy",
            "tint",
            "textColor",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText"
        }
    .end annotation

    if-eqz p0, :cond_0

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lub/p;->q()J

    move-result-wide v0

    :goto_1
    move-wide v1, v0

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lub/p;->getWidth()I

    move-result v3

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lub/p;->getHeight()I

    move-result v0

    :cond_3
    move v4, v0

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v6

    move v8, v6

    goto :goto_4

    :cond_4
    move v8, v0

    :goto_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v6

    move v9, v6

    goto :goto_5

    :cond_5
    move v9, v0

    :goto_5
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    move v10, v6

    goto :goto_6

    :cond_6
    move v10, v0

    :goto_6
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v6

    move v11, v6

    goto :goto_7

    :cond_7
    move v11, v0

    :goto_7
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v6

    move v12, v6

    goto :goto_8

    :cond_8
    move v12, v0

    :goto_8
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v6

    move v13, v6

    goto :goto_9

    :cond_9
    move v13, v0

    :goto_9
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    move v14, v6

    goto :goto_a

    :cond_a
    move v14, v0

    :goto_a
    if-eqz p5, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    :cond_b
    move v15, v0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move-wide/from16 v19, p9

    move/from16 v21, p11

    invoke-static/range {v1 .. v21}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeImageButtonText(JIILjava/lang/String;FFFFFFFFFFFFFJZ)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Lub/p;FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)Z
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "textureInstance",
            "paddingx",
            "paddingy",
            "tint",
            "textColor",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText",
            "imageHandler"
        }
    .end annotation

    if-eqz p12, :cond_0

    invoke-virtual/range {p12 .. p12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v16

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v17

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v18

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v19

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    invoke-static/range {v1 .. v19}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->L(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZZZFFFF)Z

    move-result v0

    return v0

    :cond_1
    invoke-static/range {p0 .. p11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->c(Ljava/lang/String;Lub/p;FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZ)Z

    move-result v0

    return v0
.end method

.method public static e(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontPtr"
        }
    .end annotation

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeDeleteFont(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call from opengl thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lub/p;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "sizeX",
            "sizeY"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->h(Lub/p;FFZZ)V

    return-void
.end method

.method public static h(Lub/p;FFZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "sizeX",
            "sizeY",
            "flipX",
            "flipY"
        }
    .end annotation

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->i(Lub/p;FFZZFFFF)V

    return-void
.end method

.method public static i(Lub/p;FFZZFFFF)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "sizeX",
            "sizeY",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->q()J

    move-result-wide v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p1

    move/from16 v3, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v0 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeImage(JFFFFFFZZFFFF)V

    return-void
.end method

.method public static j(Lub/p;FFZZFFFFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "sizeX",
            "sizeY",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY",
            "imageHandler"
        }
    .end annotation

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v1

    add-float v1, p5, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v2

    add-float v2, p6, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v3

    mul-float v3, v3, p7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v0

    mul-float v0, v0, p8

    move v12, v0

    move v9, v1

    move v10, v2

    move v11, v3

    goto :goto_1

    :cond_1
    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    :goto_1
    move-object v4, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v4 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->i(Lub/p;FFZZFFFF)V

    return-void
.end method

.method public static k(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->m(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZ)V

    return-void
.end method

.method public static l(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "imageHandler"
        }
    .end annotation

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->o(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZFFFFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    return-void
.end method

.method public static m(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "flipX",
            "flipY"
        }
    .end annotation

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->n(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZFFFF)V

    return-void
.end method

.method public static n(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZFFFF)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->q()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v0 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeImage(JFFFFFFZZFFFF)V

    return-void
.end method

.method private static native nativeAddFontFromFile(Ljava/lang/String;FZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "absPath",
            "sizePx",
            "setAsDefault"
        }
    .end annotation
.end method

.method public static native nativeBegin(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "flags"
        }
    .end annotation
.end method

.method public static native nativeBeginChild(Ljava/lang/String;FFZI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "strId",
            "width",
            "height",
            "border",
            "flags"
        }
    .end annotation
.end method

.method public static native nativeBeginScreen()V
.end method

.method public static native nativeButton(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation
.end method

.method public static native nativeButtonColored(Ljava/lang/String;FFFFFFFFFFFF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "nr",
            "ng",
            "nb",
            "na",
            "hr",
            "hg",
            "hb",
            "ha",
            "ar",
            "ag",
            "ab",
            "aa"
        }
    .end annotation
.end method

.method public static native nativeCalcImageButtonNinePatchSize(Ljava/lang/String;FFFFFJ[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "fontScale",
            "paddingXPx",
            "paddingYPx",
            "sizeX",
            "sizeY",
            "fontPtr",
            "outputArray"
        }
    .end annotation
.end method

.method public static native nativeCalcTextSize(Ljava/lang/String;FFFZJ[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "fontScale",
            "sizeX",
            "sizeY",
            "wrapped",
            "fontPtr",
            "output"
        }
    .end annotation
.end method

.method public static native nativeCheckbox(Ljava/lang/String;[Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "value"
        }
    .end annotation
.end method

.method public static native nativeColorEdit3(Ljava/lang/String;[F)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "rgb"
        }
    .end annotation
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDeleteFont(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontPtr"
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method public static native nativeDummy(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation
.end method

.method public static native nativeEnd()V
.end method

.method public static native nativeEndChild()V
.end method

.method public static native nativeEndScreen()V
.end method

.method public static native nativeForegroundImage(IIIIJZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h",
            "texId",
            "flipX",
            "flipY"
        }
    .end annotation
.end method

.method public static native nativeGetCursorPos([F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outXY"
        }
    .end annotation
.end method

.method public static native nativeGetItemRectMax([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outXY"
        }
    .end annotation
.end method

.method public static native nativeGetItemRectMin([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outXY"
        }
    .end annotation
.end method

.method public static native nativeGetItemRectSize([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outXY"
        }
    .end annotation
.end method

.method public static native nativeImage(JFFFFFFZZFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "sizeX",
            "sizeY",
            "r",
            "g",
            "b",
            "a",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation
.end method

.method public static native nativeImageButtonNinePatch(JIILjava/lang/String;FFFFFFFFFFFFFFJZZZFFFF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "texW",
            "texH",
            "label",
            "borderPx",
            "paddingXPx",
            "paddingYPx",
            "tintR",
            "tintG",
            "tintB",
            "tintA",
            "textR",
            "textG",
            "textB",
            "textA",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation
.end method

.method public static native nativeImageButtonText(JIILjava/lang/String;FFFFFFFFFFFFFJZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "texW",
            "texH",
            "label",
            "paddingXPx",
            "paddingYPx",
            "tintR",
            "tintG",
            "tintB",
            "tintA",
            "textR",
            "textG",
            "textB",
            "textA",
            "fontSize",
            "sizeX",
            "sizeY",
            "fontPtr",
            "autoFitText"
        }
    .end annotation
.end method

.method public static native nativeImageRotated(JFFFFFFFZZFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "sizeX",
            "sizeY",
            "r",
            "g",
            "b",
            "a",
            "angle",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation
.end method

.method public static native nativeIndent(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentW"
        }
    .end annotation
.end method

.method public static native nativeInputTextEx(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;FFFFJFFFFF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "flags",
            "editable",
            "outState",
            "sizeX",
            "sizeY",
            "alignX",
            "alignY",
            "fontPtr",
            "r",
            "g",
            "b",
            "a",
            "fontScale"
        }
    .end annotation
.end method

.method public static native nativeNewLine()V
.end method

.method public static native nativeOffsetPos(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

.method private static native nativeOnKeyEvent(JIIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "keyCode",
            "unicodeChar",
            "down"
        }
    .end annotation
.end method

.method private static native nativeOnResize(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "width",
            "height"
        }
    .end annotation
.end method

.method private static native nativeOnTouch(JFFI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "x",
            "y",
            "action"
        }
    .end annotation
.end method

.method private static native nativeOutputFrame(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "g_UsePremultiplied"
        }
    .end annotation
.end method

.method public static native nativePopAnchors(ZZZZZZZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tl",
            "tc",
            "tr",
            "cl",
            "cc",
            "cr",
            "bl",
            "bc",
            "br"
        }
    .end annotation
.end method

.method public static native nativePopClipRect()V
.end method

.method public static native nativeProgressBar(FFFLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fraction",
            "width",
            "height",
            "overlay"
        }
    .end annotation
.end method

.method public static native nativePushAnchors(ZZZZZZZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tl",
            "tc",
            "tr",
            "cl",
            "cc",
            "cr",
            "bl",
            "bc",
            "br"
        }
    .end annotation
.end method

.method public static native nativePushClipRect(FFFFZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "minX",
            "minY",
            "maxX",
            "maxY",
            "intersectWithCurrent"
        }
    .end annotation
.end method

.method public static native nativeRadioButton(Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "active"
        }
    .end annotation
.end method

.method private static native nativeRender(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method public static native nativeSameLine(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetFromStartX",
            "spacing"
        }
    .end annotation
.end method

.method public static native nativeSameLineSimple()V
.end method

.method public static native nativeSeparator()V
.end method

.method public static native nativeSetCursorPos(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

.method public static native nativeSetNextWindowPos(FFI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "cond"
        }
    .end annotation
.end method

.method public static native nativeSetNextWindowSize(FFI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "cond"
        }
    .end annotation
.end method

.method public static native nativeSliderFloat(Ljava/lang/String;[FFFLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "value",
            "min",
            "max",
            "format"
        }
    .end annotation
.end method

.method public static native nativeSliderInt(Ljava/lang/String;[IIILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "value",
            "min",
            "max",
            "format"
        }
    .end annotation
.end method

.method public static native nativeSpacing()V
.end method

.method private static native nativeStart(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method private static native nativeStartFrame(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "pxSize"
        }
    .end annotation
.end method

.method public static native nativeText(Ljava/lang/String;FFFFZFFFFFJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "r",
            "g",
            "b",
            "a",
            "wrapped",
            "fontScale",
            "sizeX",
            "sizeY",
            "alignX",
            "alignY",
            "fontPtr"
        }
    .end annotation
.end method

.method public static native nativeTextOutlined(Ljava/lang/String;FFFFFFFFZFFFFFJI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "r",
            "g",
            "b",
            "a",
            "outlineR",
            "outlineG",
            "outlineB",
            "outlineA",
            "wrapped",
            "fontScale",
            "sizeX",
            "sizeY",
            "alignX",
            "alignY",
            "fontPtr",
            "outlineRadius"
        }
    .end annotation
.end method

.method public static native nativeUnindent(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentW"
        }
    .end annotation
.end method

.method public static o(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZFFFFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY",
            "imageHandler"
        }
    .end annotation

    if-eqz p10, :cond_0

    invoke-virtual/range {p10 .. p10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v1

    add-float v1, p6, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v2

    add-float v2, p7, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v3

    mul-float v3, v3, p8

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v0

    mul-float v0, v0, p9

    move v13, v0

    move v10, v1

    move v11, v2

    move v12, v3

    goto :goto_1

    :cond_1
    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    :goto_1
    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v4 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->n(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFZZFFFF)V

    return-void
.end method

.method public static p(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "angle"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->q(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZ)V

    return-void
.end method

.method public static q(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "angle",
            "flipX",
            "flipY"
        }
    .end annotation

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->r(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZFFFF)V

    return-void
.end method

.method public static r(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZFFFF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "angle",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->q()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v0 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeImageRotated(JFFFFFFFZZFFFF)V

    return-void
.end method

.method public static s(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZFFFFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "tint",
            "sizeX",
            "sizeY",
            "angle",
            "flipX",
            "flipY",
            "offsetX",
            "offsetY",
            "tillingX",
            "tillingY",
            "imageHandler"
        }
    .end annotation

    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v1

    add-float v1, p7, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v2

    add-float v2, p8, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v3

    mul-float v3, v3, p9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v0

    mul-float v0, v0, p10

    move v14, v0

    move v11, v1

    move v12, v2

    move v13, v3

    goto :goto_1

    :cond_1
    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    :goto_1
    move-object v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->r(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZFFFF)V

    return-void
.end method

.method public static t(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;FFFFJLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Z
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "flags",
            "editable",
            "outState",
            "sizeX",
            "sizeY",
            "alignX",
            "alignY",
            "fontPtr",
            "colorINT",
            "fontScale"
        }
    .end annotation

    invoke-virtual/range {p10 .. p10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v10

    invoke-virtual/range {p10 .. p10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v11

    invoke-virtual/range {p10 .. p10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v12

    invoke-virtual/range {p10 .. p10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v13

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v14, p11

    invoke-static/range {v0 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeInputTextEx(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;FFFFJFFFFF)Z

    move-result v0

    return v0
.end method

.method public static v()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static w(I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityChars"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    move p0, v0

    :cond_0
    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public A(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g_UsePremultiplied"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeOutputFrame(JZ)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 4

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeRender(J)V

    :cond_0
    return-void
.end method

.method public O()Z
    .locals 4

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "ImGuiAdapter"

    if-nez v2, :cond_0

    const-string v0, "Native handle is invalid"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeStart(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    const-string v1, "ImGui started successfully"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Failed to start ImGui"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public P(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pxSize"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeStartFrame(JF)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 5

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    const-string v0, "ImGuiAdapter"

    const-string v1, "ImGui adapter destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    return v0
.end method

.method public x(IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "unicodeChar",
            "down"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeOnKeyEvent(JIIZ)V

    :cond_0
    return-void
.end method

.method public y(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeOnResize(JII)V

    :cond_0
    return-void
.end method

.method public z(FFI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "action"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeOnTouch(JFFI)V

    :cond_0
    return-void
.end method
