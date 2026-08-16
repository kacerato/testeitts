.class public Lorg/bouncycastle/cms/S;
.super Lorg/bouncycastle/cms/T;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/S$a;
    }
.end annotation


# instance fields
.field public G:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/cms/T;-><init>()V

    return-void
.end method

.method public constructor <init>(LQk/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/T;-><init>(LQk/o;)V

    return-void
.end method


# virtual methods
.method public final m(Loh/x;)Loh/s;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/cms/T;->a:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Loh/M;

    if-eqz v7, :cond_0

    check-cast v6, Loh/M;

    invoke-virtual {v6}, Loh/M;->g()I

    move-result v7

    if-ne v7, v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Loh/M;->g()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Loh/M;->g()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    move v4, v3

    move v5, v4

    :cond_4
    const-wide/16 v6, 0x5

    if-eqz v3, :cond_5

    new-instance p1, Loh/s;

    invoke-direct {p1, v6, v7}, Loh/s;-><init>(J)V

    return-object p1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/cms/T;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Loh/M;

    if-eqz v3, :cond_6

    move v2, v1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    new-instance p1, Loh/s;

    invoke-direct {p1, v6, v7}, Loh/s;-><init>(J)V

    return-object p1

    :cond_8
    if-eqz v5, :cond_9

    new-instance p1, Loh/s;

    const-wide/16 v0, 0x4

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    return-object p1

    :cond_9
    const-wide/16 v0, 0x3

    if-eqz v4, :cond_a

    new-instance p1, Loh/s;

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    return-object p1

    :cond_a
    iget-object v2, p0, Lorg/bouncycastle/cms/T;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/bouncycastle/cms/T;->d:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/cms/S;->n(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance p1, Loh/s;

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    return-object p1

    :cond_b
    sget-object v2, Luh/l;->m8:Loh/x;

    invoke-virtual {v2, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Loh/s;

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    return-object p1

    :cond_c
    new-instance p1, Loh/s;

    const-wide/16 v0, 0x1

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    return-object p1
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/N0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/N0;->u()Luh/Y;

    move-result-object v0

    invoke-static {v0}, Luh/Y;->z(Ljava/lang/Object;)Luh/Y;

    move-result-object v0

    invoke-virtual {v0}, Luh/Y;->C()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    if-ne v0, v2, :cond_0

    return v1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/cms/L0;

    invoke-virtual {p2}, Lorg/bouncycastle/cms/L0;->h()I

    move-result p2

    if-ne p2, v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public o()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhi/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/T;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/N0;

    sget-object v3, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/N0;->h()Lhi/b;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/cms/T;->f:LQk/o;

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/cms/U;->b(Lhi/b;LQk/o;)Lhi/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/T;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/L0;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/L0;->g()Lhi/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public p(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/S;->q(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/S;->s(Loh/x;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/S;->t(Loh/x;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public s(Loh/x;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/cms/S;->t(Loh/x;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public t(Loh/x;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Loh/h0;

    invoke-direct {v4, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Luh/l;->n8:Loh/x;

    invoke-virtual {v4, p2}, Loh/h0;->f(Loh/B;)V

    new-instance v5, Loh/h0;

    invoke-virtual {v4}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v5, p2, v0, v1}, Loh/h0;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/S;->m(Loh/x;)Loh/s;

    move-result-object p2

    invoke-virtual {v5, p2}, Loh/h0;->f(Loh/B;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/T;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/N0;

    iget-object v6, p0, Lorg/bouncycastle/cms/T;->f:LQk/o;

    invoke-static {p2, v3, v6}, Lorg/bouncycastle/cms/X;->b(Ljava/util/Set;Lorg/bouncycastle/cms/N0;LQk/o;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cms/T;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/L0;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/L0;->g()Lhi/b;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {p2}, Lorg/bouncycastle/cms/X;->g(Ljava/util/Set;)Loh/G;

    move-result-object p2

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Loh/h0;

    invoke-virtual {v5}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v6, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, p1}, Loh/h0;->f(Loh/B;)V

    if-eqz p3, :cond_2

    invoke-virtual {v6}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/cms/S;->G:I

    invoke-static {p2, v0, v1, p3}, Lorg/bouncycastle/cms/X;->h(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-static {p4, p2}, Lorg/bouncycastle/cms/X;->x(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/cms/T;->d:Ljava/util/List;

    invoke-static {p3, p2}, Lorg/bouncycastle/cms/X;->f(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    new-instance p2, Lorg/bouncycastle/cms/S$a;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/S$a;-><init>(Lorg/bouncycastle/cms/S;Ljava/io/OutputStream;Loh/x;Loh/h0;Loh/h0;Loh/h0;)V

    return-object p2
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/S;->G:I

    return-void
.end method
