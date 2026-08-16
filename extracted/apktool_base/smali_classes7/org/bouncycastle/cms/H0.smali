.class public abstract Lorg/bouncycastle/cms/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/bouncycastle/cms/F0;

.field public b:Lhi/b;

.field public c:Lhi/b;

.field public d:Lorg/bouncycastle/cms/K;

.field public e:[B

.field public f:Lorg/bouncycastle/cms/J0;


# direct methods
.method public constructor <init>(Lhi/b;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    iput-object p2, p0, Lorg/bouncycastle/cms/H0;->c:Lhi/b;

    iput-object p3, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/cms/E0;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/H0;->c(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/W;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/W;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->I(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse internal stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public b()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    instance-of v1, v0, Lorg/bouncycastle/cms/D$c;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/cms/D$c;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/D$c;->i()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/W;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/H0;->j(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/J0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/H0;->f:Lorg/bouncycastle/cms/J0;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/J0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    check-cast p1, Lorg/bouncycastle/cms/L;

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->f:Lorg/bouncycastle/cms/J0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/J0;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/cms/L;->g(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {p1}, Lorg/bouncycastle/cms/K;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/bouncycastle/cms/W;

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v0}, Lorg/bouncycastle/cms/K;->a()Loh/x;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v1}, Lorg/bouncycastle/cms/K;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lorg/bouncycastle/cms/W;

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v0}, Lorg/bouncycastle/cms/K;->a()Loh/x;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/H0;->f:Lorg/bouncycastle/cms/J0;

    iget-object v2, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v2}, Lorg/bouncycastle/cms/K;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/J0;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public d()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v0}, Lorg/bouncycastle/cms/K;->a()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->l(Loh/g;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    return-object v0
.end method

.method public h()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->e:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->f:Lorg/bouncycastle/cms/J0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/J0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v0}, Lorg/bouncycastle/cms/K;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->f:Lorg/bouncycastle/cms/J0;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/H0;->d:Lorg/bouncycastle/cms/K;

    invoke-interface {v2}, Lorg/bouncycastle/cms/K;->d()Loh/G;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/J0;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lfm/d;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to drain input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->f:Lorg/bouncycastle/cms/J0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/J0;->c()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/H0;->e:[B

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->e:[B

    return-object v0
.end method

.method public i()Lorg/bouncycastle/cms/F0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/H0;->a:Lorg/bouncycastle/cms/F0;

    return-object v0
.end method

.method public abstract j(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/J0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
