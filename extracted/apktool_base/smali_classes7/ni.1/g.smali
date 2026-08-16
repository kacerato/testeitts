.class public Lni/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lth/I;


# direct methods
.method public constructor <init>(Lni/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lni/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lni/f;->e()Lth/I;

    move-result-object p1

    iput-object p1, p0, Lni/g;->a:Lth/I;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PKIMessage not protected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lth/I;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lth/I;->y()Lth/G;

    move-result-object v0

    invoke-virtual {v0}, Lth/G;->A()Lhi/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lni/g;->a:Lth/I;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PKIMessage not protected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Loh/G0;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v1}, Lth/I;->y()Lth/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v1}, Lth/I;->v()Lth/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public b()Lth/C;
    .locals 1

    iget-object v0, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v0}, Lth/I;->v()Lth/C;

    move-result-object v0

    return-object v0
.end method

.method public c()[Lli/h;
    .locals 5

    iget-object v0, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v0}, Lth/I;->x()[Lth/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lli/h;

    return-object v0

    :cond_0
    array-length v2, v0

    new-array v2, v2, [Lli/h;

    :goto_0
    array-length v3, v0

    if-eq v1, v3, :cond_1

    new-instance v3, Lli/h;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lth/b;->A()Lhi/q;

    move-result-object v4

    invoke-direct {v3, v4}, Lli/h;-><init>(Lhi/q;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public d()Lth/G;
    .locals 1

    iget-object v0, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v0}, Lth/I;->y()Lth/G;

    move-result-object v0

    return-object v0
.end method

.method public e()Lhi/b;
    .locals 1

    iget-object v0, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v0}, Lth/I;->y()Lth/G;

    move-result-object v0

    invoke-virtual {v0}, Lth/G;->A()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 2

    sget-object v0, Lth/c;->a:Loh/x;

    invoke-virtual {p0}, Lni/g;->e()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    return v0
.end method

.method public g()Lth/I;
    .locals 1

    iget-object v0, p0, Lni/g;->a:Lth/I;

    return-object v0
.end method

.method public h(LQk/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lni/g;->e()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0}, LQk/h;->a(Lhi/b;)LQk/g;

    move-result-object p1

    iget-object v0, p0, Lni/g;->a:Lth/I;

    invoke-virtual {v0}, Lth/I;->A()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lni/g;->j([BLQk/g;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to verify signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i(LQk/G;[C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lni/g;->e()Lhi/b;

    move-result-object v0

    invoke-interface {p1, v0, p2}, LQk/G;->a(Lhi/b;[C)LQk/A;

    move-result-object p1

    invoke-virtual {p0}, Lni/g;->a()Loh/G0;

    move-result-object p2

    invoke-interface {p1}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p2, v0}, Lni/a;->c(Loh/v;Ljava/io/OutputStream;)V

    invoke-interface {p1}, LQk/A;->e()[B

    move-result-object p1

    iget-object p2, p0, Lni/g;->a:Lth/I;

    invoke-virtual {p2}, Lth/I;->A()Loh/c;

    move-result-object p2

    invoke-virtual {p2}, Loh/c;->J()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to verify MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final j([BLQk/g;)Z
    .locals 2

    invoke-virtual {p0}, Lni/g;->a()Loh/G0;

    move-result-object v0

    invoke-interface {p2}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lni/a;->c(Loh/v;Ljava/io/OutputStream;)V

    invoke-interface {p2, p1}, LQk/g;->verify([B)Z

    move-result p1

    return p1
.end method
