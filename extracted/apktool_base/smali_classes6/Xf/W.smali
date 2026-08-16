.class public LXf/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(LXf/m;)I
    .locals 2
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "sumOfUByte"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "Lnf/x0;",
            ">;)I"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnf/x0;

    invoke-virtual {v1}, Lnf/x0;->j0()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final b(LXf/m;)I
    .locals 2
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "sumOfUInt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "Lnf/B0;",
            ">;)I"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnf/B0;

    invoke-virtual {v1}, Lnf/B0;->q0()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final c(LXf/m;)J
    .locals 4
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "sumOfULong"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "Lnf/F0;",
            ">;)J"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnf/F0;

    invoke-virtual {v2}, Lnf/F0;->l0()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static final d(LXf/m;)I
    .locals 3
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "sumOfUShort"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/m<",
            "Lnf/L0;",
            ">;)I"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnf/L0;

    invoke-virtual {v1}, Lnf/L0;->j0()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method
