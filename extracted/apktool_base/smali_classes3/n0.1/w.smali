.class public final Ln0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/w$a;,
        Ln0/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,509:1\n137#1:510\n285#1,6:561\n137#1:567\n617#2,6:511\n617#2,6:517\n617#2,6:523\n617#2,6:529\n617#2,6:535\n617#2,6:541\n617#2,6:547\n622#2:553\n622#2:554\n622#2:555\n622#2:556\n622#2:557\n622#2:558\n622#2:559\n622#2:560\n617#2,6:568\n617#2,6:574\n617#2,6:580\n617#2,6:586\n617#2,6:592\n617#2,6:598\n617#2,6:604\n617#2,6:610\n622#2:616\n622#2:617\n622#2:618\n622#2:619\n622#2:620\n622#2:621\n622#2:622\n622#2:623\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n*L\n145#1:510\n281#1:561,6\n281#1:567\n268#1:511,6\n269#1:517,6\n270#1:523,6\n271#1:529,6\n269#1:535,6\n270#1:541,6\n271#1:547,6\n275#1:553\n276#1:554\n277#1:555\n278#1:556\n275#1:557\n276#1:558\n277#1:559\n278#1:560\n293#1:568,6\n294#1:574,6\n295#1:580,6\n296#1:586,6\n293#1:592,6\n294#1:598,6\n295#1:604,6\n296#1:610,6\n300#1:616\n301#1:617\n302#1:618\n303#1:619\n300#1:620\n301#1:621\n302#1:622\n303#1:623\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,509:1\n137#1:510\n285#1,6:561\n137#1:567\n617#2,6:511\n617#2,6:517\n617#2,6:523\n617#2,6:529\n617#2,6:535\n617#2,6:541\n617#2,6:547\n622#2:553\n622#2:554\n622#2:555\n622#2:556\n622#2:557\n622#2:558\n622#2:559\n622#2:560\n617#2,6:568\n617#2,6:574\n617#2,6:580\n617#2,6:586\n617#2,6:592\n617#2,6:598\n617#2,6:604\n617#2,6:610\n622#2:616\n622#2:617\n622#2:618\n622#2:619\n622#2:620\n622#2:621\n622#2:622\n622#2:623\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n*L\n145#1:510\n281#1:561,6\n281#1:567\n268#1:511,6\n269#1:517,6\n270#1:523,6\n271#1:529,6\n269#1:535,6\n270#1:541,6\n271#1:547,6\n275#1:553\n276#1:554\n277#1:555\n278#1:556\n275#1:557\n276#1:558\n277#1:559\n278#1:560\n293#1:568,6\n294#1:574,6\n295#1:580,6\n296#1:586,6\n293#1:592,6\n294#1:598,6\n295#1:604,6\n296#1:610,6\n300#1:616\n301#1:617\n302#1:618\n303#1:619\n300#1:620\n301#1:621\n302#1:622\n303#1:623\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Ln0/w$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln0/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln0/w$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Ln0/w;->e:Ln0/w$a;

    return-void
.end method

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
    invoke-direct/range {v0 .. v6}, Ln0/w;-><init>(FFFFILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ln0/w;->a:F

    .line 4
    iput p2, p0, Ln0/w;->b:F

    .line 5
    iput p3, p0, Ln0/w;->c:F

    .line 6
    iput p4, p0, Ln0/w;->d:F

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

    const/high16 p4, 0x3f800000    # 1.0f

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Ln0/w;-><init>(FFFF)V

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

    .line 8
    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v1

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Ln0/w;-><init>(FFFF)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/f;FILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Ln0/w;-><init>(Ln0/f;F)V

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

    .line 10
    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Ln0/w;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Ln0/w;)V
    .locals 3
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v0, p1, Ln0/w;->a:F

    iget v1, p1, Ln0/w;->b:F

    iget v2, p1, Ln0/w;->c:F

    iget p1, p1, Ln0/w;->d:F

    invoke-direct {p0, v0, v1, v2, p1}, Ln0/w;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic c(Ln0/w;FFILjava/lang/Object;)Ln0/g;
    .locals 4

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    new-instance p3, Ln0/g;

    invoke-virtual {p0}, Ln0/w;->y()F

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
    invoke-virtual {p0}, Ln0/w;->B()F

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
    invoke-virtual {p0}, Ln0/w;->C()F

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
    invoke-virtual {p0}, Ln0/w;->x()F

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

.method public static synthetic d(Ln0/w;Ln0/g;FILjava/lang/Object;)Ln0/g;
    .locals 5

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/g;

    invoke-virtual {p0}, Ln0/w;->y()F

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
    invoke-virtual {p0}, Ln0/w;->B()F

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
    invoke-virtual {p0}, Ln0/w;->C()F

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
    invoke-virtual {p0}, Ln0/w;->x()F

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

.method public static synthetic j(Ln0/w;FFFFILjava/lang/Object;)Ln0/w;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ln0/w;->a:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ln0/w;->b:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ln0/w;->c:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Ln0/w;->d:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ln0/w;->i(FFFF)Ln0/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ln0/w;FFILjava/lang/Object;)Ln0/c;
    .locals 4

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    new-instance p3, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p4

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p3, p4, v2, v3, v0}, Ln0/c;-><init>(ZZZZ)V

    return-object p3
.end method

.method public static synthetic o(Ln0/w;Ln0/g;FILjava/lang/Object;)Ln0/c;
    .locals 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p4

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p3, p4, v2, v3, v0}, Ln0/c;-><init>(ZZZZ)V

    return-object p3
.end method


# virtual methods
.method public final A()Ln0/g;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/g;-><init>(FFFF)V

    return-object v0
.end method

.method public final B()F
    .locals 1

    iget v0, p0, Ln0/w;->b:F

    return v0
.end method

.method public final C()F
    .locals 1

    iget v0, p0, Ln0/w;->c:F

    return v0
.end method

.method public final D(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/w;->p(I)F

    move-result p1

    return p1
.end method

.method public final E(F)Ln0/w;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final F(Ln0/w;)Ln0/w;
    .locals 5
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final G(F)Ln0/w;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final H(Ln0/w;)Ln0/w;
    .locals 5
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final I(IF)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p2, p0, Ln0/w;->d:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p2, p0, Ln0/w;->c:F

    goto :goto_0

    :cond_2
    iput p2, p0, Ln0/w;->b:F

    goto :goto_0

    :cond_3
    iput p2, p0, Ln0/w;->a:F

    :goto_0
    return-void
.end method

.method public final J(IIF)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/w;->I(IF)V

    invoke-virtual {p0, p2, p3}, Ln0/w;->I(IF)V

    return-void
.end method

.method public final K(IIIF)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Ln0/w;->I(IF)V

    invoke-virtual {p0, p2, p4}, Ln0/w;->I(IF)V

    invoke-virtual {p0, p3, p4}, Ln0/w;->I(IF)V

    return-void
.end method

.method public final L(IIIIF)V
    .locals 0

    invoke-virtual {p0, p1, p5}, Ln0/w;->I(IF)V

    invoke-virtual {p0, p2, p5}, Ln0/w;->I(IF)V

    invoke-virtual {p0, p3, p5}, Ln0/w;->I(IF)V

    invoke-virtual {p0, p4, p5}, Ln0/w;->I(IF)V

    return-void
.end method

.method public final M(Ln0/x;F)V
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/w$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput p2, p0, Ln0/w;->d:F

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iput p2, p0, Ln0/w;->c:F

    goto :goto_0

    :cond_2
    iput p2, p0, Ln0/w;->b:F

    goto :goto_0

    :cond_3
    iput p2, p0, Ln0/w;->a:F

    :goto_0
    return-void
.end method

.method public final N(Ln0/x;Ln0/x;F)V
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Ln0/w;->M(Ln0/x;F)V

    invoke-virtual {p0, p2, p3}, Ln0/w;->M(Ln0/x;F)V

    return-void
.end method

.method public final O(Ln0/x;Ln0/x;Ln0/x;F)V
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Ln0/w;->M(Ln0/x;F)V

    invoke-virtual {p0, p2, p4}, Ln0/w;->M(Ln0/x;F)V

    invoke-virtual {p0, p3, p4}, Ln0/w;->M(Ln0/x;F)V

    return-void
.end method

.method public final P(Ln0/x;Ln0/x;Ln0/x;Ln0/x;F)V
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ln0/x;
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

    invoke-virtual {p0, p1, p5}, Ln0/w;->M(Ln0/x;F)V

    invoke-virtual {p0, p2, p5}, Ln0/w;->M(Ln0/x;F)V

    invoke-virtual {p0, p3, p5}, Ln0/w;->M(Ln0/x;F)V

    invoke-virtual {p0, p4, p5}, Ln0/w;->M(Ln0/x;F)V

    return-void
.end method

.method public final Q(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->T(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->W(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/w;->X(F)V

    return-void
.end method

.method public final R(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/w;->S(F)V

    return-void
.end method

.method public final S(F)V
    .locals 0

    iput p1, p0, Ln0/w;->d:F

    return-void
.end method

.method public final T(F)V
    .locals 0

    iput p1, p0, Ln0/w;->a:F

    return-void
.end method

.method public final U(Ln0/f;)V
    .locals 1
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->T(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->W(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/w;->X(F)V

    return-void
.end method

.method public final V(Ln0/g;)V
    .locals 1
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->T(F)V

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->W(F)V

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->X(F)V

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/w;->S(F)V

    return-void
.end method

.method public final W(F)V
    .locals 0

    iput p1, p0, Ln0/w;->b:F

    return-void
.end method

.method public final X(F)V
    .locals 0

    iput p1, p0, Ln0/w;->c:F

    return-void
.end method

.method public final Y(Ln0/f;)Ln0/f;
    .locals 8
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ln0/w;-><init>(Ln0/f;F)V

    new-instance p1, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v2

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v2

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v0

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-direct {p1, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    invoke-static {p0}, Ln0/y;->w(Ln0/w;)Ln0/w;

    move-result-object v0

    new-instance v1, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v2

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v3

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v4

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v5

    invoke-virtual {v0}, Ln0/w;->x()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v6

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v6

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result p1

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v0

    mul-float/2addr p1, v0

    sub-float/2addr v5, p1

    invoke-direct {v1, v2, v3, v4, v5}, Ln0/w;-><init>(FFFF)V

    new-instance p1, Ln0/f;

    invoke-virtual {v1}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {v1}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {v1}, Ln0/w;->C()F

    move-result v1

    invoke-direct {p1, v0, v2, v1}, Ln0/f;-><init>(FFF)V

    return-object p1
.end method

.method public final Z(F)Ln0/w;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final a(FF)Ln0/g;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/g;

    invoke-virtual {p0}, Ln0/w;->y()F

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
    invoke-virtual {p0}, Ln0/w;->B()F

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
    invoke-virtual {p0}, Ln0/w;->C()F

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
    invoke-virtual {p0}, Ln0/w;->x()F

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

.method public final a0(Ln0/w;)Ln0/w;
    .locals 7
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result p1

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

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

    invoke-virtual {p0}, Ln0/w;->y()F

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
    invoke-virtual {p0}, Ln0/w;->B()F

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
    invoke-virtual {p0}, Ln0/w;->C()F

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
    invoke-virtual {p0}, Ln0/w;->x()F

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

.method public final b0()Ln0/f;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Ln0/y;->n(Ln0/w;Ln0/C;ILjava/lang/Object;)Ln0/f;

    move-result-object v0

    return-object v0
.end method

.method public final c0()[F
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/w;->a:F

    iget v1, p0, Ln0/w;->b:F

    iget v2, p0, Ln0/w;->c:F

    iget v3, p0, Ln0/w;->d:F

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

.method public final d0()Ln0/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Ln0/s;->O(Ln0/w;)Ln0/q;

    move-result-object v0

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Ln0/w;->a:F

    return v0
.end method

.method public final e0(LMf/l;)Ln0/w;
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
            "Ln0/w;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->T(F)V

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->W(F)V

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/w;->X(F)V

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/w;->S(F)V

    return-object p0
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
    instance-of v1, p1, Ln0/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/w;

    iget v1, p0, Ln0/w;->a:F

    iget v3, p1, Ln0/w;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ln0/w;->b:F

    iget v3, p1, Ln0/w;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ln0/w;->c:F

    iget v3, p1, Ln0/w;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ln0/w;->d:F

    iget p1, p1, Ln0/w;->d:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Ln0/w;->b:F

    return v0
.end method

.method public final f0()Ln0/w;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    iget v1, p0, Ln0/w;->a:F

    neg-float v1, v1

    iget v2, p0, Ln0/w;->b:F

    neg-float v2, v2

    iget v3, p0, Ln0/w;->c:F

    neg-float v3, v3

    iget v4, p0, Ln0/w;->d:F

    neg-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Ln0/w;->c:F

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Ln0/w;->d:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ln0/w;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/w;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/w;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/w;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(FFFF)Ln0/w;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    invoke-direct {v0, p1, p2, p3, p4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final k(F)Ln0/w;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    div-float/2addr v2, p1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    div-float/2addr v3, p1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final l(FF)Ln0/c;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final m(Ln0/g;F)Ln0/c;
    .locals 7
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v6

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final p(I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Ln0/w;->d:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Ln0/w;->c:F

    goto :goto_0

    :cond_2
    iget p1, p0, Ln0/w;->b:F

    goto :goto_0

    :cond_3
    iget p1, p0, Ln0/w;->a:F

    :goto_0
    return p1
.end method

.method public final q(Ln0/x;)F
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/w$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget p1, p0, Ln0/w;->d:F

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iget p1, p0, Ln0/w;->c:F

    goto :goto_0

    :cond_2
    iget p1, p0, Ln0/w;->b:F

    goto :goto_0

    :cond_3
    iget p1, p0, Ln0/w;->a:F

    :goto_0
    return p1
.end method

.method public final r(III)Ln0/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0, p1}, Ln0/w;->p(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/w;->p(I)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/w;->p(I)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final s(Ln0/x;Ln0/x;Ln0/x;)Ln0/f;
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/x;
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

    invoke-virtual {p0, p1}, Ln0/w;->q(Ln0/x;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/w;->q(Ln0/x;)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/w;->q(Ln0/x;)F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final t(IIII)Ln0/w;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/w;

    invoke-virtual {p0, p1}, Ln0/w;->p(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/w;->p(I)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/w;->p(I)F

    move-result p3

    invoke-virtual {p0, p4}, Ln0/w;->p(I)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/w;->a:F

    iget v1, p0, Ln0/w;->b:F

    iget v2, p0, Ln0/w;->c:F

    iget v3, p0, Ln0/w;->d:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quaternion(x="

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

.method public final u(Ln0/x;Ln0/x;Ln0/x;Ln0/x;)Ln0/w;
    .locals 1
    .param p1    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln0/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ln0/x;
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

    new-instance v0, Ln0/w;

    invoke-virtual {p0, p1}, Ln0/w;->q(Ln0/x;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/w;->q(Ln0/x;)F

    move-result p2

    invoke-virtual {p0, p3}, Ln0/w;->q(Ln0/x;)F

    move-result p3

    invoke-virtual {p0, p4}, Ln0/w;->q(Ln0/x;)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public final v()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method

.method public final w()F
    .locals 1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v0

    return v0
.end method

.method public final x()F
    .locals 1

    iget v0, p0, Ln0/w;->d:F

    return v0
.end method

.method public final y()F
    .locals 1

    iget v0, p0, Ln0/w;->a:F

    return v0
.end method

.method public final z()Ln0/f;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/f;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/f;-><init>(FFF)V

    return-object v0
.end method
