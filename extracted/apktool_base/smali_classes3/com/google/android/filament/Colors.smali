.class public Lcom/google/android/filament/Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Colors$c;,
        Lcom/google/android/filament/Colors$a;,
        Lcom/google/android/filament/Colors$d;,
        Lcom/google/android/filament/Colors$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        value = 0x3L
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->nCct(F[F)V

    return-object v0
.end method

.method public static b(F)[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        value = 0x3L
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->nIlluminantD(F[F)V

    return-object v0
.end method

.method public static c(Lcom/google/android/filament/Colors$a;[F)[F
    .locals 6
    .param p0    # Lcom/google/android/filament/Colors$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    aget p0, p1, v1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    aput p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    aget p0, p1, v1

    const v2, 0x3d25aee6    # 0.04045f

    cmpg-float v2, p0, v2

    if-gtz v2, :cond_2

    const v2, 0x414eb852    # 12.92f

    div-float/2addr p0, v2

    goto :goto_2

    :cond_2
    const v2, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v2

    const v2, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v2

    float-to-double v2, p0

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    :goto_2
    aput p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object p1
.end method

.method public static d(Lcom/google/android/filament/Colors$c;FFF)[F
    .locals 2
    .param p0    # Lcom/google/android/filament/Colors$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        value = 0x3L
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->e(Lcom/google/android/filament/Colors$c;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/android/filament/Colors$c;[F)[F
    .locals 1
    .param p0    # Lcom/google/android/filament/Colors$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    sget-object v0, Lcom/google/android/filament/Colors$c;->LINEAR:Lcom/google/android/filament/Colors$c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/filament/Colors$a;->ACCURATE:Lcom/google/android/filament/Colors$a;

    invoke-static {p0, p1}, Lcom/google/android/filament/Colors;->c(Lcom/google/android/filament/Colors$a;[F)[F

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static f(Lcom/google/android/filament/Colors$d;FFFF)[F
    .locals 2
    .param p0    # Lcom/google/android/filament/Colors$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        value = 0x4L
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->g(Lcom/google/android/filament/Colors$d;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/android/filament/Colors$d;[F)[F
    .locals 4
    .param p0    # Lcom/google/android/filament/Colors$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x4L
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lcom/google/android/filament/Colors$a;->ACCURATE:Lcom/google/android/filament/Colors$a;

    invoke-static {p0, p1}, Lcom/google/android/filament/Colors;->c(Lcom/google/android/filament/Colors$a;[F)[F

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/filament/Colors$a;->ACCURATE:Lcom/google/android/filament/Colors$a;

    invoke-static {p0, p1}, Lcom/google/android/filament/Colors;->c(Lcom/google/android/filament/Colors$a;[F)[F

    :cond_2
    const/4 p0, 0x3

    aget p0, p1, p0

    const/4 v2, 0x0

    aget v3, p1, v2

    mul-float/2addr v3, p0

    aput v3, p1, v2

    aget v2, p1, v1

    mul-float/2addr v2, p0

    aput v2, p1, v1

    aget v1, p1, v0

    mul-float/2addr v1, p0

    aput v1, p1, v0

    return-object p1
.end method

.method private static native nCct(F[F)V
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param
.end method

.method private static native nIlluminantD(F[F)V
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param
.end method
