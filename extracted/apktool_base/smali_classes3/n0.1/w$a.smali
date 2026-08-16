.class public final Ln0/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/w$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion$Companion\n+ 2 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,509:1\n48#2:510\n48#2:514\n726#3:511\n794#3:512\n336#4:513\n337#4,3:515\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion$Companion\n*L\n50#1:510\n70#1:514\n51#1:511\n70#1:512\n70#1:513\n70#1:515,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion$Companion\n+ 2 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 4 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,509:1\n48#2:510\n48#2:514\n726#3:511\n794#3:512\n336#4:513\n337#4,3:515\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/Quaternion$Companion\n*L\n50#1:510\n70#1:514\n51#1:511\n70#1:512\n70#1:513\n70#1:515,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/w$a;-><init>()V

    return-void
.end method

.method public static synthetic d(Ln0/w$a;FFFLn0/C;ILjava/lang/Object;)Ln0/w;
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

    sget-object p4, Ln0/C;->ZYX:Ln0/C;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ln0/w$a;->b(FFFLn0/C;)Ln0/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ln0/w$a;Ln0/f;Ln0/C;ILjava/lang/Object;)Ln0/w;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Ln0/C;->ZYX:Ln0/C;

    :cond_0
    invoke-virtual {p0, p1, p2}, Ln0/w$a;->c(Ln0/f;Ln0/C;)Ln0/w;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ln0/f;F)Ln0/w;
    .locals 6
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "axis"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    new-instance v0, Ln0/w;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p2, v3

    invoke-static {p1}, Ln0/I;->w3(Ln0/f;)Ln0/f;

    move-result-object p1

    new-instance v3, Ln0/f;

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v4

    mul-float/2addr v4, p2

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v5

    mul-float/2addr v5, p2

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result p1

    mul-float/2addr p2, p1

    invoke-direct {v3, v4, v5, p2}, Ln0/f;-><init>(FFF)V

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-direct {v0, v3, p1}, Ln0/w;-><init>(Ln0/f;F)V

    return-object v0
.end method

.method public final b(FFFLn0/C;)Ln0/w;
    .locals 7
    .param p4    # Ln0/C;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "order"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p2, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float p3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    sget-object v3, Ln0/w$a$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v3, p4

    packed-switch p4, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    new-instance p4, Ln0/w;

    mul-float v3, p1, v2

    mul-float v4, v3, p3

    mul-float v5, v1, p2

    mul-float v6, v5, v0

    sub-float/2addr v4, v6

    mul-float/2addr v1, v2

    mul-float v2, v1, p3

    mul-float/2addr p1, p2

    mul-float p2, p1, v0

    add-float/2addr v2, p2

    mul-float/2addr v5, p3

    mul-float/2addr v3, v0

    add-float/2addr v5, v3

    mul-float/2addr p1, p3

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    invoke-direct {p4, v4, v2, v5, p1}, Ln0/w;-><init>(FFFF)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p4, Ln0/w;

    mul-float v3, p1, p2

    mul-float v4, v3, v0

    mul-float v5, v1, v2

    mul-float v6, v5, p3

    sub-float/2addr v4, v6

    mul-float/2addr v1, p2

    mul-float p2, v1, v0

    mul-float/2addr p1, v2

    mul-float v2, p1, p3

    add-float/2addr p2, v2

    mul-float/2addr v1, p3

    mul-float/2addr p1, v0

    sub-float/2addr v1, p1

    mul-float/2addr v5, v0

    mul-float/2addr v3, p3

    add-float/2addr v5, v3

    invoke-direct {p4, v4, p2, v1, v5}, Ln0/w;-><init>(FFFF)V

    goto :goto_0

    :pswitch_2
    new-instance p4, Ln0/w;

    mul-float v3, v1, v2

    mul-float v4, v3, p3

    mul-float v5, p1, p2

    mul-float v6, v5, v0

    add-float/2addr v4, v6

    mul-float/2addr v1, p2

    mul-float p2, v1, p3

    mul-float/2addr p1, v2

    mul-float v2, p1, v0

    add-float/2addr p2, v2

    mul-float/2addr p1, p3

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    mul-float/2addr v5, p3

    mul-float/2addr v3, v0

    sub-float/2addr v5, v3

    invoke-direct {p4, v4, p2, p1, v5}, Ln0/w;-><init>(FFFF)V

    goto :goto_0

    :pswitch_3
    new-instance p4, Ln0/w;

    mul-float v3, v1, p2

    mul-float v4, v3, v0

    mul-float v5, p1, v2

    mul-float v6, v5, p3

    add-float/2addr v4, v6

    mul-float/2addr v3, p3

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    mul-float/2addr p1, p2

    mul-float p2, p1, v0

    mul-float/2addr v1, v2

    mul-float v2, v1, p3

    sub-float/2addr p2, v2

    mul-float/2addr v1, v0

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    invoke-direct {p4, v4, v3, p2, v1}, Ln0/w;-><init>(FFFF)V

    goto :goto_0

    :pswitch_4
    new-instance p4, Ln0/w;

    mul-float v3, v1, p2

    mul-float/2addr v3, p3

    mul-float v4, v2, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    mul-float v4, v2, p1

    mul-float/2addr v4, p3

    mul-float v5, v1, v0

    mul-float/2addr v5, p2

    sub-float/2addr v4, v5

    mul-float/2addr v1, v2

    mul-float v2, v1, p3

    mul-float v5, v0, p1

    mul-float/2addr v5, p2

    add-float/2addr v2, v5

    mul-float/2addr p1, p2

    mul-float/2addr p1, p3

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    invoke-direct {p4, v3, v4, v2, p1}, Ln0/w;-><init>(FFFF)V

    goto :goto_0

    :pswitch_5
    new-instance p4, Ln0/w;

    mul-float v3, v1, p2

    mul-float v4, v3, p3

    mul-float v5, p1, v2

    mul-float v6, v5, v0

    sub-float/2addr v4, v6

    mul-float/2addr p1, p2

    mul-float p2, p1, v0

    mul-float/2addr v1, v2

    mul-float v2, v1, p3

    sub-float/2addr p2, v2

    mul-float/2addr v3, v0

    mul-float/2addr v5, p3

    add-float/2addr v3, v5

    mul-float/2addr v1, v0

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    invoke-direct {p4, v4, p2, v3, v1}, Ln0/w;-><init>(FFFF)V

    :goto_0
    return-object p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ln0/f;Ln0/C;)Ln0/w;
    .locals 7
    .param p1    # Ln0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/C;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Ln0/f;->i(Ln0/f;FFFILjava/lang/Object;)Ln0/f;

    move-result-object p1

    invoke-virtual {p1}, Ln0/f;->H()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ln0/f;->k0(F)V

    invoke-virtual {p1}, Ln0/f;->K()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ln0/f;->n0(F)V

    invoke-virtual {p1}, Ln0/f;->L()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ln0/f;->o0(F)V

    invoke-virtual {p2}, Ln0/C;->e()Ln0/H;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln0/f;->s(Ln0/H;)F

    move-result v0

    invoke-virtual {p2}, Ln0/C;->c()Ln0/H;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln0/f;->s(Ln0/H;)F

    move-result v1

    invoke-virtual {p2}, Ln0/C;->d()Ln0/H;

    move-result-object v2

    invoke-virtual {p1, v2}, Ln0/f;->s(Ln0/H;)F

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Ln0/w$a;->b(FFFLn0/C;)Ln0/w;

    move-result-object p1

    return-object p1
.end method
