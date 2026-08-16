.class public LJAVARuntime/Random;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Math"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyDouble()D
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns any random double value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna qualquer valor double aleatorio."
    .end annotation

    invoke-static {}, LNc/d;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public static anyFloat()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns any random float value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna qualquer valor float aleatorio."
    .end annotation

    invoke-static {}, LNc/d;->b()F

    move-result v0

    return v0
.end method

.method public static anyInt()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns any random integer value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna qualquer valor inteiro aleatorio."
    .end annotation

    invoke-static {}, LNc/d;->c()I

    move-result v0

    return v0
.end method

.method public static anyLong()J
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns any random long value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna qualquer valor long aleatorio."
    .end annotation

    invoke-static {}, LNc/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static range(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random float value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um valor float aleat\u00f3rio entre o valor min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, LNc/d;->h(FF)F

    move-result p0

    return p0
.end method

.method public static range(II)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random integer value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um valor inteiro aleat\u00f3rio entre o valor min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LNc/d;->j(II)I

    move-result p0

    return p0
.end method

.method public static rangeDouble(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random double value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um valor double aleat\u00c3\u00b3rio entre o valor min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LNc/d;->g(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static rangeFloat(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random float value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um valor float aleat\u00f3rio entre o valor min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-static {p0, p1}, LNc/d;->h(FF)F

    move-result p0

    return p0
.end method

.method public static rangeInt(II)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random integer value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um valor inteiro aleat\u00f3rio entre o valor min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-static {p0, p1}, LNc/d;->j(II)I

    move-result p0

    return p0
.end method

.method public static rangeLong(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random long value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um valor long aleat\u00c3\u00b3rio entre o valor min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LNc/d;->l(JJ)J

    move-result-wide p0

    return-wide p0
.end method
