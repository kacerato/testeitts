.class public Lorg/bouncycastle/cms/z;
.super Lorg/bouncycastle/cms/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/C;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/y;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-interface {p2}, LQk/F;->getKey()LQk/r;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/C;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->v(LQk/r;Ljava/util/List;)Loh/h;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v1}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    instance-of v2, p2, LQk/D;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, LQk/D;

    invoke-interface {v2}, LQk/a;->b()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/X;->t(Lorg/bouncycastle/cms/V;LQk/F;[B)Luh/r;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cms/C;->b:Lorg/bouncycastle/cms/d;

    invoke-static {p2}, Lorg/bouncycastle/cms/X;->m(Lorg/bouncycastle/cms/d;)Loh/G;

    move-result-object p2

    new-instance v1, Luh/o;

    sget-object v2, Luh/l;->o8:Loh/x;

    new-instance v3, Luh/u;

    iget-object v4, p0, Lorg/bouncycastle/cms/C;->c:Luh/I;

    new-instance v5, Loh/I0;

    invoke-direct {v5, v0}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v3, v4, v5, p1, p2}, Luh/u;-><init>(Luh/I;Loh/G;Luh/r;Loh/G;)V

    invoke-direct {v1, v2, v3}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p1, Lorg/bouncycastle/cms/y;

    invoke-direct {p1, v1}, Lorg/bouncycastle/cms/y;-><init>(Luh/o;)V

    return-object p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, ""

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/y;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/cms/z;->d(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/y;

    move-result-object p1

    return-object p1
.end method
