.class public LJAVARuntime/Color$Android;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android"
.end annotation


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpha(I)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the alpha component of a color-int. This is equivalent to \'color >>> 24\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente alfa de um color-int. Equivalente a \'color >>> 24\'."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static argb(FFFF)I
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a color-int from alpha, red, green, blue float components (0.0f \u2013 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um color-int a partir dos componentes alfa, vermelho, verde e azul (0.0f \u2013 1.0f) do tipo float."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alpha",
            "red",
            "green",
            "blue"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method public static argb(IIII)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a color-int from alpha, red, green, blue components (0\u2013255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um color-int a partir dos componentes alfa, vermelho, verde e azul (0\u2013255)."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alpha",
            "red",
            "green",
            "blue"
        }
    .end annotation

    .line 2
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static blue(I)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the blue component of a color-int. This is equivalent to \'color & 0xFF\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente azul de um color-int. Equivalente a \'color & 0xFF\'."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static green(I)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the green component of a color-int. This is equivalent to \'(color >> 8) & 0xFF\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente verde de um color-int. Equivalente a \'(color >> 8) & 0xFF\'."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Parses a color String and returns the corresponding color-int."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Parseia uma String de cor e retorna o correspondente color-int."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorString"
        }
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static red(I)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the red component of a color-int. This is equivalent to \'(color >> 16) & 0xFF\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente vermelho de um color-int. Equivalente a \'(color >> 16) & 0xFF\'."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static rgb(FFF)I
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a color-int from red, green, blue float components (0.0f \u2013 1.0f). Alpha is implicitly 1.0."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um color-int a partir dos componentes vermelho, verde e azul (0.0f \u2013 1.0f) do tipo float. O alfa \u00e9 implicitamente 1.0."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "red",
            "green",
            "blue"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr p0, v2

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static rgb(III)I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a color-int from red, green, blue components (0\u2013255). Alpha is implicitly 255."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um color-int a partir dos componentes vermelho, verde e azul (0\u2013255). O alfa \u00e9 implicitamente 255."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "red",
            "green",
            "blue"
        }
    .end annotation

    .line 2
    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method private static saturate(F)F
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

    if-gtz v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method
