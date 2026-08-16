.class public Lorg/bouncycastle/cms/q;
.super Lorg/bouncycastle/cms/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/t;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/q;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public b(LQk/w;)Lorg/bouncycastle/cms/W;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Luh/n;

    iget-object v1, p0, Lorg/bouncycastle/cms/t;->a:Luh/p;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Luh/p;->a(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/F;

    invoke-direct {v0, v1}, Luh/n;-><init>(Loh/F;)V

    invoke-virtual {v0}, Luh/n;->b()Luh/p;

    move-result-object v1

    invoke-virtual {v0}, Luh/n;->a()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/w;->a(Lhi/b;)LQk/v;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Luh/p;->a(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/z;

    new-instance v2, Lorg/bouncycastle/cms/W;

    invoke-virtual {v1}, Luh/p;->b()Loh/x;

    move-result-object v1

    invoke-interface {v0}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/v;->d(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "IOException reading compressed content."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
