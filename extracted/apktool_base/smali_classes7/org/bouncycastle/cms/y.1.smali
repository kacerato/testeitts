.class public Lorg/bouncycastle/cms/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public b:Lorg/bouncycastle/cms/I0;

.field public c:Luh/o;

.field public d:Lhi/b;

.field public e:Loh/G;

.field public f:Lorg/bouncycastle/cms/x0;


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

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/y;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/y;->c:Luh/o;

    :try_start_0
    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/u;->w(Ljava/lang/Object;)Luh/u;

    move-result-object p1

    invoke-virtual {p1}, Luh/u;->y()Luh/I;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/x0;

    invoke-virtual {p1}, Luh/u;->y()Luh/I;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/y;->f:Lorg/bouncycastle/cms/x0;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Luh/u;->z()Loh/G;

    move-result-object v1

    invoke-virtual {p1}, Luh/u;->v()Luh/r;

    move-result-object v2

    invoke-virtual {v2}, Luh/r;->u()Lhi/b;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/y;->d:Lhi/b;

    new-instance v3, Lorg/bouncycastle/cms/G;

    invoke-virtual {v2}, Luh/r;->x()Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/G;-><init>([B)V

    new-instance v4, Lorg/bouncycastle/cms/D$a;

    iget-object v5, p0, Lorg/bouncycastle/cms/y;->d:Lhi/b;

    invoke-virtual {v2}, Luh/r;->v()Loh/x;

    move-result-object v2

    invoke-direct {v4, v5, v2, v3}, Lorg/bouncycastle/cms/D$a;-><init>(Lhi/b;Loh/x;Lorg/bouncycastle/cms/J;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/y;->d:Lhi/b;

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/y;->b:Lorg/bouncycastle/cms/I0;

    invoke-virtual {p1}, Luh/u;->A()Loh/G;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/y;->e:Loh/G;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_2
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

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/y;-><init>(Luh/o;)V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->d:Lhi/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->d:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/y;->d:Lhi/b;

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

.method public d()Lorg/bouncycastle/cms/x0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->f:Lorg/bouncycastle/cms/x0;

    return-object v0
.end method

.method public e()Lorg/bouncycastle/cms/I0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->b:Lorg/bouncycastle/cms/I0;

    return-object v0
.end method

.method public f()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->e:Loh/G;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    return-object v1
.end method

.method public g()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->c:Luh/o;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/y;->c:Luh/o;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
