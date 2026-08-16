.class public final Ln0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n617#2,6:2168\n617#2,6:2174\n617#2,6:2180\n617#2,6:2186\n617#2,6:2192\n622#2:2198\n617#2,6:2199\n617#2,6:2205\n617#2,6:2211\n617#2,6:2217\n617#2,6:2223\n617#2,6:2229\n617#2,6:2235\n617#2,6:2241\n622#2:2247\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float4\n*L\n568#1:2156,6\n569#1:2162,6\n570#1:2168,6\n571#1:2174,6\n569#1:2180,6\n570#1:2186,6\n571#1:2192,6\n575#1:2198\n592#1:2199,6\n593#1:2205,6\n594#1:2211,6\n595#1:2217,6\n592#1:2223,6\n593#1:2229,6\n594#1:2235,6\n595#1:2241,6\n599#1:2247\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float4\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n617#2,6:2168\n617#2,6:2174\n617#2,6:2180\n617#2,6:2186\n617#2,6:2192\n622#2:2198\n617#2,6:2199\n617#2,6:2205\n617#2,6:2211\n617#2,6:2217\n617#2,6:2223\n617#2,6:2229\n617#2,6:2235\n617#2,6:2241\n622#2:2247\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float4\n*L\n568#1:2156,6\n569#1:2162,6\n570#1:2168,6\n571#1:2174,6\n569#1:2180,6\n570#1:2186,6\n571#1:2192,6\n575#1:2198\n592#1:2199,6\n593#1:2205,6\n594#1:2211,6\n595#1:2217,6\n592#1:2223,6\n593#1:2229,6\n594#1:2235,6\n595#1:2241,6\n599#1:2247\n*E\n"
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Ln0/g;-><init>(FFFFILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p1, p1, p1}, Ln0/g;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ln0/g;->a:F

    .line 4
    iput p2, p0, Ln0/g;->b:F

    .line 5
    iput p3, p0, Ln0/g;->c:F

    .line 6
    iput p4, p0, Ln0/g;->d:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/x;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Ln0/g;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Ln0/e;FF)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Ln0/g;-><init>(FFFF)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/e;FFILkotlin/jvm/internal/x;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ln0/g;-><init>(Ln0/e;FF)V

    return-void
.end method

.method public constructor <init>(Ln0/f;F)V
    .locals 2
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Ln0/g;-><init>(FFFF)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/f;FILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Ln0/g;-><init>(Ln0/f;F)V

    return-void
.end method

.method public constructor <init>(Ln0/g;)V
    .locals 3
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p1, Ln0/g;->a:F

    iget v1, p1, Ln0/g;->b:F

    iget v2, p1, Ln0/g;->c:F

    iget p1, p1, Ln0/g;->d:F

    invoke-direct {p0, v0, v1, v2, p1}, Ln0/g;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic c(Ln0/g;FFILjava/lang/Object;)Ln0/g;
    .locals 4

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    new-instance p3, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    sub-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v1

    sub-float v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v1, p4

    goto :goto_1

    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v2

    sub-float v3, v2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v2, p4

    goto :goto_2

    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p0

    sub-float v3, p0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, v3, p2

    if-gez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_3
    invoke-direct {p3, v0, v1, v2, p4}, Ln0/g;-><init>(FFFF)V

    return-object p3
.end method

.method public static synthetic d(Ln0/g;Ln0/g;FILjava/lang/Object;)Ln0/g;
    .locals 5

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v1

    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v2

    sub-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_2

    move v1, p4

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v3

    sub-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    move v2, p4

    goto :goto_2

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float v3, p0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, v3, p2

    if-gez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_3
    invoke-direct {p3, v0, v1, v2, p4}, Ln0/g;-><init>(FFFF)V

    return-object p3
.end method

.method public static synthetic j(Ln0/g;FFFFILjava/lang/Object;)Ln0/g;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ln0/g;->a:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ln0/g;->b:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ln0/g;->c:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Ln0/g;->d:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ln0/g;->i(FFFF)Ln0/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ln0/g;FFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic s(Ln0/g;Ln0/g;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result p3

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result p3

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result p3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Ln0/H;Ln0/H;Ln0/H;Ln0/H;)Ln0/g;
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0, p1}, Ln0/g;->u(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/g;->u(Ln0/H;)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/g;->u(Ln0/H;)F

    move-result p3

    invoke-virtual {p0, p4}, Ln0/g;->u(Ln0/H;)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final A0(Ln0/g;)V
    .locals 1
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->I0(F)V

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->C0(F)V

    return-void
.end method

.method public final B()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v0

    return v0
.end method

.method public final B0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->H0(F)V

    return-void
.end method

.method public final C()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v0

    return v0
.end method

.method public final C0(F)V
    .locals 0

    iput p1, p0, Ln0/g;->d:F

    return-void
.end method

.method public final D()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v0

    return v0
.end method

.method public final D0(F)V
    .locals 0

    iput p1, p0, Ln0/g;->a:F

    return-void
.end method

.method public final E()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v0

    return v0
.end method

.method public final E0(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->H0(F)V

    return-void
.end method

.method public final F()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v0

    return v0
.end method

.method public final F0(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->I0(F)V

    return-void
.end method

.method public final G()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    return v0
.end method

.method public final G0(Ln0/g;)V
    .locals 1
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->I0(F)V

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->C0(F)V

    return-void
.end method

.method public final H()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final H0(F)V
    .locals 0

    iput p1, p0, Ln0/g;->b:F

    return-void
.end method

.method public final I()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final I0(F)V
    .locals 0

    iput p1, p0, Ln0/g;->c:F

    return-void
.end method

.method public final J()Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final J0(F)Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final K()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    return v0
.end method

.method public final K0(Ln0/e;)Ln0/g;
    .locals 4
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final L()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final L0(Ln0/f;)Ln0/g;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final M()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final M0(Ln0/g;)Ln0/g;
    .locals 5
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final N()Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final N0()[F
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/g;->a:F

    iget v1, p0, Ln0/g;->b:F

    iget v2, p0, Ln0/g;->c:F

    iget v3, p0, Ln0/g;->d:F

    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v0, 0x2

    aput v2, v4, v0

    const/4 v0, 0x3

    aput v3, v4, v0

    return-object v4
.end method

.method public final O()F
    .locals 1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v0

    return v0
.end method

.method public final O0(LMf/l;)Ln0/g;
    .locals 1
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Ln0/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->I0(F)V

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->C0(F)V

    return-object p0
.end method

.method public final P()F
    .locals 1

    iget v0, p0, Ln0/g;->d:F

    return v0
.end method

.method public final P0()Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    iget v1, p0, Ln0/g;->a:F

    neg-float v1, v1

    iget v2, p0, Ln0/g;->b:F

    neg-float v2, v2

    iget v3, p0, Ln0/g;->c:F

    neg-float v3, v3

    iget v4, p0, Ln0/g;->d:F

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final Q()F
    .locals 1

    iget v0, p0, Ln0/g;->a:F

    return v0
.end method

.method public final R()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final S()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final T()Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final U()F
    .locals 1

    iget v0, p0, Ln0/g;->b:F

    return v0
.end method

.method public final V()F
    .locals 1

    iget v0, p0, Ln0/g;->c:F

    return v0
.end method

.method public final W()Ln0/g;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    iget v1, p0, Ln0/g;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v1, v2

    iput v3, p0, Ln0/g;->a:F

    iget v3, p0, Ln0/g;->b:F

    add-float v4, v3, v2

    iput v4, p0, Ln0/g;->b:F

    iget v4, p0, Ln0/g;->c:F

    add-float v5, v4, v2

    iput v5, p0, Ln0/g;->c:F

    iget v5, p0, Ln0/g;->d:F

    add-float/2addr v2, v5

    iput v2, p0, Ln0/g;->d:F

    invoke-direct {v0, v1, v3, v4, v5}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final X(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/g;->t(I)F

    move-result p1

    return p1
.end method

.method public final Y(F)Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final Z(Ln0/e;)Ln0/g;
    .locals 4
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final a(FF)Ln0/g;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    sub-float v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    sub-float v4, v2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v4

    sub-float v5, v4, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    int-to-float v4, v4

    :goto_2
    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v5

    sub-float v6, v5, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float p2, v6, p2

    if-gez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v3, p1

    :goto_3
    invoke-direct {v0, v1, v2, v4, v3}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final a0(Ln0/f;)Ln0/g;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final b(Ln0/g;F)Ln0/g;
    .locals 7
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    sub-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    const/4 v4, 0x0

    if-gez v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v3

    sub-float v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v5

    sub-float v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, p2

    if-gez v6, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    int-to-float v3, v3

    :goto_2
    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float v6, v5, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float p2, v6, p2

    if-gez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v4, p1

    :goto_3
    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final b0(Ln0/g;)Ln0/g;
    .locals 5
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final c0(F)Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final d0(Ln0/e;)Ln0/g;
    .locals 4
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Ln0/g;->a:F

    return v0
.end method

.method public final e0(Ln0/f;)Ln0/g;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    add-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/g;

    iget v1, p0, Ln0/g;->a:F

    iget v3, p1, Ln0/g;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ln0/g;->b:F

    iget v3, p1, Ln0/g;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ln0/g;->c:F

    iget v3, p1, Ln0/g;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ln0/g;->d:F

    iget p1, p1, Ln0/g;->d:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Ln0/g;->b:F

    return v0
.end method

.method public final f0(Ln0/g;)Ln0/g;
    .locals 5
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Ln0/g;->c:F

    return v0
.end method

.method public final g0(IF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p2, p0, Ln0/g;->d:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p2, p0, Ln0/g;->c:F

    goto :goto_0

    :cond_2
    iput p2, p0, Ln0/g;->b:F

    goto :goto_0

    :cond_3
    iput p2, p0, Ln0/g;->a:F

    :goto_0
    return-void
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Ln0/g;->d:F

    return v0
.end method

.method public final h0(IIF)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/g;->g0(IF)V

    invoke-virtual {p0, p2, p3}, Ln0/g;->g0(IF)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ln0/g;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/g;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/g;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/g;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(FFFF)Ln0/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-direct {v0, p1, p2, p3, p4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final i0(IIIF)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Ln0/g;->g0(IF)V

    invoke-virtual {p0, p2, p4}, Ln0/g;->g0(IF)V

    invoke-virtual {p0, p3, p4}, Ln0/g;->g0(IF)V

    return-void
.end method

.method public final j0(IIIIF)V
    .locals 0

    invoke-virtual {p0, p1, p5}, Ln0/g;->g0(IF)V

    invoke-virtual {p0, p2, p5}, Ln0/g;->g0(IF)V

    invoke-virtual {p0, p3, p5}, Ln0/g;->g0(IF)V

    invoke-virtual {p0, p4, p5}, Ln0/g;->g0(IF)V

    return-void
.end method

.method public final k()Ln0/g;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    iget v1, p0, Ln0/g;->a:F

    const/high16 v2, -0x40800000    # -1.0f

    add-float v3, v1, v2

    iput v3, p0, Ln0/g;->a:F

    iget v3, p0, Ln0/g;->b:F

    add-float v4, v3, v2

    iput v4, p0, Ln0/g;->b:F

    iget v4, p0, Ln0/g;->c:F

    add-float v5, v4, v2

    iput v5, p0, Ln0/g;->c:F

    iget v5, p0, Ln0/g;->d:F

    add-float/2addr v2, v5

    iput v2, p0, Ln0/g;->d:F

    invoke-direct {v0, v1, v3, v4, v5}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final k0(Ln0/H;F)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iput p2, p0, Ln0/g;->d:F

    goto :goto_0

    :pswitch_1
    iput p2, p0, Ln0/g;->c:F

    goto :goto_0

    :pswitch_2
    iput p2, p0, Ln0/g;->b:F

    goto :goto_0

    :pswitch_3
    iput p2, p0, Ln0/g;->a:F

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(F)Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final l0(Ln0/H;Ln0/H;F)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Ln0/g;->k0(Ln0/H;F)V

    invoke-virtual {p0, p2, p3}, Ln0/g;->k0(Ln0/H;F)V

    return-void
.end method

.method public final m(Ln0/e;)Ln0/g;
    .locals 4
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    div-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final m0(Ln0/H;Ln0/H;Ln0/H;F)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Ln0/g;->k0(Ln0/H;F)V

    invoke-virtual {p0, p2, p4}, Ln0/g;->k0(Ln0/H;F)V

    invoke-virtual {p0, p3, p4}, Ln0/g;->k0(Ln0/H;F)V

    return-void
.end method

.method public final n(Ln0/f;)Ln0/g;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    div-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final n0(Ln0/H;Ln0/H;Ln0/H;Ln0/H;F)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index4"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p5}, Ln0/g;->k0(Ln0/H;F)V

    invoke-virtual {p0, p2, p5}, Ln0/g;->k0(Ln0/H;F)V

    invoke-virtual {p0, p3, p5}, Ln0/g;->k0(Ln0/H;F)V

    invoke-virtual {p0, p4, p5}, Ln0/g;->k0(Ln0/H;F)V

    return-void
.end method

.method public final o(Ln0/g;)Ln0/g;
    .locals 5
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final o0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->C0(F)V

    return-void
.end method

.method public final p(FF)Z
    .locals 1

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->I0(F)V

    return-void
.end method

.method public final q(Ln0/g;F)Z
    .locals 2
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/g;->U()F

    move-result v0

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/g;->V()F

    move-result v0

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/g;->P()F

    move-result v0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->H0(F)V

    return-void
.end method

.method public final r0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->I0(F)V

    return-void
.end method

.method public final s0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->C0(F)V

    return-void
.end method

.method public final t(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Ln0/g;->d:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Ln0/g;->c:F

    goto :goto_0

    :cond_2
    iget p1, p0, Ln0/g;->b:F

    goto :goto_0

    :cond_3
    iget p1, p0, Ln0/g;->a:F

    :goto_0
    return p1
.end method

.method public final t0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->D0(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/g;->a:F

    iget v1, p0, Ln0/g;->b:F

    iget v2, p0, Ln0/g;->c:F

    iget v3, p0, Ln0/g;->d:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Float4(x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", z="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", w="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ln0/H;)F
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget p1, p0, Ln0/g;->d:F

    goto :goto_0

    :pswitch_1
    iget p1, p0, Ln0/g;->c:F

    goto :goto_0

    :pswitch_2
    iget p1, p0, Ln0/g;->b:F

    goto :goto_0

    :pswitch_3
    iget p1, p0, Ln0/g;->a:F

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final u0(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->H0(F)V

    return-void
.end method

.method public final v(II)Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0, p1}, Ln0/g;->t(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/g;->t(I)F

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final v0(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->I0(F)V

    return-void
.end method

.method public final w(Ln0/H;Ln0/H;)Ln0/e;
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/e;

    invoke-virtual {p0, p1}, Ln0/g;->u(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/g;->u(Ln0/H;)F

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final w0(Ln0/g;)V
    .locals 1
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->I0(F)V

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->C0(F)V

    return-void
.end method

.method public final x(III)Ln0/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0, p1}, Ln0/g;->t(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/g;->t(I)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/g;->t(I)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final x0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/g;->D0(F)V

    return-void
.end method

.method public final y(Ln0/H;Ln0/H;Ln0/H;)Ln0/f;
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0, p1}, Ln0/g;->u(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/g;->u(Ln0/H;)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/g;->u(Ln0/H;)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final y0(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->H0(F)V

    return-void
.end method

.method public final z(IIII)Ln0/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0, p1}, Ln0/g;->t(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/g;->t(I)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/g;->t(I)F

    move-result p3

    invoke-virtual {p0, p4}, Ln0/g;->t(I)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final z0(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->D0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/g;->H0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/g;->I0(F)V

    return-void
.end method
