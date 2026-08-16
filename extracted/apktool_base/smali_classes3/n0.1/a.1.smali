.class public final Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v2, v0, v1}, Ln0/a;-><init>(ZZILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p1, Ln0/a;->a:Z

    iget-boolean p1, p1, Ln0/a;->b:Z

    invoke-direct {p0, v0, p1}, Ln0/a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ln0/a;->a:Z

    iput-boolean p2, p0, Ln0/a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/x;)V
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
    invoke-direct {p0, p1, p2}, Ln0/a;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic d(Ln0/a;ZZILjava/lang/Object;)Ln0/a;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Ln0/a;->a:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Ln0/a;->b:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Ln0/a;->c(ZZ)Ln0/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/a;->C(Z)V

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/a;->E(Z)V

    return-void
.end method

.method public final B(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/a;->E(Z)V

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Ln0/a;->a:Z

    return-void
.end method

.method public final D(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/a;->C(Z)V

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/a;->E(Z)V

    return-void
.end method

.method public final E(Z)V
    .locals 0

    iput-boolean p1, p0, Ln0/a;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Ln0/a;->a:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ln0/a;->b:Z

    return v0
.end method

.method public final c(ZZ)Ln0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-direct {v0, p1, p2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final e(II)Ln0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0, p1}, Ln0/a;->g(I)Z

    move-result p1

    invoke-virtual {p0, p2}, Ln0/a;->g(I)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/a;-><init>(ZZ)V

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
    instance-of v1, p1, Ln0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/a;

    iget-boolean v1, p0, Ln0/a;->a:Z

    iget-boolean v3, p1, Ln0/a;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ln0/a;->b:Z

    iget-boolean p1, p1, Ln0/a;->b:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f(Ln0/H;Ln0/H;)Ln0/a;
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

    invoke-virtual {p0, p1}, Ln0/a;->h(Ln0/H;)Z

    move-result p1

    invoke-virtual {p0, p2}, Ln0/a;->h(Ln0/H;)Z

    move-result p2

    invoke-direct {v0, p1, p2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final g(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Ln0/a;->b:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be in 0..1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean p1, p0, Ln0/a;->a:Z

    :goto_0
    return p1
.end method

.method public final h(Ln0/H;)Z
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-boolean p1, p0, Ln0/a;->b:Z

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Ln0/a;->a:Z

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

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ln0/a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ln0/a;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Ln0/a;->q()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Ln0/a;->o()Z

    move-result v0

    return v0
.end method

.method public final k()Ln0/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0}, Ln0/a;->o()Z

    move-result v1

    invoke-virtual {p0}, Ln0/a;->q()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Ln0/a;->o()Z

    move-result v0

    return v0
.end method

.method public final m()Ln0/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0}, Ln0/a;->o()Z

    move-result v1

    invoke-virtual {p0}, Ln0/a;->q()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final n()Z
    .locals 1

    invoke-virtual {p0}, Ln0/a;->q()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Ln0/a;->a:Z

    return v0
.end method

.method public final p()Ln0/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ln0/a;

    invoke-virtual {p0}, Ln0/a;->o()Z

    move-result v1

    invoke-virtual {p0}, Ln0/a;->q()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;-><init>(ZZ)V

    return-object v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Ln0/a;->b:Z

    return v0
.end method

.method public final r(I)Z
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln0/a;->g(I)Z

    move-result p1

    return p1
.end method

.method public final s(IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Ln0/a;->t(IZ)V

    invoke-virtual {p0, p2, p3}, Ln0/a;->t(IZ)V

    return-void
.end method

.method public final t(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Ln0/a;->b:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be in 0..1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-boolean p2, p0, Ln0/a;->a:Z

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Ln0/a;->a:Z

    iget-boolean v1, p0, Ln0/a;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bool2(x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ln0/H;Ln0/H;Z)V
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

    invoke-virtual {p0, p1, p3}, Ln0/a;->v(Ln0/H;Z)V

    invoke-virtual {p0, p2, p3}, Ln0/a;->v(Ln0/H;Z)V

    return-void
.end method

.method public final v(Ln0/H;Z)V
    .locals 1
    .param p1    # Ln0/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be X, Y, R, G, S or T"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput-boolean p2, p0, Ln0/a;->b:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Ln0/a;->a:Z

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

.method public final w(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/a;->E(Z)V

    return-void
.end method

.method public final x(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/a;->C(Z)V

    return-void
.end method

.method public final y(Ln0/a;)V
    .locals 1
    .param p1    # Ln0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln0/a;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Ln0/a;->C(Z)V

    invoke-virtual {p1}, Ln0/a;->q()Z

    move-result p1

    invoke-virtual {p0, p1}, Ln0/a;->E(Z)V

    return-void
.end method

.method public final z(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/a;->C(Z)V

    return-void
.end method
