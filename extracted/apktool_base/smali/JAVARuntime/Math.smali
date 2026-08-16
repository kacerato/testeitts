.class public final LJAVARuntime/Math;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Math"
    }
.end annotation


# static fields
.field public static final BYTES_IN_FLOAT:I = 0x4

.field public static final BYTES_IN_INT:I = 0x4

.field public static final BYTES_IN_SHORT:I = 0x2

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field public static final RADIANS:F = 0.017453292f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static abs(D)D
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the absolute value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor absoluto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, LNc/b;->j(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static abs(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the absolute value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor absoluto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LNc/b;->k(F)F

    move-result p0

    return p0
.end method

.method public static abs(I)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the absolute value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor absoluto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    invoke-static {p0}, LNc/b;->l(I)I

    move-result p0

    return p0
.end method

.method public static acos(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arccosine of the angle in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco cosseno do \u00e2ngulo em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->m(F)F

    move-result p0

    return p0
.end method

.method public static acosRad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arccosine of the angle in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco cosseno do \u00e2ngulo em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->n(F)F

    move-result p0

    return p0
.end method

.method public static asin(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arcsine of the angle in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco seno do \u00e2ngulo em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->q(F)F

    move-result p0

    return p0
.end method

.method public static asinRad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arcsine of the angle in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco seno do \u00e2ngulo em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->r(F)F

    move-result p0

    return p0
.end method

.method public static atan(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arctangent of the angle in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco tangente do \u00e2ngulo em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->s(F)F

    move-result p0

    return p0
.end method

.method public static atan2(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arctangent of y/x in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco tangente de y/x em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    invoke-static {p0, p1}, LNc/b;->t(FF)F

    move-result p0

    return p0
.end method

.method public static atan2Rad(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arctangent of y/x in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco tangente de y/x em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    invoke-static {p0, p1}, LNc/b;->v(FF)F

    move-result p0

    return p0
.end method

.method public static atanRad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the arctangent of the angle in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arco tangente do \u00e2ngulo em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rad"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->y(F)F

    move-result p0

    return p0
.end method

.method public static blend(FFF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends a value towards the target using the specified blend factor (0..1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Mistura um valor em dire\u00e7\u00e3o ao alvo usando o fator de mistura especificado (0..1)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "target",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "target",
            "blend"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LNc/b;->z(FFF)F

    move-result p0

    return p0
.end method

.method public static bySecond()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the value for this frame to reach 1 in one second (using deltaTime)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor deste frame para alcan\u00e7ar 1 em um segundo (usando o deltaTime)."
    .end annotation

    .line 1
    invoke-static {}, LK8/d;->b()F

    move-result v0

    return v0
.end method

.method public static bySecond(F)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the value for this frame to reach the specified value in one second (using deltaTime)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor deste frame para alcan\u00e7ar o valor especificado em um segundo (usando o deltaTime)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    invoke-static {}, LK8/d;->b()F

    move-result v0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static cbrt(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cubic root of the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a raiz c\u00fabica do valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->C(F)F

    move-result p0

    return p0
.end method

.method public static ceil(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest integer greater than or equal to the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor inteiro maior ou igual ao valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->D(F)F

    move-result p0

    return p0
.end method

.method public static clamp(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Clamps the value to be at least the specified minimum."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Restringe o valor para ser no m\u00ednimo o valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "value"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, LNc/b;->M(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(FFF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Clamps the value between min and max."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Restringe o valor entre min e max."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "value",
            "max"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "value",
            "max"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LNc/b;->E(FFF)F

    move-result p0

    return p0
.end method

.method public static clamp01(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Clamps the value between 0 and 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Restringe o valor entre 0 e 1."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static clampAngleTo360(F)F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Keeps the angle between 0 and 360, keeping values in this range."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Mant\u00e9m o \u00e2ngulo entre 0 e 360, mantendo os valores nesse intervalo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    add-float/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static clampMin(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Clamps the value to be at least the specified minimum."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Restringe o valor para ser no m\u00ednimo o valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "min",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "value"
        }
    .end annotation

    invoke-static {p0, p1}, LNc/b;->M(FF)F

    move-result p0

    return p0
.end method

.method public static cos(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cosine of the angle in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o cosseno do \u00e2ngulo em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->d0(F)F

    move-result p0

    return p0
.end method

.method public static cosRad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cosine of the angle in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o cosseno do \u00e2ngulo em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rad"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->e0(F)F

    move-result p0

    return p0
.end method

.method public static createSubdividedPlane(I)LJAVARuntime/Vertex;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a subdivided plane mesh and returns it as a Vertex."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um mesh de plano subdividido e o retorna como um Vertex."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "verticesPerSide"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticesPerSide"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LNc/b;->h0(I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static createSubdividedPlane(ILJAVARuntime/Vector2;)LJAVARuntime/Vertex;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a subdivided plane mesh using a pivot in the [0..1] range for X and Y, where 0.5 centers the plane."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um mesh de plano subdividido usando um pivot no intervalo [0..1] em X e Y, onde 0.5 centraliza o plano."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "verticesPerSide",
            "pivot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verticesPerSide",
            "pivot"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :goto_0
    invoke-static {p0, p1}, LNc/b;->i0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static deadzone(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns 0 if the value is within the deadzone, otherwise returns the original value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna 0 se o valor estiver dentro da zona morta, caso contr\u00e1rio retorna o valor original."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "deadZone"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "deadzone"
        }
    .end annotation

    invoke-static {p0, p1}, LNc/b;->j0(FF)F

    move-result p0

    return p0
.end method

.method public static deltaPitchDegrees(FLJAVARuntime/Vector3;LJAVARuntime/Vector3;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPitchDeg",
            "pos",
            "target"
        }
    .end annotation

    invoke-static {p1, p2}, LJAVARuntime/Math;->pitchDegrees(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)F

    move-result p1

    sub-float/2addr p1, p0

    invoke-static {p1}, LJAVARuntime/Math;->normalizeDeg(F)F

    move-result p0

    return p0
.end method

.method public static dptopx(I)I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts the value from dp (density-independent pixels) to px (pixels) based on the device screen density."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte o valor de dp (density-independent pixels) para px (pixels) com base na densidade da tela do dispositivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    int-to-float p0, p0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static exp(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns Euler\'s number (e \u2248 2.718) raised to the given value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de Euler (e \u2248 2.718) elevado \u00e0 pot\u00eancia do valor informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->o0(F)F

    move-result p0

    return p0
.end method

.method public static fixNaN(F)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns 0 if the value is NaN, otherwise returns the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna 0 se o valor for NaN, caso contr\u00e1rio retorna o valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public static floor(F)F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest integer less than or equal to the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior inteiro menor ou igual ao valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static floorDiv(II)I
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest integer less than or equal to the algebraic quotient."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior inteiro menor ou igual ao quociente alg\u00e9brico."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int/2addr p1, v0

    if-eq p1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static inverseSQRT(F)F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the inverse square root of the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a raiz quadrada inversa do valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    shr-int/lit8 p0, p0, 0x1

    const v1, 0x5f3759df

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, v0

    mul-float/2addr p0, v1

    return p0
.end method

.method public static isOnDeadzone(FF)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the value is within the deadzone. Returns true if it is, false otherwise."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o valor est\u00e1 dentro da zona morta. Retorna true se estiver, false caso contr\u00e1rio."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "deadZone"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "deadzone"
        }
    .end annotation

    invoke-static {p0, p1}, LNc/b;->K0(FF)Z

    move-result p0

    return p0
.end method

.method public static lerp(FFF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates a value towards the target with the specified speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Interpola um valor at\u00e9 o alvo (value at\u00e9 target) com a velocidade especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "target",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "target",
            "speed"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LNc/b;->N0(FFF)F

    move-result p0

    return p0
.end method

.method public static lerpAngle(FFF)F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates between two angles (0-360) with the specified progress, keeping the result in this range."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Interpola entre dois \u00e2ngulos (0-360) com o progresso especificado, mantendo o resultado nesse intervalo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "target",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "target",
            "progress"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p2, v1}, LNc/b;->E(FFF)F

    move-result p2

    invoke-static {p0}, LJAVARuntime/Math;->clampAngleTo360(F)F

    move-result p0

    invoke-static {p0}, LJAVARuntime/Math;->toRadians(F)F

    move-result p0

    invoke-static {p1}, LJAVARuntime/Math;->clampAngleTo360(F)F

    move-result p1

    invoke-static {p1}, LJAVARuntime/Math;->toRadians(F)F

    move-result p1

    sub-float/2addr p1, p0

    const v0, 0x40c90fdb

    add-float/2addr p1, v0

    const v1, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    invoke-static {p0}, LJAVARuntime/Math;->toDegrees(F)F

    move-result p0

    return p0
.end method

.method public static lerpAngleInSeconds(FFF)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates between two angles (0-360) with the specified progress per second, keeping the result in this range."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Interpola entre dois \u00e2ngulos (0-360) com o progresso especificado em um segundo, mantendo o resultado nesse intervalo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "target",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "target",
            "progress"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Time;->deltaTime()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-static {p0, p1, p2}, LJAVARuntime/Math;->lerpAngle(FFF)F

    move-result p0

    return p0
.end method

.method public static lerpInSeconds(FFF)F
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates a value towards the target with the specified speed per second."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Interpola um valor at\u00e9 o alvo (value at\u00e9 target) com a velocidade especificada em um segundo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "target",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "target",
            "speed"
        }
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    mul-float/2addr p2, v0

    invoke-static {p0, p1, p2}, LNc/b;->N0(FFF)F

    move-result p0

    return p0
.end method

.method public static log(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the natural logarithm (base e) of the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o logaritmo natural (base e) do valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->O0(F)F

    move-result p0

    return p0
.end method

.method public static log10(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the base 10 logarithm of the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o logaritmo de base 10 do valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->P0(F)F

    move-result p0

    return p0
.end method

.method public static max(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 11
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 12
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static max(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p0, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static max(II)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static varargs max([I)I
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 8
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static max(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([J)J
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the largest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o maior valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 15
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 16
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static min(DD)D
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 9
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 11
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 12
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static min(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget v2, p0, v1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static min(II)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static varargs min([I)I
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 8
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static min(JJ)J
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 13
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([J)J
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the smallest value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o menor valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 15
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 16
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static negative(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the negative value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor negativo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    neg-float p0, p0

    return p0
.end method

.method public static negative(I)I
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the negative value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor negativo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    neg-int p0, p0

    return p0
.end method

.method public static negative(Z)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the inverse of the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor inverso."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static normalizeDeg(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deg"
        }
    .end annotation

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    sub-float/2addr p0, v0

    :cond_0
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    add-float/2addr p0, v0

    :cond_1
    return p0
.end method

.method public static pitchDegrees(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "target"
        }
    .end annotation

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getZ()F

    move-result p0

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double v0, v1

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static pow(FF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the value raised to the power of b."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor elevado \u00e0 pot\u00eancia de b."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "b"
        }
    .end annotation

    invoke-static {p0, p1}, LNc/b;->c1(FF)F

    move-result p0

    return p0
.end method

.method public static rangeConverter(FFFFF)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts a value from the range [oldMin, oldMax] to the range [newMin, newMax]."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte um valor do intervalo [oldMin, oldMax] para o intervalo [newMin, newMax]."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "oldMin",
            "oldMax",
            "value",
            "newMin",
            "newMax"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldMin",
            "oldMax",
            "value",
            "newMin",
            "newMax"
        }
    .end annotation

    invoke-static {p2, p0, p1, p3, p4}, LNc/b;->h1(FFFFF)F

    move-result p0

    return p0
.end method

.method public static round(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rounds the value to the nearest integer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Arredonda o valor para o inteiro mais pr\u00f3ximo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->j1(F)F

    move-result p0

    return p0
.end method

.method public static sin(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the sine of the angle in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o seno do \u00e2ngulo em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->m1(F)F

    move-result p0

    return p0
.end method

.method public static sinRad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the sine of the angle in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o seno do \u00e2ngulo em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rad"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->n1(F)F

    move-result p0

    return p0
.end method

.method public static sqrt(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the square root of the value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a raiz quadrada do valor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->q1(F)F

    move-result p0

    return p0
.end method

.method public static tan(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the tangent of the angle in degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a tangente do \u00e2ngulo em graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->B1(F)F

    move-result p0

    return p0
.end method

.method public static tanRad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the tangent of the angle in radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a tangente do \u00e2ngulo em radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rad"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->C1(F)F

    move-result p0

    return p0
.end method

.method public static toDegrees(F)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts radians to degrees."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte radianos para graus."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->J1(F)F

    move-result p0

    return p0
.end method

.method public static toRadians(F)F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts degrees to radians."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte graus para radianos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LNc/b;->K1(F)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
