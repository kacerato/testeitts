.class public final Ln0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/k$a;
    }
.end annotation


# instance fields
.field public a:S

.field public b:S

.field public c:S


# direct methods
.method public constructor <init>(Ln0/j;S)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/j;SILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 14
    sget-object p2, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p2}, Ln0/i$a;->k()S

    move-result p2

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ln0/k;-><init>(Ln0/j;SLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/j;SLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln0/k;-><init>(Ln0/j;S)V

    return-void
.end method

.method public constructor <init>(Ln0/k;)V
    .locals 3
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-short v0, p1, Ln0/k;->a:S

    iget-short v1, p1, Ln0/k;->b:S

    iget-short p1, p1, Ln0/k;->c:S

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p1, p1, v0}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(SLkotlin/jvm/internal/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ln0/k;-><init>(S)V

    return-void
.end method

.method public constructor <init>(SSS)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-short p1, p0, Ln0/k;->a:S

    .line 6
    iput-short p2, p0, Ln0/k;->b:S

    .line 7
    iput-short p3, p0, Ln0/k;->c:S

    return-void
.end method

.method public synthetic constructor <init>(SSSILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 8
    sget-object p1, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p1}, Ln0/i$a;->k()S

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 9
    sget-object p2, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p2}, Ln0/i$a;->k()S

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 10
    sget-object p3, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p3}, Ln0/i$a;->k()S

    move-result p3

    :cond_2
    const/4 p4, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(SSSLkotlin/jvm/internal/x;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Ln0/k;-><init>(SSS)V

    return-void
.end method

.method public static synthetic e(Ln0/k;SSSILjava/lang/Object;)Ln0/k;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-short p1, p0, Ln0/k;->a:S

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-short p2, p0, Ln0/k;->b:S

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-short p3, p0, Ln0/k;->c:S

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ln0/k;->d(SSS)Ln0/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final B()Ln0/k;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final C()S
    .locals 1

    iget-short v0, p0, Ln0/k;->b:S

    return v0
.end method

.method public final D()S
    .locals 1

    iget-short v0, p0, Ln0/k;->c:S

    return v0
.end method

.method public final E()Ln0/k;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    iget-short v1, p0, Ln0/k;->a:S

    invoke-static {v1}, Ln0/i;->C(S)S

    move-result v2

    iput-short v2, p0, Ln0/k;->a:S

    iget-short v2, p0, Ln0/k;->b:S

    invoke-static {v2}, Ln0/i;->C(S)S

    move-result v3

    iput-short v3, p0, Ln0/k;->b:S

    iget-short v3, p0, Ln0/k;->c:S

    invoke-static {v3}, Ln0/i;->C(S)S

    move-result v4

    iput-short v4, p0, Ln0/k;->c:S

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final F(I)S
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/k;->n(I)S

    move-result p1

    return p1
.end method

.method public final G(Ln0/j;)Ln0/k;
    .locals 4
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->I(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->I(SS)S

    move-result p1

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final H(Ln0/k;)Ln0/k;
    .locals 4
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->I(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v3

    invoke-static {v2, v3}, Ln0/i;->I(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-static {v3, p1}, Ln0/i;->I(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final I(S)Ln0/k;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->I(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->I(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-static {v3, p1}, Ln0/i;->I(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final J(Ln0/j;)Ln0/k;
    .locals 4
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->M(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->M(SS)S

    move-result p1

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final K(Ln0/k;)Ln0/k;
    .locals 4
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->M(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v3

    invoke-static {v2, v3}, Ln0/i;->M(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-static {v3, p1}, Ln0/i;->M(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final L(S)Ln0/k;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->M(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->M(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-static {v3, p1}, Ln0/i;->M(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final M(IS)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-short p2, p0, Ln0/k;->c:S

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-short p2, p0, Ln0/k;->b:S

    goto :goto_0

    :cond_2
    iput-short p2, p0, Ln0/k;->a:S

    :goto_0
    return-void
.end method

.method public final N(Ln0/H;S)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/k$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-short p2, p0, Ln0/k;->c:S

    goto :goto_0

    :pswitch_1
    iput-short p2, p0, Ln0/k;->b:S

    goto :goto_0

    :pswitch_2
    iput-short p2, p0, Ln0/k;->a:S

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

.method public final O(IIS)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/k;->M(IS)V

    invoke-virtual {p0, p2, p3}, Ln0/k;->M(IS)V

    return-void
.end method

.method public final P(Ln0/H;Ln0/H;S)V
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

    invoke-virtual {p0, p1, p3}, Ln0/k;->N(Ln0/H;S)V

    invoke-virtual {p0, p2, p3}, Ln0/k;->N(Ln0/H;S)V

    return-void
.end method

.method public final Q(IIIS)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Ln0/k;->M(IS)V

    invoke-virtual {p0, p2, p4}, Ln0/k;->M(IS)V

    invoke-virtual {p0, p3, p4}, Ln0/k;->M(IS)V

    return-void
.end method

.method public final R(Ln0/H;Ln0/H;Ln0/H;S)V
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

    invoke-virtual {p0, p1, p4}, Ln0/k;->N(Ln0/H;S)V

    invoke-virtual {p0, p2, p4}, Ln0/k;->N(Ln0/H;S)V

    invoke-virtual {p0, p3, p4}, Ln0/k;->N(Ln0/H;S)V

    return-void
.end method

.method public final S(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->g0(S)V

    return-void
.end method

.method public final T(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->f0(S)V

    return-void
.end method

.method public final U(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->g0(S)V

    return-void
.end method

.method public final V(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->c0(S)V

    return-void
.end method

.method public final W(Ln0/j;)V
    .locals 1
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->f0(S)V

    return-void
.end method

.method public final X(Ln0/k;)V
    .locals 1
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->f0(S)V

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->g0(S)V

    return-void
.end method

.method public final Y(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->c0(S)V

    return-void
.end method

.method public final Z(Ln0/j;)V
    .locals 1
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->f0(S)V

    return-void
.end method

.method public final a()S
    .locals 1

    iget-short v0, p0, Ln0/k;->a:S

    return v0
.end method

.method public final a0(Ln0/k;)V
    .locals 1
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->f0(S)V

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->g0(S)V

    return-void
.end method

.method public final b()S
    .locals 1

    iget-short v0, p0, Ln0/k;->b:S

    return v0
.end method

.method public final b0(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->f0(S)V

    return-void
.end method

.method public final c()S
    .locals 1

    iget-short v0, p0, Ln0/k;->c:S

    return v0
.end method

.method public final c0(S)V
    .locals 0

    iput-short p1, p0, Ln0/k;->a:S

    return-void
.end method

.method public final d(SSS)Ln0/k;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final d0(Ln0/j;)V
    .locals 1
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->f0(S)V

    return-void
.end method

.method public final e0(Ln0/k;)V
    .locals 1
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->f0(S)V

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->g0(S)V

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
    instance-of v1, p1, Ln0/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/k;

    iget-short v1, p0, Ln0/k;->a:S

    iget-short v3, p1, Ln0/k;->a:S

    invoke-static {v1, v3}, Ln0/i;->v(SS)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-short v1, p0, Ln0/k;->b:S

    iget-short v3, p1, Ln0/k;->b:S

    invoke-static {v1, v3}, Ln0/i;->v(SS)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-short v1, p0, Ln0/k;->c:S

    iget-short p1, p1, Ln0/k;->c:S

    invoke-static {v1, p1}, Ln0/i;->v(SS)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Ln0/k;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    iget-short v1, p0, Ln0/k;->a:S

    invoke-static {v1}, Ln0/i;->s(S)S

    move-result v2

    iput-short v2, p0, Ln0/k;->a:S

    iget-short v2, p0, Ln0/k;->b:S

    invoke-static {v2}, Ln0/i;->s(S)S

    move-result v3

    iput-short v3, p0, Ln0/k;->b:S

    iget-short v3, p0, Ln0/k;->c:S

    invoke-static {v3}, Ln0/i;->s(S)S

    move-result v4

    iput-short v4, p0, Ln0/k;->c:S

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final f0(S)V
    .locals 0

    iput-short p1, p0, Ln0/k;->b:S

    return-void
.end method

.method public final g(Ln0/j;)Ln0/k;
    .locals 4
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->t(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->t(SS)S

    move-result p1

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final g0(S)V
    .locals 0

    iput-short p1, p0, Ln0/k;->c:S

    return-void
.end method

.method public final h(Ln0/k;)Ln0/k;
    .locals 4
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->t(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v3

    invoke-static {v2, v3}, Ln0/i;->t(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-static {v3, p1}, Ln0/i;->t(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final h0(Ln0/j;)Ln0/k;
    .locals 4
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->P(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->P(SS)S

    move-result p1

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Ln0/k;->a:S

    invoke-static {v0}, Ln0/i;->B(S)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Ln0/k;->b:S

    invoke-static {v1}, Ln0/i;->B(S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Ln0/k;->c:S

    invoke-static {v1}, Ln0/i;->B(S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(S)Ln0/k;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->t(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->t(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-static {v3, p1}, Ln0/i;->t(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final i0(Ln0/k;)Ln0/k;
    .locals 4
    .param p1    # Ln0/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p1}, Ln0/k;->z()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->P(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p1}, Ln0/k;->C()S

    move-result v3

    invoke-static {v2, v3}, Ln0/i;->P(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-virtual {p1}, Ln0/k;->D()S

    move-result p1

    invoke-static {v3, p1}, Ln0/i;->P(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final j(II)Ln0/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0, p1}, Ln0/k;->n(I)S

    move-result p1

    invoke-virtual {p0, p2}, Ln0/k;->n(I)S

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final j0(S)Ln0/k;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->P(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->P(SS)S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    invoke-static {v3, p1}, Ln0/i;->P(SS)S

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final k(Ln0/H;Ln0/H;)Ln0/j;
    .locals 2
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

    new-instance v0, Ln0/j;

    invoke-virtual {p0, p1}, Ln0/k;->o(Ln0/H;)S

    move-result p1

    invoke-virtual {p0, p2}, Ln0/k;->o(Ln0/H;)S

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final k0()[F
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-short v0, p0, Ln0/k;->a:S

    invoke-static {v0}, Ln0/i;->T(S)F

    move-result v0

    iget-short v1, p0, Ln0/k;->b:S

    invoke-static {v1}, Ln0/i;->T(S)F

    move-result v1

    iget-short v2, p0, Ln0/k;->c:S

    invoke-static {v2}, Ln0/i;->T(S)F

    move-result v2

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

.method public final l(III)Ln0/k;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0, p1}, Ln0/k;->n(I)S

    move-result p1

    invoke-virtual {p0, p2}, Ln0/k;->n(I)S

    move-result p2

    invoke-virtual {p0, p3}, Ln0/k;->n(I)S

    move-result p3

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final l0(LMf/l;)Ln0/k;
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
            "Ln0/i;",
            "Ln0/i;",
            ">;)",
            "Ln0/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v0

    invoke-static {v0}, Ln0/i;->m(S)Ln0/i;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/i;

    invoke-virtual {v0}, Ln0/i;->b0()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->c0(S)V

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v0

    invoke-static {v0}, Ln0/i;->m(S)Ln0/i;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/i;

    invoke-virtual {v0}, Ln0/i;->b0()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/k;->f0(S)V

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v0

    invoke-static {v0}, Ln0/i;->m(S)Ln0/i;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/i;

    invoke-virtual {p1}, Ln0/i;->b0()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/k;->g0(S)V

    return-object p0
.end method

.method public final m(Ln0/H;Ln0/H;Ln0/H;)Ln0/k;
    .locals 2
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

    new-instance v0, Ln0/k;

    invoke-virtual {p0, p1}, Ln0/k;->o(Ln0/H;)S

    move-result p1

    invoke-virtual {p0, p2}, Ln0/k;->o(Ln0/H;)S

    move-result p2

    invoke-virtual {p0, p3}, Ln0/k;->o(Ln0/H;)S

    move-result p3

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final m0()Ln0/k;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    iget-short v1, p0, Ln0/k;->a:S

    invoke-static {v1}, Ln0/i;->Z(S)S

    move-result v1

    iget-short v2, p0, Ln0/k;->b:S

    invoke-static {v2}, Ln0/i;->Z(S)S

    move-result v2

    iget-short v3, p0, Ln0/k;->c:S

    invoke-static {v3}, Ln0/i;->Z(S)S

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final n(I)S
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-short p1, p0, Ln0/k;->c:S

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short p1, p0, Ln0/k;->b:S

    goto :goto_0

    :cond_2
    iget-short p1, p0, Ln0/k;->a:S

    :goto_0
    return p1
.end method

.method public final o(Ln0/H;)S
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/k$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, Z, R, G, B, S, T or P"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-short p1, p0, Ln0/k;->c:S

    goto :goto_0

    :pswitch_1
    iget-short p1, p0, Ln0/k;->b:S

    goto :goto_0

    :pswitch_2
    iget-short p1, p0, Ln0/k;->a:S

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

.method public final p()S
    .locals 1

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v0

    return v0
.end method

.method public final q()S
    .locals 1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v0

    return v0
.end method

.method public final r()S
    .locals 1

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v0

    return v0
.end method

.method public final s()S
    .locals 1

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v0

    return v0
.end method

.method public final t()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-short v0, p0, Ln0/k;->a:S

    invoke-static {v0}, Ln0/i;->Y(S)Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Ln0/k;->b:S

    invoke-static {v1}, Ln0/i;->Y(S)Ljava/lang/String;

    move-result-object v1

    iget-short v2, p0, Ln0/k;->c:S

    invoke-static {v2}, Ln0/i;->Y(S)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Half3(x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", z="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ln0/k;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final v()S
    .locals 1

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v0

    return v0
.end method

.method public final w()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final x()Ln0/k;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/k;

    invoke-virtual {p0}, Ln0/k;->z()S

    move-result v1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v2

    invoke-virtual {p0}, Ln0/k;->D()S

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/k;-><init>(SSSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final y()S
    .locals 1

    invoke-virtual {p0}, Ln0/k;->C()S

    move-result v0

    return v0
.end method

.method public final z()S
    .locals 1

    iget-short v0, p0, Ln0/k;->a:S

    return v0
.end method
