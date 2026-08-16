.class public final Ln0/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScalar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,57:1\n34#1:58\n36#1:59\n*S KotlinDebug\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n38#1:58\n40#1:59\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nScalar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,57:1\n34#1:58\n36#1:59\n*S KotlinDebug\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n38#1:58\n40#1:59\n*E\n"
    }
.end annotation


# static fields
.field public static final a:F = 3.1415927f

.field public static final b:F = 1.5707964f

.field public static final c:F = 6.2831855f

.field public static final d:F = 12.566371f

.field public static final e:F = 0.31830987f

.field public static final f:F = 0.15915494f

.field public static final g:F = 0.07957747f

.field public static final h:S

.field public static final i:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c00

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/D;->h:S

    const/16 v0, 0x4000

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/D;->i:S

    return-void
.end method

.method public static final a(FFF)F
    .locals 1

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

.method public static final b(SSS)S
    .locals 1

    invoke-static {p0, p1}, Ln0/i;->q(SS)I

    move-result v0

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Ln0/i;->q(SS)I

    move-result p1

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static final c(F)F
    .locals 1

    const v0, 0x42652ee0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static final d(F)F
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static final e()S
    .locals 1

    sget-short v0, Ln0/D;->h:S

    return v0
.end method

.method public static final f()S
    .locals 1

    sget-short v0, Ln0/D;->i:S

    return v0
.end method

.method public static final g(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static final h(SSS)S
    .locals 1

    invoke-static {}, Ln0/D;->e()S

    move-result v0

    invoke-static {v0, p2}, Ln0/i;->I(SS)S

    move-result v0

    invoke-static {p0, v0}, Ln0/i;->P(SS)S

    move-result p0

    invoke-static {p1, p2}, Ln0/i;->P(SS)S

    move-result p1

    invoke-static {p0, p1}, Ln0/i;->M(SS)S

    move-result p0

    return p0
.end method

.method public static final i(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final j(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    return p0
.end method

.method public static final k(F)F
    .locals 2

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

.method public static final l(S)S
    .locals 3

    sget-object v0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {v0}, Ln0/i$a;->k()S

    move-result v0

    invoke-static {}, Ln0/D;->e()S

    move-result v1

    invoke-static {p0, v0}, Ln0/i;->q(SS)I

    move-result v2

    if-gez v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Ln0/i;->q(SS)I

    move-result v0

    if-lez v0, :cond_1

    move p0, v1

    :cond_1
    :goto_0
    return p0
.end method

.method public static final m(F)F
    .locals 0

    mul-float/2addr p0, p0

    return p0
.end method

.method public static final n(S)S
    .locals 0

    invoke-static {p0, p0}, Ln0/i;->P(SS)S

    move-result p0

    return p0
.end method
