.class public final Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n617#2,6:2168\n617#2,6:2174\n617#2,6:2180\n622#2:2186\n617#2,6:2187\n617#2,6:2193\n617#2,6:2199\n617#2,6:2205\n617#2,6:2211\n617#2,6:2217\n622#2:2223\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n309#1:2156,6\n310#1:2162,6\n311#1:2168,6\n310#1:2174,6\n311#1:2180,6\n315#1:2186\n327#1:2187,6\n328#1:2193,6\n329#1:2199,6\n327#1:2205,6\n328#1:2211,6\n329#1:2217,6\n333#1:2223\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float3\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n617#2,6:2168\n617#2,6:2174\n617#2,6:2180\n622#2:2186\n617#2,6:2187\n617#2,6:2193\n617#2,6:2199\n617#2,6:2205\n617#2,6:2211\n617#2,6:2217\n622#2:2223\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n309#1:2156,6\n310#1:2162,6\n311#1:2168,6\n310#1:2174,6\n311#1:2180,6\n315#1:2186\n327#1:2187,6\n328#1:2193,6\n329#1:2199,6\n327#1:2205,6\n328#1:2211,6\n329#1:2217,6\n333#1:2223\n*E\n"
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Ln0/f;-><init>(FFFILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p1, p1}, Ln0/f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln0/f;->a:F

    iput p2, p0, Ln0/f;->b:F

    iput p3, p0, Ln0/f;->c:F

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/x;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Ln0/e;F)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Ln0/f;-><init>(FFF)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/e;FILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Ln0/f;-><init>(Ln0/e;F)V

    return-void
.end method

.method public constructor <init>(Ln0/f;)V
    .locals 2
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v0, p1, Ln0/f;->a:F

    iget v1, p1, Ln0/f;->b:F

    iget p1, p1, Ln0/f;->c:F

    invoke-direct {p0, v0, v1, p1}, Ln0/f;-><init>(FFF)V

    return-void
.end method

.method public static synthetic c(Ln0/f;FFILjava/lang/Object;)Ln0/f;
    .locals 3

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    new-instance p3, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

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
    invoke-virtual {p0}, Ln0/f;->K()F

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
    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p0

    sub-float v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_2
    invoke-direct {p3, v0, v1, p4}, Ln0/f;-><init>(FFF)V

    return-object p3
.end method

.method public static synthetic d(Ln0/f;Ln0/f;FILjava/lang/Object;)Ln0/f;
    .locals 4

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p1}, Ln0/f;->H()F

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
    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->K()F

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
    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p0

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    sub-float v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_2
    invoke-direct {p3, v0, v1, p4}, Ln0/f;-><init>(FFF)V

    return-object p3
.end method

.method public static synthetic i(Ln0/f;FFFILjava/lang/Object;)Ln0/f;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Ln0/f;->a:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Ln0/f;->b:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Ln0/f;->c:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ln0/f;->h(FFF)Ln0/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ln0/f;FFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0}, Ln0/f;->H()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/f;->L()F

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

.method public static synthetic q(Ln0/f;Ln0/f;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result p3

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result p3

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p0

    invoke-virtual {p1}, Ln0/f;->L()F

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
.method public final A()F
    .locals 1

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v0

    return v0
.end method

.method public final B()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final C()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final D()F
    .locals 1

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v0

    return v0
.end method

.method public final E()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final F()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final G()F
    .locals 1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v0

    return v0
.end method

.method public final H()F
    .locals 1

    iget v0, p0, Ln0/f;->a:F

    return v0
.end method

.method public final I()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final J()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final K()F
    .locals 1

    iget v0, p0, Ln0/f;->b:F

    return v0
.end method

.method public final L()F
    .locals 1

    iget v0, p0, Ln0/f;->c:F

    return v0
.end method

.method public final M()Ln0/f;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    iget v1, p0, Ln0/f;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v1, v2

    iput v3, p0, Ln0/f;->a:F

    iget v3, p0, Ln0/f;->b:F

    add-float v4, v3, v2

    iput v4, p0, Ln0/f;->b:F

    iget v4, p0, Ln0/f;->c:F

    add-float/2addr v2, v4

    iput v2, p0, Ln0/f;->c:F

    invoke-direct {v0, v1, v3, v4}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final N(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/f;->r(I)F

    move-result p1

    return p1
.end method

.method public final O(F)Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final P(Ln0/e;)Ln0/f;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final Q(Ln0/f;)Ln0/f;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final R(F)Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final S(Ln0/e;)Ln0/f;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final T(Ln0/f;)Ln0/f;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final U(IF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Ln0/f;->c:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p2, p0, Ln0/f;->b:F

    goto :goto_0

    :cond_2
    iput p2, p0, Ln0/f;->a:F

    :goto_0
    return-void
.end method

.method public final V(IIF)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/f;->U(IF)V

    invoke-virtual {p0, p2, p3}, Ln0/f;->U(IF)V

    return-void
.end method

.method public final W(IIIF)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Ln0/f;->U(IF)V

    invoke-virtual {p0, p2, p4}, Ln0/f;->U(IF)V

    invoke-virtual {p0, p3, p4}, Ln0/f;->U(IF)V

    return-void
.end method

.method public final X(Ln0/H;F)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput p2, p0, Ln0/f;->c:F

    goto :goto_0

    :pswitch_1
    iput p2, p0, Ln0/f;->b:F

    goto :goto_0

    :pswitch_2
    iput p2, p0, Ln0/f;->a:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final Y(Ln0/H;Ln0/H;F)V
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

    invoke-virtual {p0, p1, p3}, Ln0/f;->X(Ln0/H;F)V

    invoke-virtual {p0, p2, p3}, Ln0/f;->X(Ln0/H;F)V

    return-void
.end method

.method public final Z(Ln0/H;Ln0/H;Ln0/H;F)V
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

    invoke-virtual {p0, p1, p4}, Ln0/f;->X(Ln0/H;F)V

    invoke-virtual {p0, p2, p4}, Ln0/f;->X(Ln0/H;F)V

    invoke-virtual {p0, p3, p4}, Ln0/f;->X(Ln0/H;F)V

    return-void
.end method

.method public final a(FF)Ln0/f;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

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
    invoke-virtual {p0}, Ln0/f;->K()F

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
    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v4

    sub-float v5, v4, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float p2, v5, p2

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v3, p1

    :goto_2
    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final a0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->o0(F)V

    return-void
.end method

.method public final b(Ln0/f;F)Ln0/f;
    .locals 6
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

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
    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

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
    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    sub-float v5, v3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float p2, v5, p2

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v4, p1

    :goto_2
    invoke-direct {v0, v1, v2, v4}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final b0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->n0(F)V

    return-void
.end method

.method public final c0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->o0(F)V

    return-void
.end method

.method public final d0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->k0(F)V

    return-void
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Ln0/f;->a:F

    return v0
.end method

.method public final e0(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->n0(F)V

    return-void
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
    instance-of v1, p1, Ln0/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/f;

    iget v1, p0, Ln0/f;->a:F

    iget v3, p1, Ln0/f;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ln0/f;->b:F

    iget v3, p1, Ln0/f;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ln0/f;->c:F

    iget p1, p1, Ln0/f;->c:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Ln0/f;->b:F

    return v0
.end method

.method public final f0(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->n0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->o0(F)V

    return-void
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Ln0/f;->c:F

    return v0
.end method

.method public final g0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->k0(F)V

    return-void
.end method

.method public final h(FFF)Ln0/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final h0(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->n0(F)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ln0/f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/f;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/f;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i0(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->n0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->o0(F)V

    return-void
.end method

.method public final j()Ln0/f;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    iget v1, p0, Ln0/f;->a:F

    const/high16 v2, -0x40800000    # -1.0f

    add-float v3, v1, v2

    iput v3, p0, Ln0/f;->a:F

    iget v3, p0, Ln0/f;->b:F

    add-float v4, v3, v2

    iput v4, p0, Ln0/f;->b:F

    iget v4, p0, Ln0/f;->c:F

    add-float/2addr v2, v4

    iput v2, p0, Ln0/f;->c:F

    invoke-direct {v0, v1, v3, v4}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final j0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/f;->n0(F)V

    return-void
.end method

.method public final k(F)Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final k0(F)V
    .locals 0

    iput p1, p0, Ln0/f;->a:F

    return-void
.end method

.method public final l(Ln0/e;)Ln0/f;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    div-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final l0(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->n0(F)V

    return-void
.end method

.method public final m(Ln0/f;)Ln0/f;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    div-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final m0(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->n0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->o0(F)V

    return-void
.end method

.method public final n(FF)Z
    .locals 1

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/f;->L()F

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

.method public final n0(F)V
    .locals 0

    iput p1, p0, Ln0/f;->b:F

    return-void
.end method

.method public final o(Ln0/f;F)Z
    .locals 2
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v0

    invoke-virtual {p1}, Ln0/f;->L()F

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

.method public final o0(F)V
    .locals 0

    iput p1, p0, Ln0/f;->c:F

    return-void
.end method

.method public final p0(F)Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final q0(Ln0/e;)Ln0/f;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final r(I)F
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Ln0/f;->c:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Ln0/f;->b:F

    goto :goto_0

    :cond_2
    iget p1, p0, Ln0/f;->a:F

    :goto_0
    return p1
.end method

.method public final r0(Ln0/f;)Ln0/f;
    .locals 4
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v3

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final s(Ln0/H;)F
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Ln0/f;->c:F

    goto :goto_0

    :pswitch_1
    iget p1, p0, Ln0/f;->b:F

    goto :goto_0

    :pswitch_2
    iget p1, p0, Ln0/f;->a:F

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final s0()[F
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/f;->a:F

    iget v1, p0, Ln0/f;->b:F

    iget v2, p0, Ln0/f;->c:F

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    return-object v3
.end method

.method public final t(II)Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0, p1}, Ln0/f;->r(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/f;->r(I)F

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final t0(LMf/l;)Ln0/f;
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
            "Ln0/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/f;->H()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/f;->n0(F)V

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/f;->o0(F)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/f;->a:F

    iget v1, p0, Ln0/f;->b:F

    iget v2, p0, Ln0/f;->c:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Float3(x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", z="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ln0/H;Ln0/H;)Ln0/e;
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

    invoke-virtual {p0, p1}, Ln0/f;->s(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/f;->s(Ln0/H;)F

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final u0()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    iget v1, p0, Ln0/f;->a:F

    neg-float v1, v1

    iget v2, p0, Ln0/f;->b:F

    neg-float v2, v2

    iget v3, p0, Ln0/f;->c:F

    neg-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final v(III)Ln0/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0, p1}, Ln0/f;->r(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/f;->r(I)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/f;->r(I)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final w(Ln0/H;Ln0/H;Ln0/H;)Ln0/f;
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

    invoke-virtual {p0, p1}, Ln0/f;->s(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/f;->s(Ln0/H;)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/f;->s(Ln0/H;)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final x()F
    .locals 1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v0

    return v0
.end method

.method public final y()F
    .locals 1

    invoke-virtual {p0}, Ln0/f;->K()F

    move-result v0

    return v0
.end method

.method public final z()F
    .locals 1

    invoke-virtual {p0}, Ln0/f;->L()F

    move-result v0

    return v0
.end method
