.class public Lorg/bouncycastle/cms/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Luh/o;

.field public b:Luh/t;


# direct methods
.method public constructor <init>(Luh/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/v;->a:Luh/o;

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/t;->v(Ljava/lang/Object;)Luh/t;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/v;->b:Luh/t;

    return-void
.end method


# virtual methods
.method public a(LQk/u;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/v;->b(LQk/u;)Lorg/bouncycastle/cms/W;

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

.method public b(LQk/u;)Lorg/bouncycastle/cms/W;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/v;->b:Luh/t;

    invoke-virtual {v0}, Luh/t;->u()Luh/r;

    move-result-object v0

    invoke-virtual {v0}, Luh/r;->u()Lhi/b;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/u;->a(Lhi/b;)LQk/t;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Luh/r;->x()Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/bouncycastle/cms/W;

    invoke-virtual {v0}, Luh/r;->v()Loh/x;

    move-result-object v0

    invoke-interface {p1, v1}, LQk/t;->d(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public c()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/v;->a:Luh/o;

    return-object v0
.end method
