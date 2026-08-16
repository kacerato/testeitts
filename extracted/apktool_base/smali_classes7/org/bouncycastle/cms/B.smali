.class public Lorg/bouncycastle/cms/B;
.super Lorg/bouncycastle/cms/C;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/B$a;
    }
.end annotation


# instance fields
.field public C:I

.field public D:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/C;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Loh/x;Ljava/io/OutputStream;LQk/F;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-interface {p3}, LQk/F;->getKey()LQk/r;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/C;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->v(LQk/r;Ljava/util/List;)Loh/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/cms/B;->i(Loh/x;Ljava/io/OutputStream;Loh/h;LQk/F;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final e(Loh/h;)Loh/s;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/C;->b:Lorg/bouncycastle/cms/d;

    if-eqz v0, :cond_0

    new-instance v0, Loh/s;

    iget-object v1, p0, Lorg/bouncycastle/cms/C;->c:Luh/I;

    new-instance v2, Loh/X0;

    invoke-direct {v2, p1}, Loh/X0;-><init>(Loh/h;)V

    new-instance p1, Loh/X0;

    invoke-direct {p1}, Loh/X0;-><init>()V

    invoke-static {v1, v2, p1}, Luh/u;->u(Luh/I;Loh/G;Loh/G;)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Loh/s;

    iget-object v1, p0, Lorg/bouncycastle/cms/C;->c:Luh/I;

    new-instance v2, Loh/X0;

    invoke-direct {v2, p1}, Loh/X0;-><init>(Loh/h;)V

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Luh/u;->u(Luh/I;Loh/G;Loh/G;)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    return-object v0
.end method

.method public f(Ljava/io/OutputStream;LQk/F;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/x;

    sget-object v1, Luh/l;->m8:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/B;->d(Loh/x;Ljava/io/OutputStream;LQk/F;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/io/OutputStream;Loh/h;LQk/F;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Luh/l;->m8:Loh/x;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/B;->i(Loh/x;Ljava/io/OutputStream;Loh/h;LQk/F;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "exception decoding algorithm parameters."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public h(Loh/x;Ljava/io/OutputStream;LQk/F;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/B;->d(Loh/x;Ljava/io/OutputStream;LQk/F;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public i(Loh/x;Ljava/io/OutputStream;Loh/h;LQk/F;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Loh/h0;

    invoke-direct {v4, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Luh/l;->o8:Loh/x;

    invoke-virtual {v4, p2}, Loh/h0;->f(Loh/B;)V

    new-instance v5, Loh/h0;

    invoke-virtual {v4}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v5, p2, v1, v0}, Loh/h0;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/cms/B;->e(Loh/h;)Loh/s;

    move-result-object p2

    invoke-virtual {v5, p2}, Loh/h0;->f(Loh/B;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/C;->c:Luh/I;

    invoke-static {v5, p2}, Lorg/bouncycastle/cms/X;->c(Loh/h0;Luh/I;)V

    iget-boolean p2, p0, Lorg/bouncycastle/cms/B;->D:Z

    invoke-static {p3, v5, p2}, Lorg/bouncycastle/cms/X;->d(Loh/h;Loh/h0;Z)V

    new-instance v6, Loh/h0;

    invoke-virtual {v5}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v6, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, p1}, Loh/h0;->f(Loh/B;)V

    invoke-interface {p4}, LQk/F;->a()Lhi/b;

    move-result-object p1

    invoke-virtual {v6}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p1

    iget p2, p0, Lorg/bouncycastle/cms/B;->C:I

    invoke-static {p1, v1, v1, p2}, Lorg/bouncycastle/cms/X;->h(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v3

    new-instance p1, Lorg/bouncycastle/cms/B$a;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/B$a;-><init>(Lorg/bouncycastle/cms/B;LQk/F;Ljava/io/OutputStream;Loh/h0;Loh/h0;Loh/h0;)V

    return-object p1
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/B;->D:Z

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/B;->C:I

    return-void
.end method
