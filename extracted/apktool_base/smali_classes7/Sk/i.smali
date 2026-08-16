.class public LSk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LXh/u;


# direct methods
.method public constructor <init>(LXh/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSk/i;->a:LXh/u;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, LSk/i;->g([B)LXh/u;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/i;-><init>(LXh/u;)V

    return-void
.end method

.method public static g([B)LXh/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, LXh/u;->v(Ljava/lang/Object;)LXh/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()[LXh/g;
    .locals 4

    iget-object v0, p0, LSk/i;->a:LXh/u;

    invoke-virtual {v0}, LXh/u;->u()LXh/g;

    move-result-object v0

    invoke-virtual {v0}, LXh/g;->u()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v1, v1, [LXh/g;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/g;->w(Ljava/lang/Object;)LXh/g;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LSk/i;->h()LXh/u;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LSk/i;->h()LXh/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public d()Lhi/b;
    .locals 1

    iget-object v0, p0, LSk/i;->a:LXh/u;

    invoke-virtual {v0}, LXh/u;->x()LXh/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LXh/n;->x()Lhi/w;

    move-result-object v0

    invoke-virtual {v0}, Lhi/w;->u()Lhi/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, LSk/i;->a:LXh/u;

    invoke-virtual {v0}, LXh/u;->x()LXh/n;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(LSk/h;[C)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    invoke-virtual {p0}, LSk/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LSk/i;->a:LXh/u;

    invoke-virtual {v0}, LXh/u;->x()LXh/n;

    move-result-object v0

    new-instance v1, LSk/d;

    new-instance v2, Lhi/b;

    invoke-virtual {v0}, LXh/n;->x()Lhi/w;

    move-result-object v3

    invoke-virtual {v3}, Lhi/w;->u()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    move-result-object v3

    new-instance v4, LXh/s;

    invoke-virtual {v0}, LXh/n;->y()[B

    move-result-object v5

    invoke-virtual {v0}, LXh/n;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v4, v5, v0}, LXh/s;-><init>([BI)V

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-interface {p1, v2}, LSk/h;->a(Lhi/b;)LSk/g;

    move-result-object p1

    invoke-direct {v1, p1}, LSk/d;-><init>(LSk/g;)V

    :try_start_0
    iget-object p1, p0, LSk/i;->a:LXh/u;

    invoke-virtual {p1}, LXh/u;->u()LXh/g;

    move-result-object p1

    invoke-virtual {p1}, LXh/g;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-virtual {v1, p2, p1}, LSk/d;->a([C[B)LXh/n;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    iget-object p2, p0, LSk/i;->a:LXh/u;

    invoke-virtual {p2}, LXh/u;->x()LXh/n;

    move-result-object p2

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process AuthSafe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no MAC present on PFX"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()LXh/u;
    .locals 1

    iget-object v0, p0, LSk/i;->a:LXh/u;

    return-object v0
.end method
