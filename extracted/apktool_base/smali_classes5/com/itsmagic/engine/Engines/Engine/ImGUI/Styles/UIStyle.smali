.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final b:[F

.field private bottomLeftCorner:LU9/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bottomRightCorner:LU9/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c:LJAVARuntime/UIStyle;

.field private color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private corner:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gradientAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gradientMode:LU9/d;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hole:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerGlowSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerGlowSmooth:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerShadowAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerShadowSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private innerShadowSmooth:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maskAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maskMode:LU9/e;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maskValue:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerGlowSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerGlowSmooth:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerShadowAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerShadowSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outerShadowSmooth:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stroke:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topLeftCorner:LU9/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topRightCorner:LU9/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ui-style"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LU9/d;->Solid:LU9/d;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xde

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    sget-object v1, LU9/b;->Round:LU9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-direct {v1, v2, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, v2, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    const v1, 0x3e0f5c29    # 0.14f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v3, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LU9/e;->Linear:LU9/e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    return-void
.end method

.method public static synthetic A(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    return-object p0
.end method

.method public static synthetic B(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    return p0
.end method

.method public static B0(LU9/b;)LU9/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LU9/b;->Round:LU9/b;

    :goto_0
    return-object p0
.end method

.method public static synthetic C(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    return p0
.end method

.method public static C0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF[F)V
    .locals 18
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
            0x0
        }
        names = {
            "px",
            "py",
            "rx",
            "ry",
            "rw",
            "rh",
            "tTL",
            "tTR",
            "tBR",
            "tBL",
            "cTL",
            "cTR",
            "cBR",
            "cBL",
            "out2"
        }
    .end annotation

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v0, p0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-static/range {v0 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v15

    sub-float v0, p0, v14

    invoke-static/range {v0 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v16

    add-float v1, p1, v14

    move/from16 v0, p0

    invoke-static/range {v0 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v17

    sub-float v1, p1, v14

    invoke-static/range {v0 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v0

    sub-float v15, v15, v16

    sub-float v17, v17, v0

    mul-float v0, v15, v15

    mul-float v1, v17, v17

    add-float/2addr v0, v1

    const v1, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    const/4 v0, 0x0

    aput v0, p14, v3

    aput v0, p14, v2

    return-void

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v0

    double-to-float v0, v4

    mul-float/2addr v15, v0

    aput v15, p14, v3

    mul-float v17, v17, v0

    aput v17, p14, v2

    return-void
.end method

.method public static synthetic D(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/d;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    return-object p0
.end method

.method public static E(FFFFFFFLU9/a;LU9/b;F)F
    .locals 6
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
            "currentSDF",
            "px",
            "py",
            "rx",
            "ry",
            "rw",
            "rh",
            "id",
            "type",
            "c"
        }
    .end annotation

    if-nez p8, :cond_0

    sget-object p8, LU9/b;->Round:LU9/b;

    :cond_0
    sget-object v0, LU9/b;->Sharp:LU9/b;

    if-ne p8, v0, :cond_1

    return p0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p9, v0

    if-gtz v0, :cond_2

    return p0

    :cond_2
    sget-object v0, LU9/a;->TL:LU9/a;

    if-ne p7, v0, :cond_3

    sub-float v1, p1, p3

    :goto_0
    sub-float v2, p2, p4

    goto :goto_2

    :cond_3
    sget-object v1, LU9/a;->TR:LU9/a;

    if-ne p7, v1, :cond_4

    add-float v1, p3, p5

    sub-float/2addr v1, p1

    goto :goto_0

    :cond_4
    sget-object v1, LU9/a;->BR:LU9/a;

    if-ne p7, v1, :cond_5

    add-float v1, p3, p5

    sub-float/2addr v1, p1

    :goto_1
    add-float v2, p4, p6

    sub-float/2addr v2, p2

    goto :goto_2

    :cond_5
    sub-float v1, p1, p3

    goto :goto_1

    :goto_2
    cmpg-float v3, v1, p9

    const/4 v4, 0x1

    if-gtz v3, :cond_6

    cmpg-float v3, v2, p9

    if-gtz v3, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_8

    sget-object v5, LU9/b;->Round:LU9/b;

    if-eq p8, v5, :cond_7

    sget-object v5, LU9/b;->Squircle:LU9/b;

    if-ne p8, v5, :cond_8

    :cond_7
    return p0

    :cond_8
    if-nez v3, :cond_9

    sget-object v3, LU9/b;->InvertedRound:LU9/b;

    if-ne p8, v3, :cond_9

    return p0

    :cond_9
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$b;->a:[I

    invoke-virtual {p8}, Ljava/lang/Enum;->ordinal()I

    move-result p8

    aget p8, v3, p8

    if-eq p8, v4, :cond_17

    const/4 v3, 0x2

    if-eq p8, v3, :cond_13

    const/4 v3, 0x3

    if-eq p8, v3, :cond_12

    const/4 v1, 0x4

    if-eq p8, v1, :cond_e

    const/4 v1, 0x5

    if-eq p8, v1, :cond_a

    return p0

    :cond_a
    const/high16 p8, 0x42800000    # 64.0f

    div-float p8, p9, p8

    invoke-static {p8}, LNc/b;->I(F)F

    move-result p8

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p8

    const/high16 p8, 0x40000000    # 2.0f

    mul-float/2addr v1, p8

    add-float/2addr v1, p8

    if-ne p7, v0, :cond_b

    add-float/2addr p3, p9

    :goto_4
    add-float/2addr p4, p9

    goto :goto_6

    :cond_b
    sget-object p8, LU9/a;->TR:LU9/a;

    if-ne p7, p8, :cond_c

    add-float/2addr p3, p5

    sub-float/2addr p3, p9

    goto :goto_4

    :cond_c
    sget-object p8, LU9/a;->BR:LU9/a;

    if-ne p7, p8, :cond_d

    add-float/2addr p3, p5

    sub-float/2addr p3, p9

    :goto_5
    add-float/2addr p4, p6

    sub-float/2addr p4, p9

    goto :goto_6

    :cond_d
    add-float/2addr p3, p9

    goto :goto_5

    :goto_6
    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    invoke-static {p1, p2, p9, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->o1(FFFF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_e
    if-ne p7, v0, :cond_f

    :goto_7
    move v2, p3

    move v3, p4

    goto :goto_8

    :cond_f
    sget-object p8, LU9/a;->TR:LU9/a;

    if-ne p7, p8, :cond_10

    add-float/2addr p3, p5

    sub-float/2addr p3, p9

    goto :goto_7

    :cond_10
    sget-object p8, LU9/a;->BR:LU9/a;

    if-ne p7, p8, :cond_11

    add-float/2addr p3, p5

    sub-float/2addr p3, p9

    :cond_11
    add-float/2addr p4, p6

    sub-float/2addr p4, p9

    goto :goto_7

    :goto_8
    move v0, p1

    move v1, p2

    move v4, p9

    move v5, p9

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->z0(FFFFFF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_12
    add-float/2addr v1, v2

    sub-float/2addr p9, v1

    const p1, 0x3f3504f3

    mul-float/2addr p9, p1

    invoke-static {p0, p9}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_13
    if-ne p7, v0, :cond_14

    goto :goto_9

    :cond_14
    sget-object p8, LU9/a;->TR:LU9/a;

    if-ne p7, p8, :cond_15

    add-float/2addr p3, p5

    goto :goto_9

    :cond_15
    sget-object p8, LU9/a;->BR:LU9/a;

    if-ne p7, p8, :cond_16

    add-float/2addr p3, p5

    :cond_16
    add-float/2addr p4, p6

    :goto_9
    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p9, p1

    invoke-static {p0, p9}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_17
    if-ne p7, v0, :cond_18

    add-float/2addr p3, p9

    :goto_a
    add-float/2addr p4, p9

    goto :goto_c

    :cond_18
    sget-object p8, LU9/a;->TR:LU9/a;

    if-ne p7, p8, :cond_19

    add-float/2addr p3, p5

    sub-float/2addr p3, p9

    goto :goto_a

    :cond_19
    sget-object p8, LU9/a;->BR:LU9/a;

    if-ne p7, p8, :cond_1a

    add-float/2addr p3, p5

    sub-float/2addr p3, p9

    :goto_b
    add-float/2addr p4, p6

    sub-float/2addr p4, p9

    goto :goto_c

    :cond_1a
    add-float/2addr p3, p9

    goto :goto_b

    :goto_c
    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p1, p9

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static F(Lub/n;LU9/e;FF)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tex",
            "mode",
            "maskValue01",
            "maskAngleDeg"
        }
    .end annotation

    move/from16 v0, p3

    invoke-static/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->I(F)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lub/p;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lub/p;->getHeight()I

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v5, v6

    int-to-float v8, v4

    mul-float v9, v8, v6

    if-eqz p1, :cond_1

    move-object/from16 v10, p1

    goto :goto_0

    :cond_1
    sget-object v10, LU9/e;->Linear:LU9/e;

    :goto_0
    sget-object v11, LU9/e;->Linear:LU9/e;

    if-ne v10, v11, :cond_4

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    double-to-float v11, v14

    float-to-double v14, v11

    move v11, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v3, v14

    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float/2addr v14, v15

    const v15, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :cond_2
    sub-float v14, v5, v6

    sub-float v15, v8, v6

    mul-float v16, v2, v6

    mul-float v17, v3, v6

    add-float v6, v16, v17

    mul-float/2addr v14, v2

    add-float v13, v14, v17

    mul-float/2addr v15, v3

    add-float v12, v16, v15

    add-float/2addr v14, v15

    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move/from16 v16, v2

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v6, v2

    const v12, 0x322bcc77    # 1.0E-8f

    cmpl-float v13, v6, v12

    if-lez v13, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v6, v12, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    move v12, v6

    move v6, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_4
    move v11, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    sget-object v13, LU9/e;->Radial:LU9/e;

    if-ne v10, v13, :cond_5

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v14, v7, v13

    sub-float/2addr v5, v13

    sub-float/2addr v5, v7

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v14, v9, v13

    sub-float/2addr v8, v13

    sub-float/2addr v8, v9

    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v5, v5

    mul-float/2addr v8, v8

    add-float/2addr v5, v8

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v5, v13

    const v8, 0x322bcc77    # 1.0E-8f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v5, v8, v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    sget-object v8, LU9/e;->Sweep:LU9/e;

    if-ne v10, v8, :cond_6

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v0, v8

    float-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v8, v13

    sub-float/2addr v0, v8

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v4, :cond_f

    int-to-float v14, v13

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v11, :cond_e

    move/from16 v16, v4

    int-to-float v4, v8

    add-float/2addr v4, v15

    sget-object v15, LU9/e;->Linear:LU9/e;

    if-ne v10, v15, :cond_9

    mul-float/2addr v4, v2

    mul-float v15, v14, v6

    add-float/2addr v4, v15

    sub-float/2addr v4, v3

    mul-float/2addr v4, v12

    const/4 v15, 0x0

    cmpg-float v17, v4, v15

    if-gez v17, :cond_7

    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v17, v4, v15

    if-lez v17, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_8
    :goto_7
    move v15, v2

    move/from16 v17, v3

    :goto_8
    move/from16 v25, v5

    goto :goto_a

    :cond_9
    sget-object v15, LU9/e;->Radial:LU9/e;

    if-ne v10, v15, :cond_b

    sub-float/2addr v4, v7

    sub-float v15, v14, v9

    mul-float/2addr v4, v4

    mul-float/2addr v15, v15

    add-float/2addr v4, v15

    move v15, v2

    move/from16 v17, v3

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_a
    move v4, v2

    goto :goto_8

    :cond_b
    move v15, v2

    move/from16 v17, v3

    sub-float/2addr v4, v7

    sub-float v2, v14, v9

    float-to-double v2, v2

    move/from16 v25, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e22f983

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    goto :goto_9

    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_9
    add-float/2addr v2, v0

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, v2, v3

    :goto_a
    cmpg-float v2, v4, v1

    if-gtz v2, :cond_d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, p0

    move/from16 v19, v8

    move/from16 v20, v13

    invoke-virtual/range {v18 .. v24}, Lub/n;->f0(IIFFFF)V

    :cond_d
    add-int/lit8 v8, v8, 0x1

    move v2, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move/from16 v5, v25

    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_6

    :cond_e
    move v15, v2

    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v25, v5

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    :cond_f
    return-void
.end method

.method public static H(FFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[FZ)V
    .locals 6
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
            "baseR",
            "baseG",
            "baseB",
            "baseA",
            "effectColor",
            "effectK",
            "outRGBA",
            "respectBaseAlpha"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    mul-float/2addr v0, p5

    if-eqz p7, :cond_0

    mul-float/2addr v0, p3

    :cond_0
    const/4 p5, 0x0

    cmpg-float p5, v0, p5

    const/4 p7, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz p5, :cond_1

    aput p0, p6, v3

    aput p1, p6, v2

    aput p2, p6, v1

    aput p3, p6, p7

    return-void

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float v4, v0, p5

    if-lez v4, :cond_2

    move v0, p5

    :cond_2
    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p4

    sub-float/2addr p5, v0

    mul-float/2addr p0, p5

    mul-float/2addr v4, v0

    add-float/2addr p0, v4

    aput p0, p6, v3

    mul-float/2addr p1, p5

    mul-float/2addr v5, v0

    add-float/2addr p1, v5

    aput p1, p6, v2

    mul-float/2addr p2, p5

    mul-float/2addr p4, v0

    add-float/2addr p2, p4

    aput p2, p6, v1

    aput p3, p6, p7

    return-void
.end method

.method public static I(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static J(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "mn",
            "mx"
        }
    .end annotation

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static K(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "w",
            "h"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static L(Lub/n;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tex"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v1, :cond_1

    move v11, v2

    :goto_1
    if-ge v11, v0, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v11

    move v5, v10

    invoke-virtual/range {v3 .. v9}, Lub/n;->f0(IIFFFF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static N(LU9/b;F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "base"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, LU9/b;->Round:LU9/b;

    :cond_0
    sget-object v0, LU9/b;->Sharp:LU9/b;

    if-ne p0, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public static O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static P(F)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleDeg"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v0, v1, p0

    return-object v1
.end method

.method public static Q(FFF)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dist",
            "sizePx",
            "smoothPx"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    cmpg-float v1, p0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_1

    return v2

    :cond_1
    cmpg-float v1, p2, v0

    if-gtz v1, :cond_2

    return v0

    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, p2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->n1(F)F

    move-result p0

    sub-float/2addr v2, p0

    return v2
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    return p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    return p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    return p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    return p0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static l1(FFFFFFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F
    .locals 16
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
            "px",
            "py",
            "sdx",
            "sdy",
            "sizePx",
            "smoothPx",
            "rx",
            "ry",
            "rw",
            "rh",
            "tTL",
            "tTR",
            "tBR",
            "tBL",
            "cTL",
            "cTR",
            "cBR",
            "cBL"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    mul-float v1, p2, p4

    sub-float v2, p0, v1

    mul-float v1, p3, p4

    sub-float v3, p1, v1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move/from16 v13, p15

    move/from16 v14, p16

    move/from16 v15, p17

    invoke-static/range {v2 .. v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v1

    neg-float v1, v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    return v0

    :cond_1
    cmpg-float v0, p5, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_2

    return v2

    :cond_2
    neg-float v0, v1

    div-float v0, v0, p5

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3

    return v2

    :cond_3
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->n1(F)F

    move-result v0

    return v0
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    return-object p0
.end method

.method public static m1(FFFFFFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F
    .locals 16
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
            "px",
            "py",
            "sdx",
            "sdy",
            "sizePx",
            "smoothPx",
            "rx",
            "ry",
            "rw",
            "rh",
            "tTL",
            "tTR",
            "tBR",
            "tBL",
            "cTL",
            "cTR",
            "cBR",
            "cBL"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    mul-float v1, p2, p4

    sub-float v2, p0, v1

    mul-float v1, p3, p4

    sub-float v3, p1, v1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move/from16 v13, p15

    move/from16 v14, p16

    move/from16 v15, p17

    invoke-static/range {v2 .. v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    return v0

    :cond_1
    cmpg-float v0, p5, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_2

    return v2

    :cond_2
    neg-float v0, v1

    div-float v0, v0, p5

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3

    return v2

    :cond_3
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->n1(F)F

    move-result v0

    return v0
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    return p0
.end method

.method public static n1(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    mul-float v0, p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    return v0
.end method

.method private static native nativePaint(JIFFFFFFFFFFFFFIFIFFIIII[FI[F[F)Z
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesPointer",
            "textureType",
            "cornerPx",
            "strokePx",
            "hole",
            "innerGlowSizePx",
            "innerGlowSmoothPx",
            "outerGlowSizePx",
            "outerGlowSmoothPx",
            "innerShadowSizePx",
            "innerShadowSmoothPx",
            "innerShadowAngleDeg",
            "outerShadowSizePx",
            "outerShadowSmoothPx",
            "outerShadowAngleDeg",
            "gradientMode",
            "gradientAngle",
            "maskMode",
            "maskValue",
            "maskAngle",
            "topLeftCorner",
            "topRightCorner",
            "bottomRightCorner",
            "bottomLeftCorner",
            "colors",
            "gradientCount",
            "gradientPositions",
            "gradientColors"
        }
    .end annotation
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    return p0
.end method

.method public static o1(FFFF)F
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vx",
            "vy",
            "r",
            "p"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p0

    float-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, p1

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v4, v2

    const v2, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    neg-float p0, p2

    return p0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, p3

    float-to-double v7, v4

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v4, v9

    sub-float/2addr v4, p2

    sub-float/2addr v3, v2

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float p2, v7

    const/4 v3, 0x0

    cmpl-float p0, p0, v3

    if-lez p0, :cond_1

    sub-float p0, p3, v2

    float-to-double v7, p0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v7, p2

    mul-double/2addr v0, v7

    double-to-float p0, v0

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    sub-float/2addr p3, v2

    float-to-double v0, p3

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    mul-double/2addr v0, p1

    double-to-float v3, v0

    :cond_2
    mul-float/2addr p0, p0

    mul-float/2addr v3, v3

    add-float/2addr p0, v3

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_3

    return v4

    :cond_3
    div-float/2addr v4, p0

    return v4
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    return p0
.end method

.method public static q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "colors",
            "offset",
            "colorINT"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    aput p2, p0, p1

    add-int/lit8 v0, p1, 0x1

    aput p2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aput p2, p0, v0

    add-int/lit8 p1, p1, 0x3

    aput p2, p0, p1

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    aput v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    aput v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p2

    aput p2, p0, p1

    return-void
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    return p0
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    return p0
.end method

.method public static synthetic t(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    return p0
.end method

.method public static synthetic v(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    return p0
.end method

.method public static synthetic w(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    return p0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    return-object p0
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)LU9/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    return-object p0
.end method

.method public static y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "rx",
            "ry",
            "rw",
            "rh",
            "tTL",
            "tTR",
            "tBR",
            "tBL",
            "cTL",
            "cTR",
            "cBR",
            "cBL"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->z0(FFFFFF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, p4, v1

    add-float v2, p2, v2

    mul-float v1, v1, p5

    add-float v1, p3, v1

    cmpg-float v2, p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v3

    :goto_0
    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    move v13, v4

    goto :goto_1

    :cond_1
    move v13, v3

    :goto_1
    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    sget-object v7, LU9/a;->TL:LU9/a;

    invoke-static/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v8

    move v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->E(FFFFFFFLU9/a;LU9/b;F)F

    move-result v0

    :cond_2
    move v2, v0

    if-nez v12, :cond_3

    if-eqz v13, :cond_3

    sget-object v9, LU9/a;->TR:LU9/a;

    invoke-static/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v10

    move v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v11, p11

    invoke-static/range {v2 .. v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->E(FFFFFFFLU9/a;LU9/b;F)F

    move-result v0

    move v2, v0

    :cond_3
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    sget-object v9, LU9/a;->BR:LU9/a;

    invoke-static/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v10

    move v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v11, p12

    invoke-static/range {v2 .. v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->E(FFFFFFFLU9/a;LU9/b;F)F

    move-result v0

    move v2, v0

    :cond_4
    if-eqz v12, :cond_5

    if-nez v13, :cond_5

    sget-object v9, LU9/a;->BL:LU9/a;

    invoke-static/range {p9 .. p9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v10

    move v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v11, p13

    invoke-static/range {v2 .. v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->E(FFFFFFFLU9/a;LU9/b;F)F

    move-result v2

    :cond_5
    return v2
.end method

.method public static synthetic z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    return p0
.end method

.method public static z0(FFFFFF)F
    .locals 1
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
            "px",
            "py",
            "rx",
            "ry",
            "rw",
            "rh"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p4, v0

    add-float/2addr p2, p4

    mul-float/2addr p5, v0

    add-float/2addr p3, p5

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p0, p4

    sub-float/2addr p1, p5

    const/4 p2, 0x0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    add-float/2addr p3, p0

    return p3
.end method


# virtual methods
.method public A0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public D0(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public E0()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->D0(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F0(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->D0(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final G(Lub/n;FFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFFZFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 48
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
            "tex",
            "ox",
            "oy",
            "ow",
            "oh",
            "oTLT",
            "oTRT",
            "oBRT",
            "oBLT",
            "cOTL",
            "cOTR",
            "cOBR",
            "cOBL",
            "useHole",
            "ix",
            "iy",
            "iw",
            "ih",
            "iTLT",
            "iTRT",
            "iBRT",
            "iBLT",
            "cITL",
            "cITR",
            "cIBR",
            "cIBL",
            "strokePx",
            "strokeColor",
            "oGlowSizePx",
            "oGlowSmoothPx",
            "oGlowColor",
            "oShadowSizePx",
            "oShadowSmoothPx",
            "oShadowAngleDeg",
            "oShadowColor"
        }
    .end annotation

    move/from16 v0, p29

    move/from16 v1, p30

    invoke-virtual/range {p1 .. p1}, Lub/p;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lub/p;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p28, :cond_0

    invoke-virtual/range {p28 .. p28}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_0

    cmpl-float v7, p27, v6

    if-lez v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    if-eqz p31, :cond_2

    invoke-virtual/range {p31 .. p31}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v8

    cmpl-float v8, v8, v6

    if-lez v8, :cond_2

    cmpl-float v8, v0, v6

    if-gtz v8, :cond_1

    cmpl-float v8, v1, v6

    if-lez v8, :cond_2

    :cond_1
    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    if-eqz p35, :cond_3

    invoke-virtual/range {p35 .. p35}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v9

    cmpl-float v9, v9, v6

    if-lez v9, :cond_3

    cmpl-float v9, p32, v6

    if-lez v9, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    const/high16 v28, 0x3f800000    # 1.0f

    if-eqz v9, :cond_4

    invoke-static/range {p34 .. p34}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->P(F)[F

    move-result-object v10

    aget v11, v10, v4

    aget v10, v10, v5

    move/from16 v29, v10

    move/from16 v30, v11

    goto :goto_3

    :cond_4
    move/from16 v29, v6

    move/from16 v30, v28

    :goto_3
    move v15, v4

    :goto_4
    if-ge v15, v3, :cond_17

    int-to-float v10, v15

    const/high16 v31, 0x3f000000    # 0.5f

    add-float v46, v10, v31

    move v14, v4

    :goto_5
    if-ge v14, v2, :cond_16

    int-to-float v10, v14

    add-float v10, v10, v31

    move/from16 v32, v10

    move/from16 v33, v46

    move/from16 v34, p2

    move/from16 v35, p3

    move/from16 v36, p4

    move/from16 v37, p5

    move-object/from16 v38, p6

    move-object/from16 v39, p7

    move-object/from16 v40, p8

    move-object/from16 v41, p9

    move/from16 v42, p10

    move/from16 v43, p11

    move/from16 v44, p12

    move/from16 v45, p13

    invoke-static/range {v32 .. v45}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v47

    if-eqz p14, :cond_5

    move/from16 v32, v10

    move/from16 v33, v46

    move/from16 v34, p15

    move/from16 v35, p16

    move/from16 v36, p17

    move/from16 v37, p18

    move-object/from16 v38, p19

    move-object/from16 v39, p20

    move-object/from16 v40, p21

    move-object/from16 v41, p22

    move/from16 v42, p23

    move/from16 v43, p24

    move/from16 v44, p25

    move/from16 v45, p26

    invoke-static/range {v32 .. v45}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v11

    :goto_6
    move v13, v11

    goto :goto_7

    :cond_5
    const v11, 0x497423f0    # 999999.0f

    goto :goto_6

    :goto_7
    cmpg-float v11, v47, v6

    if-gtz v11, :cond_7

    if-eqz p14, :cond_6

    cmpl-float v12, v13, v6

    if-ltz v12, :cond_7

    :cond_6
    :goto_8
    move/from16 v35, v14

    move/from16 v36, v15

    goto/16 :goto_10

    :cond_7
    cmpl-float v12, v47, v6

    if-lez v12, :cond_8

    move v12, v5

    goto :goto_9

    :cond_8
    move v12, v4

    :goto_9
    if-eqz p14, :cond_9

    if-gtz v11, :cond_9

    cmpg-float v11, v13, v6

    if-gtz v11, :cond_9

    move v11, v5

    goto :goto_a

    :cond_9
    move v11, v4

    :goto_a
    if-nez v12, :cond_a

    if-nez v11, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v12, :cond_b

    move/from16 v32, v4

    move/from16 v12, v47

    goto :goto_b

    :cond_b
    neg-float v11, v13

    move/from16 v32, v5

    move v12, v11

    :goto_b
    if-eqz v9, :cond_e

    if-nez v32, :cond_c

    move/from16 v11, v46

    move v4, v12

    move/from16 v12, v30

    move v5, v13

    move/from16 v13, v29

    move/from16 v35, v14

    move/from16 v14, p32

    move/from16 v36, v15

    move/from16 v15, p33

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move/from16 v24, p10

    move/from16 v25, p11

    move/from16 v26, p12

    move/from16 v27, p13

    invoke-static/range {v10 .. v27}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->m1(FFFFFFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v10

    goto :goto_c

    :cond_c
    move v4, v12

    move v5, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v11, v46

    move/from16 v12, v30

    move/from16 v13, v29

    move/from16 v14, p32

    move/from16 v15, p33

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    invoke-static/range {v10 .. v27}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->l1(FFFFFFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v10

    :goto_c
    cmpl-float v11, v10, v6

    if-lez v11, :cond_f

    invoke-virtual/range {p35 .. p35}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v11

    mul-float/2addr v11, v10

    cmpl-float v10, v11, v28

    if-lez v10, :cond_d

    move/from16 v11, v28

    :cond_d
    invoke-virtual/range {p35 .. p35}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v10

    mul-float/2addr v10, v11

    sub-float v12, v28, v11

    mul-float/2addr v12, v6

    add-float/2addr v10, v12

    invoke-virtual/range {p35 .. p35}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v13

    mul-float/2addr v13, v11

    add-float/2addr v13, v12

    invoke-virtual/range {p35 .. p35}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v14

    mul-float/2addr v14, v11

    add-float/2addr v14, v12

    add-float/2addr v11, v12

    goto :goto_d

    :cond_e
    move v4, v12

    move v5, v13

    move/from16 v35, v14

    move/from16 v36, v15

    :cond_f
    move v10, v6

    move v11, v10

    move v13, v11

    move v14, v13

    :goto_d
    if-eqz v8, :cond_11

    invoke-static {v4, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Q(FFF)F

    move-result v4

    cmpl-float v12, v4, v6

    if-lez v12, :cond_11

    invoke-virtual/range {p31 .. p31}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v12

    mul-float/2addr v12, v4

    cmpl-float v4, v12, v28

    if-lez v4, :cond_10

    move/from16 v12, v28

    :cond_10
    invoke-virtual/range {p31 .. p31}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    mul-float/2addr v4, v12

    sub-float v15, v28, v12

    mul-float/2addr v10, v15

    add-float/2addr v10, v4

    invoke-virtual/range {p31 .. p31}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v4

    mul-float/2addr v4, v12

    mul-float/2addr v13, v15

    add-float/2addr v13, v4

    invoke-virtual/range {p31 .. p31}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v4

    mul-float/2addr v4, v12

    mul-float/2addr v14, v15

    add-float/2addr v14, v4

    mul-float/2addr v11, v15

    add-float/2addr v11, v12

    :cond_11
    if-eqz v7, :cond_14

    if-nez v32, :cond_12

    cmpg-float v4, v47, p27

    if-gtz v4, :cond_14

    goto :goto_e

    :cond_12
    neg-float v4, v5

    cmpg-float v4, v4, p27

    if-gtz v4, :cond_14

    :goto_e
    invoke-virtual/range {p28 .. p28}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v4

    cmpl-float v5, v4, v28

    if-lez v5, :cond_13

    move/from16 v4, v28

    :cond_13
    invoke-virtual/range {p28 .. p28}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v5

    mul-float/2addr v5, v4

    sub-float v12, v28, v4

    mul-float/2addr v10, v12

    add-float/2addr v10, v5

    invoke-virtual/range {p28 .. p28}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    mul-float/2addr v5, v4

    mul-float/2addr v13, v12

    add-float/2addr v13, v5

    invoke-virtual/range {p28 .. p28}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v5

    mul-float/2addr v5, v4

    mul-float/2addr v14, v12

    add-float/2addr v14, v5

    mul-float/2addr v11, v12

    add-float/2addr v4, v11

    move/from16 v16, v4

    goto :goto_f

    :cond_14
    move/from16 v16, v11

    :goto_f
    cmpl-float v4, v16, v6

    if-lez v4, :cond_15

    div-float v4, v10, v16

    div-float v5, v13, v16

    div-float v15, v14, v16

    move-object/from16 v10, p1

    move/from16 v11, v35

    move/from16 v12, v36

    move v13, v4

    move v14, v5

    invoke-virtual/range {v10 .. v16}, Lub/n;->f0(IIFFFF)V

    :cond_15
    :goto_10
    add-int/lit8 v14, v35, 0x1

    move/from16 v15, v36

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_16
    move/from16 v36, v15

    add-int/lit8 v15, v36, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method public G0(LU9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public H0(LU9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public I0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public K0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public L0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public M()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->f()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    return-object v0
.end method

.method public M0(LU9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public N0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public O0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public P0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public Q0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final R(Lub/n;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;FFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFFZFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 66
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
            "tex",
            "gradient",
            "angleDeg",
            "ox",
            "oy",
            "ow",
            "oh",
            "oTLT",
            "oTRT",
            "oBRT",
            "oBLT",
            "cOTL",
            "cOTR",
            "cOBR",
            "cOBL",
            "useHole",
            "ix",
            "iy",
            "iw",
            "ih",
            "iTLT",
            "iTRT",
            "iBRT",
            "iBLT",
            "cITL",
            "cITR",
            "cIBR",
            "cIBL",
            "innerGlowSizePx",
            "innerGlowSmoothPx",
            "innerGlowColor",
            "innerShadowSizePx",
            "innerShadowSmoothPx",
            "innerShadowAngleDeg",
            "innerShadowColor"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v15, p29

    move/from16 v14, p30

    move/from16 v13, p32

    move/from16 v12, p33

    invoke-virtual/range {p1 .. p1}, Lub/p;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lub/p;->getHeight()I

    move-result v10

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz p31, :cond_1

    invoke-virtual/range {p31 .. p31}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v2

    cmpl-float v2, v2, v18

    if-lez v2, :cond_1

    cmpl-float v2, v15, v18

    if-gtz v2, :cond_0

    cmpl-float v2, v14, v18

    if-lez v2, :cond_1

    :cond_0
    move/from16 v27, v17

    goto :goto_0

    :cond_1
    move/from16 v27, v16

    :goto_0
    if-eqz p35, :cond_3

    invoke-virtual/range {p35 .. p35}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v2

    cmpl-float v2, v2, v18

    if-lez v2, :cond_3

    cmpl-float v2, v13, v18

    if-gtz v2, :cond_2

    cmpl-float v2, v12, v18

    if-lez v2, :cond_3

    :cond_2
    move/from16 v28, v17

    goto :goto_1

    :cond_3
    move/from16 v28, v16

    :goto_1
    const/high16 v29, 0x3f800000    # 1.0f

    if-eqz v28, :cond_4

    invoke-static/range {p34 .. p34}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->P(F)[F

    move-result-object v2

    aget v3, v2, v16

    aget v2, v2, v17

    move/from16 v30, v2

    move/from16 v31, v3

    goto :goto_2

    :cond_4
    move/from16 v30, v18

    move/from16 v31, v29

    :goto_2
    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v2, 0x4

    new-array v8, v2, [F

    const/4 v7, 0x2

    new-array v6, v7, [F

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    sget-object v3, LU9/d;->Linear:LU9/d;

    const/high16 v47, 0x3f000000    # 0.5f

    if-ne v2, v3, :cond_7

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    move-object/from16 v19, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, v5, v5

    mul-float v7, v2, v2

    add-float/2addr v3, v7

    const v7, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5

    move/from16 v2, v18

    move/from16 v5, v29

    :cond_5
    add-float v3, p4, v47

    add-float v7, p5, v47

    add-float v8, p4, p6

    sub-float v8, v8, v47

    add-float v20, p5, p7

    sub-float v20, v20, v47

    mul-float/2addr v3, v5

    mul-float/2addr v7, v2

    add-float v4, v3, v7

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    mul-float v20, v20, v2

    add-float v3, v3, v20

    add-float v8, v8, v20

    move/from16 v20, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v22, v5

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v3, v2

    const v4, 0x322bcc77    # 1.0E-8f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_6

    div-float v3, v29, v3

    goto :goto_3

    :cond_6
    move/from16 v3, v18

    :goto_3
    move/from16 v49, v2

    move/from16 v50, v3

    move/from16 v48, v20

    move/from16 v51, v22

    goto :goto_4

    :cond_7
    move-object/from16 v19, v8

    move/from16 v48, v18

    move/from16 v49, v48

    move/from16 v50, v29

    move/from16 v51, v50

    :goto_4
    mul-float v2, p6, v47

    add-float v52, p4, v2

    mul-float v2, p7, v47

    add-float v53, p5, v2

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    sget-object v3, LU9/d;->Radial:LU9/d;

    if-ne v2, v3, :cond_9

    sub-float v2, v52, p4

    add-float v3, p4, p6

    sub-float v3, v3, v52

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v53, p5

    add-float v4, p5, p7

    sub-float v4, v4, v53

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x322bcc77    # 1.0E-8f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    div-float v2, v29, v2

    goto :goto_5

    :cond_8
    move/from16 v2, v18

    :goto_5
    move/from16 v54, v2

    goto :goto_6

    :cond_9
    move/from16 v54, v18

    :goto_6
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    sget-object v3, LU9/d;->Sweep:LU9/d;

    if-ne v2, v3, :cond_a

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v1, v2

    move/from16 v55, v1

    goto :goto_7

    :cond_a
    move/from16 v55, v18

    :goto_7
    move/from16 v8, v16

    :goto_8
    if-ge v8, v10, :cond_1a

    int-to-float v1, v8

    add-float v56, v1, v47

    move/from16 v7, v16

    :goto_9
    if-ge v7, v11, :cond_19

    int-to-float v1, v7

    add-float v20, v1, v47

    move/from16 v1, v20

    move/from16 v2, v56

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v57, v6

    move/from16 v6, p7

    move/from16 v59, v7

    const/16 v58, 0x2

    move-object/from16 v7, p8

    move/from16 v61, v8

    move-object/from16 v60, v19

    move-object/from16 v8, p9

    move-object v15, v9

    move-object/from16 v9, p10

    move/from16 v62, v10

    move-object/from16 v10, p11

    move/from16 v63, v11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    invoke-static/range {v1 .. v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v1

    cmpl-float v2, v1, v18

    if-lez v2, :cond_b

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, p1

    move/from16 v21, v59

    move/from16 v22, v61

    invoke-virtual/range {v20 .. v26}, Lub/n;->f0(IIFFFF)V

    :goto_a
    move-object/from16 v65, v15

    goto/16 :goto_14

    :cond_b
    const v2, 0x497423f0    # 999999.0f

    if-eqz p16, :cond_c

    move/from16 v32, v20

    move/from16 v33, v56

    move/from16 v34, p17

    move/from16 v35, p18

    move/from16 v36, p19

    move/from16 v37, p20

    move-object/from16 v38, p21

    move-object/from16 v39, p22

    move-object/from16 v40, p23

    move-object/from16 v41, p24

    move/from16 v42, p25

    move/from16 v43, p26

    move/from16 v44, p27

    move/from16 v45, p28

    invoke-static/range {v32 .. v45}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->y0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF)F

    move-result v3

    cmpg-float v4, v3, v18

    if-gtz v4, :cond_d

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, p1

    move/from16 v21, v59

    move/from16 v22, v61

    invoke-virtual/range {v20 .. v26}, Lub/n;->f0(IIFFFF)V

    goto :goto_a

    :cond_c
    move v3, v2

    :cond_d
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    sget-object v5, LU9/d;->Solid:LU9/d;

    if-ne v4, v5, :cond_e

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    move-object/from16 v14, p2

    :goto_b
    move/from16 v64, v7

    goto/16 :goto_f

    :cond_e
    sget-object v5, LU9/d;->Linear:LU9/d;

    if-ne v4, v5, :cond_11

    mul-float v4, v20, v51

    mul-float v5, v56, v48

    add-float/2addr v4, v5

    sub-float v4, v4, v49

    mul-float v4, v4, v50

    cmpg-float v5, v4, v18

    if-gez v5, :cond_f

    move/from16 v4, v18

    goto :goto_d

    :cond_f
    cmpl-float v5, v4, v29

    if-lez v5, :cond_10

    :goto_c
    move/from16 v4, v29

    :cond_10
    :goto_d
    move-object/from16 v14, p2

    goto :goto_e

    :cond_11
    sget-object v5, LU9/d;->Radial:LU9/d;

    if-ne v4, v5, :cond_12

    sub-float v4, v20, v52

    sub-float v5, v56, v53

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v54

    cmpl-float v5, v4, v29

    if-lez v5, :cond_10

    goto :goto_c

    :cond_12
    sub-float v4, v20, v52

    sub-float v5, v56, v53

    float-to-double v5, v5

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3e22f983

    mul-float/2addr v4, v5

    cmpg-float v5, v4, v18

    if-gez v5, :cond_13

    add-float v4, v4, v29

    :cond_13
    add-float v4, v4, v55

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_d

    :goto_e
    invoke-virtual {v14, v4, v15}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v8

    mul-float/2addr v7, v8

    goto/16 :goto_b

    :goto_f
    neg-float v1, v1

    if-eqz p16, :cond_14

    move v2, v3

    :cond_14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    if-eqz p16, :cond_15

    cmpg-float v1, v2, v1

    if-gez v1, :cond_15

    move/from16 v10, v17

    goto :goto_10

    :cond_15
    move/from16 v10, v16

    :goto_10
    move/from16 v13, p30

    move-object/from16 v65, v15

    move/from16 v15, p29

    if-eqz v27, :cond_16

    invoke-static {v9, v15, v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Q(FFF)F

    move-result v7

    cmpl-float v1, v7, v18

    if-lez v1, :cond_16

    const/4 v8, 0x1

    move v1, v4

    move v2, v5

    move v3, v6

    move/from16 v4, v64

    move-object/from16 v5, p31

    move v6, v7

    move-object/from16 v7, v60

    invoke-static/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->H(FFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[FZ)V

    aget v1, v60, v16

    aget v2, v60, v17

    aget v3, v60, v58

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v22, v3

    goto :goto_11

    :cond_16
    move/from16 v19, v4

    move/from16 v21, v5

    move/from16 v22, v6

    :goto_11
    if-eqz v28, :cond_18

    move/from16 v12, p32

    move/from16 v11, p33

    invoke-static {v9, v12, v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Q(FFF)F

    move-result v23

    cmpl-float v1, v23, v18

    if-lez v1, :cond_18

    if-nez v10, :cond_17

    move/from16 v1, v20

    move/from16 v2, v56

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move-object/from16 v15, v57

    invoke-static/range {v1 .. v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->C0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF[F)V

    goto :goto_12

    :cond_17
    move/from16 v32, v20

    move/from16 v33, v56

    move/from16 v34, p17

    move/from16 v35, p18

    move/from16 v36, p19

    move/from16 v37, p20

    move-object/from16 v38, p21

    move-object/from16 v39, p22

    move-object/from16 v40, p23

    move-object/from16 v41, p24

    move/from16 v42, p25

    move/from16 v43, p26

    move/from16 v44, p27

    move/from16 v45, p28

    move-object/from16 v46, v57

    invoke-static/range {v32 .. v46}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->C0(FFFFFFLU9/b;LU9/b;LU9/b;LU9/b;FFFF[F)V

    aget v1, v57, v16

    neg-float v1, v1

    aput v1, v57, v16

    aget v1, v57, v17

    neg-float v1, v1

    aput v1, v57, v17

    :goto_12
    aget v1, v57, v16

    mul-float v1, v1, v31

    aget v2, v57, v17

    mul-float v2, v2, v30

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->I(F)F

    move-result v1

    mul-float v24, v23, v1

    cmpl-float v1, v24, v18

    if-lez v1, :cond_18

    const/16 v26, 0x1

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v64

    move-object/from16 v23, p35

    move-object/from16 v25, v60

    invoke-static/range {v19 .. v26}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->H(FFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[FZ)V

    aget v1, v60, v16

    aget v2, v60, v17

    aget v3, v60, v58

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_13

    :cond_18
    move/from16 v23, v19

    move/from16 v24, v21

    move/from16 v25, v22

    :goto_13
    move-object/from16 v20, p1

    move/from16 v21, v59

    move/from16 v22, v61

    move/from16 v26, v64

    invoke-virtual/range {v20 .. v26}, Lub/n;->f0(IIFFFF)V

    :goto_14
    add-int/lit8 v7, v59, 0x1

    move/from16 v15, p29

    move/from16 v14, p30

    move/from16 v13, p32

    move/from16 v12, p33

    move-object/from16 v6, v57

    move-object/from16 v19, v60

    move/from16 v8, v61

    move/from16 v10, v62

    move/from16 v11, v63

    move-object/from16 v9, v65

    goto/16 :goto_9

    :cond_19
    move-object/from16 v57, v6

    move/from16 v61, v8

    move-object/from16 v65, v9

    move/from16 v62, v10

    move/from16 v63, v11

    move-object/from16 v60, v19

    const/16 v58, 0x2

    add-int/lit8 v8, v61, 0x1

    move/from16 v15, p29

    move/from16 v14, p30

    move/from16 v13, p32

    move/from16 v12, p33

    goto/16 :goto_8

    :cond_1a
    return-void
.end method

.method public R0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public S()LU9/b;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    return-object v0
.end method

.method public S0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public T()LU9/b;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    return-object v0
.end method

.method public T0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public U()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public U0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public V()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object v0
.end method

.method public V0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public W()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    return v0
.end method

.method public W0(LU9/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public X()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    return v0
.end method

.method public X0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public Y()LU9/d;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    return-object v0
.end method

.method public Y0(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onRequestDrawRunnable"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public Z()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    return v0
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public a0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public a1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public b0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    return v0
.end method

.method public b1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public c0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    return v0
.end method

.method public c1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->M()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    move-result-object v0

    return-object v0
.end method

.method public d0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    return v0
.end method

.method public d1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public e0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public e1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public f0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    return v0
.end method

.method public f1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public g0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    return v0
.end method

.method public g1(LJAVARuntime/UIStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->c:LJAVARuntime/UIStyle;

    return-void
.end method

.method public h0(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v3, "Corner"

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v2, "Corners"

    invoke-static {v2, v1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v2, "Hole"

    invoke-static {v2, v1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v2, "Mask"

    invoke-static {v2, v1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;Landroid/content/Context;)V

    const-string p1, "Color"

    invoke-static {p1, v1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$h;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v1, "Stroke"

    invoke-static {v1, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v1, "Inner glow"

    invoke-static {v1, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$j;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v1, "Outer glow"

    invoke-static {v1, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$k;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v1, "Inner shadow"

    invoke-static {v1, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    const-string v1, "Outer shadow"

    invoke-static {v1, p1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public h1(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public i0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    return v0
.end method

.method public i1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public j0()LU9/e;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    return-object v0
.end method

.method public j1(LU9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public k0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    return v0
.end method

.method public k1(LU9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public l0()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public m0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public n0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    return v0
.end method

.method public o0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    return v0
.end method

.method public p0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    return v0
.end method

.method public p1()LJAVARuntime/UIStyle;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->c:LJAVARuntime/UIStyle;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIStyle;

    invoke-direct {v0, p0}, LJAVARuntime/UIStyle;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->c:LJAVARuntime/UIStyle;

    :cond_0
    return-object v0
.end method

.method public q0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public r0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    return v0
.end method

.method public s0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    return v0
.end method

.method public t0()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    return v0
.end method

.method public u0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public v0()LU9/b;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    return-object v0
.end method

.method public w0()LU9/b;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    return-object v0
.end method

.method public x0(Lub/n;LU9/c;)Z
    .locals 33
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scratchTexture",
            "DPConversor"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lub/p;->getWidth()I

    invoke-virtual/range {p1 .. p1}, Lub/p;->getHeight()I

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->corner:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v6

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->stroke:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v7

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSize:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v9

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowSmooth:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v10

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSize:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v11

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowSmooth:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v12

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSize:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v13

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowSmooth:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v14

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSize:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v16

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowSmooth:F

    invoke-interface {v1, v2}, LU9/c;->a(F)F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lub/n;->x()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v1

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    const/16 v32, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    if-eqz v2, :cond_7

    move/from16 v5, v32

    :goto_0
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->strokeColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v8, 0x4

    invoke-static {v2, v8, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    const/16 v4, 0x8

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v2, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    const/16 v4, 0xc

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerGlowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v2, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    const/16 v4, 0x10

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v2, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    const/16 v4, 0x14

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v2, v4, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q1([FILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->j()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-lez v2, :cond_3

    new-array v4, v2, [F

    mul-int/lit8 v8, v2, 0x4

    new-array v8, v8, [F

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v15, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->i(I)Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v18

    aput v18, v4, v3

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v15

    mul-int/lit8 v18, v3, 0x4

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v19

    aput v19, v8, v18

    add-int/lit8 v19, v18, 0x1

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v20

    aput v20, v8, v19

    add-int/lit8 v19, v18, 0x2

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v20

    aput v20, v8, v19

    add-int/lit8 v18, v18, 0x3

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v15

    aput v15, v8, v18

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v30, v4

    move-object/from16 v31, v8

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v30, v3

    move-object/from16 v31, v30

    :goto_3
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientMode:LU9/d;

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move/from16 v19, v3

    goto :goto_5

    :cond_4
    sget-object v3, LU9/d;->Solid:LU9/d;

    goto :goto_4

    :goto_5
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskMode:LU9/e;

    if-eqz v3, :cond_5

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move/from16 v21, v3

    goto :goto_7

    :cond_5
    sget-object v3, LU9/e;->Linear:LU9/e;

    goto :goto_6

    :goto_7
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topLeftCorner:LU9/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v24

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->topRightCorner:LU9/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v25

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomRightCorner:LU9/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->bottomLeftCorner:LU9/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(LU9/b;)LU9/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v27

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->getPointerCritical()J

    move-result-wide v3

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->hole:F

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->innerShadowAngle:F

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->outerShadowAngle:F

    move/from16 v18, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->gradientAngle:F

    move/from16 v20, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskValue:F

    move/from16 v22, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->maskAngle:F

    move/from16 v23, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b:[F

    move-object/from16 v28, v1

    move/from16 v29, v2

    invoke-static/range {v3 .. v31}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->nativePaint(JIFFFFFFFFFFFFFIFIFFIIII[FI[F[F)Z

    move-result v1

    if-eqz v1, :cond_6

    return v32

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Native paint failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported texture type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
