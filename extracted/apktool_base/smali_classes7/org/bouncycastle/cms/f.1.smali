.class public Lorg/bouncycastle/cms/f;
.super Lorg/bouncycastle/cms/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lorg/bouncycastle/cms/V;LQk/D;)Lorg/bouncycastle/cms/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-interface {p2}, LQk/F;->getKey()LQk/r;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/i;->C:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->v(LQk/r;Ljava/util/List;)Loh/h;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v1}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/cms/i;->D:Lorg/bouncycastle/cms/d;

    invoke-static {v3, p2}, Lorg/bouncycastle/cms/X;->E(Lorg/bouncycastle/cms/d;LQk/D;)Loh/G;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p2}, LQk/a;->b()[B

    move-result-object v2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/X;->t(Lorg/bouncycastle/cms/V;LQk/F;[B)Luh/r;

    move-result-object v7

    iget-object p1, p0, Lorg/bouncycastle/cms/i;->E:Lorg/bouncycastle/cms/d;

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->n(Lorg/bouncycastle/cms/d;)Loh/G;

    move-result-object v10

    new-instance p1, Luh/o;

    sget-object p2, Luh/l;->u8:Loh/x;

    new-instance v1, Luh/d;

    iget-object v5, p0, Lorg/bouncycastle/cms/i;->F:Luh/I;

    new-instance v6, Loh/I0;

    invoke-direct {v6, v0}, Loh/I0;-><init>(Loh/h;)V

    new-instance v9, Loh/C0;

    invoke-direct {v9, v2}, Loh/C0;-><init>([B)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Luh/d;-><init>(Luh/I;Loh/G;Luh/r;Loh/G;Loh/y;Loh/G;)V

    invoke-direct {p1, p2, v1}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p2, Lorg/bouncycastle/cms/e;

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/e;-><init>(Luh/o;)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process authenticated content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public g(Lorg/bouncycastle/cms/V;LQk/D;)Lorg/bouncycastle/cms/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/cms/f;->f(Lorg/bouncycastle/cms/V;LQk/D;)Lorg/bouncycastle/cms/e;

    move-result-object p1

    return-object p1
.end method
