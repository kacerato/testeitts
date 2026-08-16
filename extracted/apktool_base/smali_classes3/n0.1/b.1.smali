.class public final Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/b$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


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
    invoke-direct/range {v0 .. v5}, Ln0/b;-><init>(ZZZILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Ln0/a;Z)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Ln0/b;-><init>(ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/a;ZILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Ln0/b;-><init>(Ln0/a;Z)V

    return-void
.end method

.method public constructor <init>(Ln0/b;)V
    .locals 2
    .param p1    # Ln0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p1, Ln0/b;->a:Z

    iget-boolean v1, p1, Ln0/b;->b:Z

    iget-boolean p1, p1, Ln0/b;->c:Z

    invoke-direct {p0, v0, v1, p1}, Ln0/b;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ln0/b;->a:Z

    iput-boolean p2, p0, Ln0/b;->b:Z

    iput-boolean p3, p0, Ln0/b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/x;)V
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
    invoke-direct {p0, p1, p2, p3}, Ln0/b;-><init>(ZZZ)V

    return-void
.end method

.method public static synthetic e(Ln0/b;ZZZILjava/lang/Object;)Ln0/b;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Ln0/b;->a:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Ln0/b;->b:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Ln0/b;->c:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ln0/b;->d(ZZZ)Ln0/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(I)Z
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/b;->j(I)Z

    move-result p1

    return p1
.end method

.method public final B(IIIZ)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Ln0/b;->D(IZ)V

    invoke-virtual {p0, p2, p4}, Ln0/b;->D(IZ)V

    invoke-virtual {p0, p3, p4}, Ln0/b;->D(IZ)V

    return-void
.end method

.method public final C(IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/b;->D(IZ)V

    invoke-virtual {p0, p2, p3}, Ln0/b;->D(IZ)V

    return-void
.end method

.method public final D(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Ln0/b;->c:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-boolean p2, p0, Ln0/b;->b:Z

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Ln0/b;->a:Z

    :goto_0
    return-void
.end method

.method public final E(Ln0/H;Ln0/H;Ln0/H;Z)V
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

    invoke-virtual {p0, p1, p4}, Ln0/b;->G(Ln0/H;Z)V

    invoke-virtual {p0, p2, p4}, Ln0/b;->G(Ln0/H;Z)V

    invoke-virtual {p0, p3, p4}, Ln0/b;->G(Ln0/H;Z)V

    return-void
.end method

.method public final F(Ln0/H;Ln0/H;Z)V
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

    invoke-virtual {p0, p1, p3}, Ln0/b;->G(Ln0/H;Z)V

    invoke-virtual {p0, p2, p3}, Ln0/b;->G(Ln0/H;Z)V

    return-void
.end method

.method public final G(Ln0/H;Z)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-boolean p2, p0, Ln0/b;->c:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Ln0/b;->b:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Ln0/b;->a:Z

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

.method public final H(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->V(Z)V

    return-void
.end method

.method public final I(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->U(Z)V

    return-void
.end method

.method public final J(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->V(Z)V

    return-void
.end method

.method public final K(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->R(Z)V

    return-void
.end method

.method public final L(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->R(Z)V

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/b;->U(Z)V

    return-void
.end method

.method public final M(Ln0/b;)V
    .locals 1
    .param p1    # Ln0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/b;->v()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->R(Z)V

    invoke-virtual {p1}, Ln0/b;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->U(Z)V

    invoke-virtual {p1}, Ln0/b;->z()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/b;->V(Z)V

    return-void
.end method

.method public final N(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->R(Z)V

    return-void
.end method

.method public final O(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->R(Z)V

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/b;->U(Z)V

    return-void
.end method

.method public final P(Ln0/b;)V
    .locals 1
    .param p1    # Ln0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/b;->v()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->R(Z)V

    invoke-virtual {p1}, Ln0/b;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->U(Z)V

    invoke-virtual {p1}, Ln0/b;->z()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/b;->V(Z)V

    return-void
.end method

.method public final Q(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/b;->U(Z)V

    return-void
.end method

.method public final R(Z)V
    .locals 0

    iput-boolean p1, p0, Ln0/b;->a:Z

    return-void
.end method

.method public final S(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->R(Z)V

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/b;->U(Z)V

    return-void
.end method

.method public final T(Ln0/b;)V
    .locals 1
    .param p1    # Ln0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/b;->v()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->R(Z)V

    invoke-virtual {p1}, Ln0/b;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/b;->U(Z)V

    invoke-virtual {p1}, Ln0/b;->z()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/b;->V(Z)V

    return-void
.end method

.method public final U(Z)V
    .locals 0

    iput-boolean p1, p0, Ln0/b;->b:Z

    return-void
.end method

.method public final V(Z)V
    .locals 0

    iput-boolean p1, p0, Ln0/b;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->c:Z

    return v0
.end method

.method public final d(ZZZ)Ln0/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/b;

    invoke-direct {v0, p1, p2, p3}, Ln0/b;-><init>(ZZZ)V

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
    instance-of v1, p1, Ln0/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/b;

    iget-boolean v1, p0, Ln0/b;->a:Z

    iget-boolean v3, p1, Ln0/b;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ln0/b;->b:Z

    iget-boolean v3, p1, Ln0/b;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ln0/b;->c:Z

    iget-boolean p1, p1, Ln0/b;->c:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f(II)Ln0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0, p1}, Ln0/b;->j(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Ln0/b;->j(I)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final g(Ln0/H;Ln0/H;)Ln0/a;
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

    new-instance v0, Ln0/a;

    invoke-virtual {p0, p1}, Ln0/b;->k(Ln0/H;)Z

    move-result p1

    invoke-virtual {p0, p2}, Ln0/b;->k(Ln0/H;)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final h(III)Ln0/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/b;

    invoke-virtual {p0, p1}, Ln0/b;->j(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Ln0/b;->j(I)Z

    move-result p2

    invoke-virtual {p0, p3}, Ln0/b;->j(I)Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/b;-><init>(ZZZ)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ln0/b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ln0/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ln0/b;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Ln0/H;Ln0/H;Ln0/H;)Ln0/b;
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

    new-instance v0, Ln0/b;

    invoke-virtual {p0, p1}, Ln0/b;->k(Ln0/H;)Z

    move-result p1

    invoke-virtual {p0, p2}, Ln0/b;->k(Ln0/H;)Z

    move-result p2

    invoke-virtual {p0, p3}, Ln0/b;->k(Ln0/H;)Z

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Ln0/b;-><init>(ZZZ)V

    return-object v0
.end method

.method public final j(I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Ln0/b;->c:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean p1, p0, Ln0/b;->b:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Ln0/b;->a:Z

    :goto_0
    return p1
.end method

.method public final k(Ln0/H;)Z
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-boolean p1, p0, Ln0/b;->c:Z

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Ln0/b;->b:Z

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Ln0/b;->a:Z

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

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Ln0/b;->z()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    invoke-virtual {p0}, Ln0/b;->z()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v0

    return v0
.end method

.method public final p()Ln0/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final q()Ln0/b;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/b;

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v2

    invoke-virtual {p0}, Ln0/b;->z()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/b;-><init>(ZZZ)V

    return-object v0
.end method

.method public final r()Z
    .locals 1

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v0

    return v0
.end method

.method public final s()Ln0/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final t()Ln0/b;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/b;

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v2

    invoke-virtual {p0}, Ln0/b;->z()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/b;-><init>(ZZZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Ln0/b;->a:Z

    iget-boolean v1, p0, Ln0/b;->b:Z

    iget-boolean v2, p0, Ln0/b;->c:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bool3(x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", z="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->a:Z

    return v0
.end method

.method public final w()Ln0/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final x()Ln0/b;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/b;

    invoke-virtual {p0}, Ln0/b;->v()Z

    move-result v1

    invoke-virtual {p0}, Ln0/b;->y()Z

    move-result v2

    invoke-virtual {p0}, Ln0/b;->z()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln0/b;-><init>(ZZZ)V

    return-object v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->b:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->c:Z

    return v0
.end method
