.class public LSk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, LSk/j;->a:Loh/h;

    return-void
.end method


# virtual methods
.method public a(LSk/k;)LSk/j;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSk/j;->a:Loh/h;

    new-instance v1, LXh/g;

    sget-object v2, LXh/t;->G1:Loh/x;

    new-instance v3, Loh/C0;

    new-instance v4, Loh/V0;

    invoke-virtual {p1}, LSk/k;->d()LXh/C;

    move-result-object p1

    invoke-direct {v4, p1}, Loh/V0;-><init>(Loh/g;)V

    invoke-virtual {v4}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v3, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v2, v3}, LXh/g;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    return-object p0
.end method

.method public b(LQk/F;LSk/k;)LSk/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/G0;

    invoke-virtual {p2}, LSk/k;->d()LXh/C;

    move-result-object p2

    invoke-direct {v0, p2}, Loh/G0;-><init>(Loh/g;)V

    invoke-virtual {p0, p1, v0}, LSk/j;->c(LQk/F;Loh/E;)LSk/j;

    move-result-object p1

    return-object p1
.end method

.method public final c(LQk/F;Loh/E;)LSk/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/w;

    invoke-direct {v0}, Lorg/bouncycastle/cms/w;-><init>()V

    :try_start_0
    iget-object v1, p0, LSk/j;->a:Loh/h;

    new-instance v2, Lorg/bouncycastle/cms/G;

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/bouncycastle/cms/G;-><init>([B)V

    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/cms/w;->c(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/v;->c()Luh/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSIOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public d(LQk/F;[LSk/k;)LSk/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, LSk/k;->d()LXh/C;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Loh/V0;

    invoke-direct {p2, v0}, Loh/V0;-><init>(Loh/h;)V

    invoke-virtual {p0, p1, p2}, LSk/j;->c(LQk/F;Loh/E;)LSk/j;

    move-result-object p1

    return-object p1
.end method

.method public e(LSk/g;[C)LSk/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    new-instance v0, Loh/V0;

    iget-object v1, p0, LSk/j;->a:Loh/h;

    invoke-direct {v0, v1}, Loh/V0;-><init>(Loh/h;)V

    invoke-static {v0}, LXh/b;->w(Ljava/lang/Object;)LXh/b;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, LXh/g;

    sget-object v2, LXh/t;->G1:Loh/x;

    new-instance v3, Loh/C0;

    invoke-direct {v3, v0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v2, v3}, LXh/g;-><init>(Loh/x;Loh/g;)V

    if-eqz p1, :cond_0

    new-instance v2, LSk/d;

    invoke-direct {v2, p1}, LSk/d;-><init>(LSk/g;)V

    invoke-virtual {v2, p2, v0}, LSk/d;->a([C[B)LXh/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, LXh/u;

    invoke-direct {p2, v1, p1}, LXh/u;-><init>(LXh/g;LXh/n;)V

    new-instance p1, LSk/i;

    invoke-direct {p1, p2}, LSk/i;-><init>(LXh/u;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to encode AuthenticatedSafe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
