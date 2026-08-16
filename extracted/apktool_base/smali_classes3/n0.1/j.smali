.class public final Ln0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/j$a;
    }
.end annotation


# instance fields
.field public a:S

.field public b:S


# direct methods
.method public constructor <init>(Ln0/j;)V
    .locals 2
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-short v0, p1, Ln0/j;->a:S

    iget-short p1, p1, Ln0/j;->b:S

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p1, v0}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(SLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/j;-><init>(S)V

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Ln0/j;->a:S

    iput-short p2, p0, Ln0/j;->b:S

    return-void
.end method

.method public synthetic constructor <init>(SSILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 4
    sget-object p1, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p1}, Ln0/i$a;->k()S

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p2}, Ln0/i$a;->k()S

    move-result p2

    :cond_1
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(SSLkotlin/jvm/internal/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ln0/j;-><init>(SS)V

    return-void
.end method

.method public static synthetic d(Ln0/j;SSILjava/lang/Object;)Ln0/j;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-short p1, p0, Ln0/j;->a:S

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-short p2, p0, Ln0/j;->b:S

    :cond_1
    invoke-virtual {p0, p1, p2}, Ln0/j;->c(SS)Ln0/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(IS)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-short p2, p0, Ln0/j;->b:S

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-short p2, p0, Ln0/j;->a:S

    :goto_0
    return-void
.end method

.method public final B(Ln0/H;S)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-short p2, p0, Ln0/j;->b:S

    goto :goto_0

    :pswitch_1
    iput-short p2, p0, Ln0/j;->a:S

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

.method public final C(IIS)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/j;->A(IS)V

    invoke-virtual {p0, p2, p3}, Ln0/j;->A(IS)V

    return-void
.end method

.method public final D(Ln0/H;Ln0/H;S)V
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

    invoke-virtual {p0, p1, p3}, Ln0/j;->B(Ln0/H;S)V

    invoke-virtual {p0, p2, p3}, Ln0/j;->B(Ln0/H;S)V

    return-void
.end method

.method public final E(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/j;->M(S)V

    return-void
.end method

.method public final F(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/j;->K(S)V

    return-void
.end method

.method public final G(Ln0/j;)V
    .locals 1
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/j;->K(S)V

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/j;->M(S)V

    return-void
.end method

.method public final H(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/j;->K(S)V

    return-void
.end method

.method public final I(Ln0/j;)V
    .locals 1
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/j;->K(S)V

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/j;->M(S)V

    return-void
.end method

.method public final J(S)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/j;->M(S)V

    return-void
.end method

.method public final K(S)V
    .locals 0

    iput-short p1, p0, Ln0/j;->a:S

    return-void
.end method

.method public final L(Ln0/j;)V
    .locals 1
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/j;->K(S)V

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/j;->M(S)V

    return-void
.end method

.method public final M(S)V
    .locals 0

    iput-short p1, p0, Ln0/j;->b:S

    return-void
.end method

.method public final N(Ln0/j;)Ln0/j;
    .locals 3
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->P(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->P(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final O(S)Ln0/j;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->P(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->P(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final P()[F
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-short v0, p0, Ln0/j;->a:S

    invoke-static {v0}, Ln0/i;->T(S)F

    move-result v0

    iget-short v1, p0, Ln0/j;->b:S

    invoke-static {v1}, Ln0/i;->T(S)F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method public final Q(LMf/l;)Ln0/j;
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
            "Ln0/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v0

    invoke-static {v0}, Ln0/i;->m(S)Ln0/i;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/i;

    invoke-virtual {v0}, Ln0/i;->b0()S

    move-result v0

    invoke-virtual {p0, v0}, Ln0/j;->K(S)V

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v0

    invoke-static {v0}, Ln0/i;->m(S)Ln0/i;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/i;

    invoke-virtual {p1}, Ln0/i;->b0()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/j;->M(S)V

    return-object p0
.end method

.method public final R()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    iget-short v1, p0, Ln0/j;->a:S

    invoke-static {v1}, Ln0/i;->Z(S)S

    move-result v1

    iget-short v2, p0, Ln0/j;->b:S

    invoke-static {v2}, Ln0/i;->Z(S)S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final a()S
    .locals 1

    iget-short v0, p0, Ln0/j;->a:S

    return v0
.end method

.method public final b()S
    .locals 1

    iget-short v0, p0, Ln0/j;->b:S

    return v0
.end method

.method public final c(SS)Ln0/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final e()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    iget-short v1, p0, Ln0/j;->a:S

    invoke-static {v1}, Ln0/i;->s(S)S

    move-result v2

    iput-short v2, p0, Ln0/j;->a:S

    iget-short v2, p0, Ln0/j;->b:S

    invoke-static {v2}, Ln0/i;->s(S)S

    move-result v3

    iput-short v3, p0, Ln0/j;->b:S

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

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
    instance-of v1, p1, Ln0/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/j;

    iget-short v1, p0, Ln0/j;->a:S

    iget-short v3, p1, Ln0/j;->a:S

    invoke-static {v1, v3}, Ln0/i;->v(SS)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-short v1, p0, Ln0/j;->b:S

    iget-short p1, p1, Ln0/j;->b:S

    invoke-static {v1, p1}, Ln0/i;->v(SS)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f(Ln0/j;)Ln0/j;
    .locals 3
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->t(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->t(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final g(S)Ln0/j;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->t(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->t(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final h(II)Ln0/j;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0, p1}, Ln0/j;->j(I)S

    move-result p1

    invoke-virtual {p0, p2}, Ln0/j;->j(I)S

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Ln0/j;->a:S

    invoke-static {v0}, Ln0/i;->B(S)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Ln0/j;->b:S

    invoke-static {v1}, Ln0/i;->B(S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Ln0/H;Ln0/H;)Ln0/j;
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

    invoke-virtual {p0, p1}, Ln0/j;->k(Ln0/H;)S

    move-result p1

    invoke-virtual {p0, p2}, Ln0/j;->k(Ln0/H;)S

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final j(I)S
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-short p1, p0, Ln0/j;->b:S

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-short p1, p0, Ln0/j;->a:S

    :goto_0
    return p1
.end method

.method public final k(Ln0/H;)S
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-short p1, p0, Ln0/j;->b:S

    goto :goto_0

    :pswitch_1
    iget-short p1, p0, Ln0/j;->a:S

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

.method public final l()S
    .locals 1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v0

    return v0
.end method

.method public final m()S
    .locals 1

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v0

    return v0
.end method

.method public final n()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final o()S
    .locals 1

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v0

    return v0
.end method

.method public final p()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final q()S
    .locals 1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v0

    return v0
.end method

.method public final r()S
    .locals 1

    iget-short v0, p0, Ln0/j;->a:S

    return v0
.end method

.method public final s()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final t()S
    .locals 1

    iget-short v0, p0, Ln0/j;->b:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-short v0, p0, Ln0/j;->a:S

    invoke-static {v0}, Ln0/i;->Y(S)Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Ln0/j;->b:S

    invoke-static {v1}, Ln0/i;->Y(S)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Half2(x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ln0/j;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    iget-short v1, p0, Ln0/j;->a:S

    invoke-static {v1}, Ln0/i;->C(S)S

    move-result v2

    iput-short v2, p0, Ln0/j;->a:S

    iget-short v2, p0, Ln0/j;->b:S

    invoke-static {v2}, Ln0/i;->C(S)S

    move-result v3

    iput-short v3, p0, Ln0/j;->b:S

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final v(I)S
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/j;->j(I)S

    move-result p1

    return p1
.end method

.method public final w(Ln0/j;)Ln0/j;
    .locals 3
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->I(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->I(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final x(S)Ln0/j;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->I(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->I(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final y(Ln0/j;)Ln0/j;
    .locals 3
    .param p1    # Ln0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-virtual {p1}, Ln0/j;->r()S

    move-result v2

    invoke-static {v1, v2}, Ln0/i;->M(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-virtual {p1}, Ln0/j;->t()S

    move-result p1

    invoke-static {v2, p1}, Ln0/i;->M(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final z(S)Ln0/j;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/j;

    invoke-virtual {p0}, Ln0/j;->r()S

    move-result v1

    invoke-static {v1, p1}, Ln0/i;->M(SS)S

    move-result v1

    invoke-virtual {p0}, Ln0/j;->t()S

    move-result v2

    invoke-static {v2, p1}, Ln0/i;->M(SS)S

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ln0/j;-><init>(SSLkotlin/jvm/internal/x;)V

    return-object v0
.end method
