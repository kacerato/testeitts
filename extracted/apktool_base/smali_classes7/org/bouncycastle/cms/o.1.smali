.class public Lorg/bouncycastle/cms/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public b:Luh/o;

.field public c:Luh/m;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->F(Ljava/io/InputStream;)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/o;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/o;->b:Luh/o;

    :try_start_0
    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/m;->w(Ljava/lang/Object;)Luh/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/o;->c:Luh/m;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/o;-><init>(Luh/o;)V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/o;->c:Luh/m;

    invoke-virtual {v0}, Luh/m;->v()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public b(LQk/w;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/o;->c:Luh/m;

    invoke-virtual {v0}, Luh/m;->v()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->u()Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    iget-object v1, p0, Lorg/bouncycastle/cms/o;->c:Luh/m;

    invoke-virtual {v1}, Luh/m;->u()Lhi/b;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/w;->a(Lhi/b;)LQk/v;

    move-result-object p1

    invoke-virtual {v0}, Loh/y;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/v;->d(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->I(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "exception reading compressed stream."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public c(LQk/w;)Lorg/bouncycastle/cms/W;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/o;->c:Luh/m;

    invoke-virtual {v0}, Luh/m;->v()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->u()Loh/g;

    move-result-object v1

    check-cast v1, Loh/y;

    iget-object v2, p0, Lorg/bouncycastle/cms/o;->c:Luh/m;

    invoke-virtual {v2}, Luh/m;->u()Lhi/b;

    move-result-object v2

    invoke-interface {p1, v2}, LQk/w;->a(Lhi/b;)LQk/v;

    move-result-object p1

    invoke-virtual {v1}, Loh/y;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1, v1}, LQk/v;->d(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/cms/W;

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public d()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/o;->b:Luh/o;

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public e()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/o;->b:Luh/o;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/o;->b:Luh/o;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
