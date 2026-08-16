.class public Lorg/bouncycastle/cms/m;
.super Lorg/bouncycastle/cms/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/m$a;
    }
.end annotation


# instance fields
.field public E:I

.field public F:Z

.field public G:LQk/A;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/n;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/io/OutputStream;LQk/A;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/m;->i(Loh/x;Ljava/io/OutputStream;LQk/A;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/io/OutputStream;LQk/A;LQk/p;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/m;->j(Loh/x;Ljava/io/OutputStream;LQk/A;LQk/p;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public i(Loh/x;Ljava/io/OutputStream;LQk/A;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/cms/m;->j(Loh/x;Ljava/io/OutputStream;LQk/A;LQk/p;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public j(Loh/x;Ljava/io/OutputStream;LQk/A;LQk/p;)Ljava/io/OutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p3, p0, Lorg/bouncycastle/cms/m;->G:LQk/A;

    :try_start_0
    invoke-interface {p3}, LQk/A;->getKey()LQk/r;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/C;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->v(LQk/r;Ljava/util/List;)Loh/h;

    move-result-object v0

    new-instance v7, Loh/h0;

    invoke-direct {v7, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Luh/l;->s8:Loh/x;

    invoke-virtual {v7, p2}, Loh/h0;->f(Loh/B;)V

    new-instance v8, Loh/h0;

    invoke-virtual {v7}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v8, p2, v2, v1}, Loh/h0;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance p2, Loh/s;

    iget-object v3, p0, Lorg/bouncycastle/cms/C;->c:Luh/I;

    invoke-static {v3}, Luh/f;->u(Luh/I;)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v8, p2}, Loh/h0;->f(Loh/B;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/C;->c:Luh/I;

    invoke-static {v8, p2}, Lorg/bouncycastle/cms/X;->c(Loh/h0;Luh/I;)V

    iget-boolean p2, p0, Lorg/bouncycastle/cms/m;->F:Z

    invoke-static {v0, v8, p2}, Lorg/bouncycastle/cms/X;->d(Loh/h;Loh/h0;Z)V

    invoke-interface {p3}, LQk/A;->a()Lhi/b;

    move-result-object p2

    invoke-virtual {v8}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p4, :cond_0

    new-instance p2, Loh/K0;

    invoke-interface {p4}, LQk/p;->a()Lhi/b;

    move-result-object v0

    invoke-direct {p2, v2, v1, v0}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v8, p2}, Loh/h0;->f(Loh/B;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    new-instance v9, Loh/h0;

    invoke-virtual {v8}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v9, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, p1}, Loh/h0;->f(Loh/B;)V

    invoke-virtual {v9}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    iget v0, p0, Lorg/bouncycastle/cms/m;->E:I

    invoke-static {p2, v2, v1, v0}, Lorg/bouncycastle/cms/X;->h(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p4, :cond_1

    new-instance v0, Lfm/f;

    invoke-interface {p4}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    new-instance v0, Lfm/f;

    invoke-interface {p3}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/m$a;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/cms/m$a;-><init>(Lorg/bouncycastle/cms/m;LQk/A;LQk/p;Loh/x;Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_3
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "exception decoding algorithm parameters."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/m;->F:Z

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/m;->E:I

    return-void
.end method
