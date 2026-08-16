.class public Lcm/b;
.super Lcm/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcm/d;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lorg/bouncycastle/tsp/h;)Lcm/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcm/b;->g(Lorg/bouncycastle/tsp/h;Ljava/io/InputStream;)Lcm/a;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/bouncycastle/tsp/h;Ljava/io/InputStream;)Lcm/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2, v0}, Lfm/d;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception encapsulating content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Loh/c0;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p2, v0}, Loh/c0;-><init>([B)V

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    new-instance v0, Luh/a0;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/h;->l()Lorg/bouncycastle/cms/O;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O;->s()Luh/o;

    move-result-object p1

    invoke-direct {v0, p1}, Luh/a0;-><init>(Luh/o;)V

    iget-object p1, p0, Lcm/d;->b:Ljava/net/URI;

    if-eqz p1, :cond_2

    new-instance v1, Loh/z0;

    iget-object p1, p0, Lcm/d;->b:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Loh/z0;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lcm/a;

    new-instance v2, Luh/o;

    sget-object v3, Luh/l;->v8:Loh/x;

    new-instance v4, Luh/c0;

    iget-object v5, p0, Lcm/d;->a:Luh/G;

    new-instance v6, Luh/w;

    new-instance v7, Luh/b0;

    invoke-direct {v7, v0}, Luh/b0;-><init>(Luh/a0;)V

    invoke-direct {v6, v7}, Luh/w;-><init>(Luh/b0;)V

    invoke-direct {v4, v1, v5, p2, v6}, Luh/c0;-><init>(Loh/q;Luh/G;Loh/y;Luh/w;)V

    invoke-direct {v2, v3, v4}, Luh/o;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p1, v2}, Lcm/a;-><init>(Luh/o;)V

    return-object p1
.end method

.method public h(Lorg/bouncycastle/tsp/h;[B)Lcm/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcm/b;->g(Lorg/bouncycastle/tsp/h;Ljava/io/InputStream;)Lcm/a;

    move-result-object p1

    return-object p1
.end method
