.class public final Ln0/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,22:1\n306#2:23\n322#2:24\n*S KotlinDebug\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n*L\n21#1:23\n21#1:24\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nRay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,22:1\n306#2:23\n322#2:24\n*S KotlinDebug\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n*L\n21#1:23\n21#1:24\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ln0/A;F)Ln0/f;
    .locals 4
    .param p0    # Ln0/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "r"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/A;->f()Ln0/f;

    move-result-object v0

    invoke-virtual {p0}, Ln0/A;->e()Ln0/f;

    move-result-object p0

    new-instance v1, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p0

    mul-float/2addr p0, p1

    invoke-direct {v1, v2, v3, p0}, Ln0/f;-><init>(FFF)V

    new-instance p0, Ln0/f;

    invoke-virtual {v0}, Ln0/f;->H()F

    move-result p1

    invoke-virtual {v1}, Ln0/f;->H()F

    move-result v2

    add-float/2addr p1, v2

    invoke-virtual {v0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {v1}, Ln0/f;->K()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Ln0/f;->L()F

    move-result v0

    invoke-virtual {v1}, Ln0/f;->L()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, p1, v2, v0}, Ln0/f;-><init>(FFF)V

    return-object p0
.end method
