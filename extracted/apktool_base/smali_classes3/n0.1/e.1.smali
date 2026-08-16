.class public final Ln0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n622#2:2168\n617#2,6:2169\n617#2,6:2175\n617#2,6:2181\n617#2,6:2187\n622#2:2193\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float2\n*L\n130#1:2156,6\n131#1:2162,6\n134#1:2168\n141#1:2169,6\n142#1:2175,6\n141#1:2181,6\n142#1:2187,6\n145#1:2193\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n*L\n1#1,2155:1\n617#2,6:2156\n617#2,6:2162\n622#2:2168\n617#2,6:2169\n617#2,6:2175\n617#2,6:2181\n617#2,6:2187\n622#2:2193\n*S KotlinDebug\n*F\n+ 1 Vector.kt\ncom/google/android/filament/utils/Float2\n*L\n130#1:2156,6\n131#1:2162,6\n134#1:2168\n141#1:2169,6\n142#1:2175,6\n141#1:2181,6\n142#1:2187,6\n145#1:2193\n*E\n"
    }
.end annotation


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v2, v0, v1}, Ln0/e;-><init>(FFILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p1}, Ln0/e;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln0/e;->a:F

    iput p2, p0, Ln0/e;->b:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/x;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Ln0/e;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p1, Ln0/e;->a:F

    iget p1, p1, Ln0/e;->b:F

    invoke-direct {p0, v0, p1}, Ln0/e;-><init>(FF)V

    return-void
.end method

.method public static synthetic c(Ln0/e;FFILjava/lang/Object;)Ln0/e;
    .locals 2

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    new-instance p3, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

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
    invoke-virtual {p0}, Ln0/e;->B()F

    move-result p0

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_1
    invoke-direct {p3, v0, p4}, Ln0/e;-><init>(FF)V

    return-object p3
.end method

.method public static synthetic d(Ln0/e;Ln0/e;FILjava/lang/Object;)Ln0/e;
    .locals 3

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p1}, Ln0/e;->z()F

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
    invoke-virtual {p0}, Ln0/e;->B()F

    move-result p0

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    int-to-float p4, p0

    :goto_1
    invoke-direct {p3, v0, p4}, Ln0/e;-><init>(FF)V

    return-object p3
.end method

.method public static synthetic h(Ln0/e;FFILjava/lang/Object;)Ln0/e;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ln0/e;->a:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Ln0/e;->b:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Ln0/e;->g(FF)Ln0/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ln0/e;FFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0}, Ln0/e;->z()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/e;->B()F

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

.method public static synthetic o(Ln0/e;Ln0/e;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result p3

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result p0

    invoke-virtual {p1}, Ln0/e;->B()F

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
.method public final A()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final B()F
    .locals 1

    iget v0, p0, Ln0/e;->b:F

    return v0
.end method

.method public final C()Ln0/e;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    iget v1, p0, Ln0/e;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v1, v2

    iput v3, p0, Ln0/e;->a:F

    iget v3, p0, Ln0/e;->b:F

    add-float/2addr v2, v3

    iput v2, p0, Ln0/e;->b:F

    invoke-direct {v0, v1, v3}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final D(I)F
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/e;->p(I)F

    move-result p1

    return p1
.end method

.method public final E(F)Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final F(Ln0/e;)Ln0/e;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final G(F)Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final H(Ln0/e;)Ln0/e;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final I(IF)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Ln0/e;->b:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p2, p0, Ln0/e;->a:F

    :goto_0
    return-void
.end method

.method public final J(IIF)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/e;->I(IF)V

    invoke-virtual {p0, p2, p3}, Ln0/e;->I(IF)V

    return-void
.end method

.method public final K(Ln0/H;F)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput p2, p0, Ln0/e;->b:F

    goto :goto_0

    :pswitch_1
    iput p2, p0, Ln0/e;->a:F

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final L(Ln0/H;Ln0/H;F)V
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

    invoke-virtual {p0, p1, p3}, Ln0/e;->K(Ln0/H;F)V

    invoke-virtual {p0, p2, p3}, Ln0/e;->K(Ln0/H;F)V

    return-void
.end method

.method public final M(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/e;->U(F)V

    return-void
.end method

.method public final N(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/e;->S(F)V

    return-void
.end method

.method public final O(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/e;->S(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/e;->U(F)V

    return-void
.end method

.method public final P(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/e;->S(F)V

    return-void
.end method

.method public final Q(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/e;->S(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/e;->U(F)V

    return-void
.end method

.method public final R(F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/e;->U(F)V

    return-void
.end method

.method public final S(F)V
    .locals 0

    iput p1, p0, Ln0/e;->a:F

    return-void
.end method

.method public final T(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/e;->S(F)V

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/e;->U(F)V

    return-void
.end method

.method public final U(F)V
    .locals 0

    iput p1, p0, Ln0/e;->b:F

    return-void
.end method

.method public final V(F)Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final W(Ln0/e;)Ln0/e;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final X()[F
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/e;->a:F

    iget v1, p0, Ln0/e;->b:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method public final Y(LMf/l;)Ln0/e;
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
            "Ln0/e;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ln0/e;->S(F)V

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ln0/e;->U(F)V

    return-object p0
.end method

.method public final Z()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    iget v1, p0, Ln0/e;->a:F

    neg-float v1, v1

    iget v2, p0, Ln0/e;->b:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final a(FF)Ln0/e;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

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
    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    sub-float v4, v2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float p2, v4, p2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v3, p1

    :goto_1
    invoke-direct {v0, v1, v3}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final b(Ln0/e;F)Ln0/e;
    .locals 5
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

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
    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    sub-float v3, v2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, v3, p2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    int-to-float v4, p1

    :goto_1
    invoke-direct {v0, v1, v4}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Ln0/e;->a:F

    return v0
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
    instance-of v1, p1, Ln0/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/e;

    iget v1, p0, Ln0/e;->a:F

    iget v3, p1, Ln0/e;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ln0/e;->b:F

    iget p1, p1, Ln0/e;->b:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Ln0/e;->b:F

    return v0
.end method

.method public final g(FF)Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ln0/e;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/e;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ln0/e;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    iget v1, p0, Ln0/e;->a:F

    const/high16 v2, -0x40800000    # -1.0f

    add-float v3, v1, v2

    iput v3, p0, Ln0/e;->a:F

    iget v3, p0, Ln0/e;->b:F

    add-float/2addr v2, v3

    iput v2, p0, Ln0/e;->b:F

    invoke-direct {v0, v1, v3}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final j(F)Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final k(Ln0/e;)Ln0/e;
    .locals 3
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/e;->B()F

    move-result p1

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final l(FF)Z
    .locals 1

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/e;->B()F

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

.method public final m(Ln0/e;F)Z
    .locals 2
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {p1}, Ln0/e;->z()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v0

    invoke-virtual {p1}, Ln0/e;->B()F

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

.method public final p(I)F
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Ln0/e;->b:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Ln0/e;->a:F

    :goto_0
    return p1
.end method

.method public final q(Ln0/H;)F
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Ln0/e;->b:F

    goto :goto_0

    :pswitch_1
    iget p1, p0, Ln0/e;->a:F

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(II)Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0, p1}, Ln0/e;->p(I)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/e;->p(I)F

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final s(Ln0/H;Ln0/H;)Ln0/e;
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

    invoke-virtual {p0, p1}, Ln0/e;->q(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, p2}, Ln0/e;->q(Ln0/H;)F

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final t()F
    .locals 1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Ln0/e;->a:F

    iget v1, p0, Ln0/e;->b:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Float2(x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()F
    .locals 1

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v0

    return v0
.end method

.method public final v()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final w()F
    .locals 1

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v0

    return v0
.end method

.method public final x()Ln0/e;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/e;

    invoke-virtual {p0}, Ln0/e;->z()F

    move-result v1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/e;-><init>(FF)V

    return-object v0
.end method

.method public final y()F
    .locals 1

    invoke-virtual {p0}, Ln0/e;->B()F

    move-result v0

    return v0
.end method

.method public final z()F
    .locals 1

    iget v0, p0, Ln0/e;->a:F

    return v0
.end method
