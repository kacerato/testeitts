.class public abstract Lvk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/k;


# instance fields
.field public a:[LQk/p;

.field public b:Lvk/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltk/j;Ltk/e;Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Ltk/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ltk/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ltk/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ltk/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lvk/e;->c(Ltk/j;Ltk/e;Ljava/io/InputStream;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/A;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cms/A;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/A;->e()Lorg/bouncycastle/cms/x0;

    move-result-object p3

    invoke-virtual {v0}, Lorg/bouncycastle/cms/A;->f()Lorg/bouncycastle/cms/I0;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lvk/e;->d(Ltk/j;Ltk/e;Lorg/bouncycastle/cms/x0;Lorg/bouncycastle/cms/I0;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/t;->a()V

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lvk/e;->a:[LQk/p;

    array-length v3, v2

    if-eq v1, v3, :cond_4

    aget-object v2, v2, v1

    invoke-interface {v2}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lvk/e;->a:[LQk/p;

    aget-object v2, v2, v1

    invoke-interface {v2}, LQk/p;->a()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iget-object v3, p0, Lvk/e;->a:[LQk/p;

    aget-object v3, v3, v1

    invoke-interface {v3}, LQk/p;->b()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p3

    new-instance v1, Lorg/bouncycastle/cms/O;

    invoke-direct {v1, v0, p3}, Lorg/bouncycastle/cms/O;-><init>(Ljava/util/Map;[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/cms/O;->e()Lorg/bouncycastle/util/t;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/cms/O;->d()Lorg/bouncycastle/util/t;

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/cms/O;->c()Lorg/bouncycastle/util/t;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/cms/O;->l()Lorg/bouncycastle/cms/O0;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lvk/e;->e(Ltk/j;Ltk/e;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lorg/bouncycastle/cms/O0;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :goto_4
    new-instance p2, Lorg/bouncycastle/mime/MimeIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CMS failure: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Ltk/j;Ltk/e;)Ltk/g;
    .locals 1

    invoke-virtual {p2}, Ltk/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lvk/c;

    invoke-direct {v0, p1, p2}, Lvk/c;-><init>(Ltk/j;Ltk/e;)V

    iput-object v0, p0, Lvk/e;->b:Lvk/c;

    invoke-virtual {v0}, Lvk/c;->e()[LQk/p;

    move-result-object p1

    iput-object p1, p0, Lvk/e;->a:[LQk/p;

    iget-object p1, p0, Lvk/e;->b:Lvk/c;

    return-object p1

    :cond_0
    new-instance p1, Ltk/d;

    invoke-direct {p1}, Ltk/d;-><init>()V

    return-object p1
.end method

.method public c(Ltk/j;Ltk/e;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "content handling not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ltk/j;Ltk/e;Lorg/bouncycastle/cms/x0;Lorg/bouncycastle/cms/I0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "envelopedData handling not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ltk/j;Ltk/e;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lorg/bouncycastle/cms/O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "signedData handling not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
