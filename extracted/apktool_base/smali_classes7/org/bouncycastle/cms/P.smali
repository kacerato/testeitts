.class public Lorg/bouncycastle/cms/P;
.super Lorg/bouncycastle/cms/T;
.source "SourceFile"


# instance fields
.field public G:Ljava/util/List;

.field public H:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/cms/T;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/P;->G:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/P;->H:Z

    return-void
.end method

.method public constructor <init>(LQk/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/T;-><init>(LQk/o;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/P;->G:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/P;->H:Z

    return-void
.end method

.method public static m(Ljava/util/List;Z)Loh/G;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/cms/X;->k(Ljava/util/List;)Loh/G;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/cms/X;->i(Ljava/util/List;)Loh/G;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public n(Lorg/bouncycastle/cms/V;)Lorg/bouncycastle/cms/O;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/P;->o(Lorg/bouncycastle/cms/V;Z)Lorg/bouncycastle/cms/O;

    move-result-object p1

    return-object p1
.end method

.method public o(Lorg/bouncycastle/cms/V;Z)Lorg/bouncycastle/cms/O;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/P;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/T;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

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

    iget-object v4, p0, Lorg/bouncycastle/cms/T;->f:LQk/o;

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/cms/X;->b(Ljava/util/Set;Lorg/bouncycastle/cms/N0;LQk/o;)V

    invoke-virtual {v3}, Lorg/bouncycastle/cms/N0;->u()Luh/Y;

    move-result-object v3

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object v2

    invoke-interface {p1}, Lorg/bouncycastle/cms/F;->getContent()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p2, :cond_1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/cms/T;->d:Ljava/util/List;

    invoke-static {v5, v3}, Lorg/bouncycastle/cms/X;->f(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/cms/X;->w(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    :try_start_0
    invoke-interface {p1, v5}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/bouncycastle/cms/P;->H:Z

    if-eqz p2, :cond_2

    new-instance v4, Loh/C0;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {v4, p2}, Loh/C0;-><init>([B)V

    goto :goto_2

    :cond_2
    new-instance v4, Loh/c0;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {v4, p2}, Loh/c0;-><init>([B)V

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data processing exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    :goto_2
    iget-object p2, p0, Lorg/bouncycastle/cms/T;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/L0;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/cms/L0;->a(Loh/x;)Luh/Y;

    move-result-object v5

    invoke-virtual {v5}, Luh/Y;->v()Lhi/b;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v3}, Lorg/bouncycastle/cms/L0;->e()[B

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/cms/T;->e:Ljava/util/Map;

    invoke-virtual {v5}, Luh/Y;->v()Lhi/b;

    move-result-object v5

    invoke-virtual {v5}, Lhi/b;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lorg/bouncycastle/cms/T;->a:Ljava/util/List;

    iget-boolean v3, p0, Lorg/bouncycastle/cms/P;->H:Z

    invoke-static {p2, v3}, Lorg/bouncycastle/cms/P;->m(Ljava/util/List;Z)Loh/G;

    move-result-object v8

    iget-object p2, p0, Lorg/bouncycastle/cms/T;->b:Ljava/util/List;

    iget-boolean v3, p0, Lorg/bouncycastle/cms/P;->H:Z

    invoke-static {p2, v3}, Lorg/bouncycastle/cms/P;->m(Ljava/util/List;Z)Loh/G;

    move-result-object v9

    new-instance v7, Luh/o;

    invoke-direct {v7, v2, v4}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p2, Luh/V;

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->g(Ljava/util/Set;)Loh/G;

    move-result-object v6

    new-instance v10, Loh/I0;

    invoke-direct {v10, v1}, Loh/I0;-><init>(Loh/h;)V

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Luh/V;-><init>(Loh/G;Luh/o;Loh/G;Loh/G;Loh/G;)V

    new-instance v0, Luh/o;

    sget-object v1, Luh/l;->n8:Loh/x;

    invoke-direct {v0, v1, p2}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p2, Lorg/bouncycastle/cms/O;

    invoke-direct {p2, p1, v0}, Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/F;Luh/o;)V

    return-object p2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this method can only be used with SignerInfoGenerator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lorg/bouncycastle/cms/N0;)Lorg/bouncycastle/cms/O0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/G;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->m()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/G;-><init>(Loh/x;[B)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/cms/P;->o(Lorg/bouncycastle/cms/V;Z)Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->l()Lorg/bouncycastle/cms/O0;

    move-result-object p1

    return-object p1
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/P;->H:Z

    return-void
.end method
