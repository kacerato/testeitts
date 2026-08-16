.class public LSi/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/I;


# instance fields
.field public final a:LTi/s;

.field public final b:I


# direct methods
.method public constructor <init>(LTi/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSi/i;->a:LTi/s;

    const/16 p1, 0x80

    iput p1, p0, LSi/i;->b:I

    return-void
.end method

.method public constructor <init>(LTi/s;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSi/i;->a:LTi/s;

    iput p2, p0, LSi/i;->b:I

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, LXi/w0;

    if-eqz v0, :cond_0

    check-cast p1, LXi/w0;

    invoke-virtual {p1}, LXi/w0;->a()[B

    move-result-object v0

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    iget-object v1, p0, LSi/i;->a:LTi/s;

    new-instance v2, LXi/a;

    iget v3, p0, LSi/i;->b:I

    invoke-direct {v2, p1, v3, v0}, LXi/a;-><init>(LXi/o0;I[B)V

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2}, LTi/b;->a(ZLBi/k;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GMAC requires ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LSi/i;->a:LTi/s;

    invoke-interface {v1}, LTi/a;->d()LBi/f;

    move-result-object v1

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-GMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LSi/i;->a:LTi/s;

    invoke-interface {v0, p1, p2}, LTi/b;->c([BI)I

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d()I
    .locals 1

    iget v0, p0, LSi/i;->b:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LSi/i;->a:LTi/s;

    invoke-interface {v0}, LTi/b;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LSi/i;->a:LTi/s;

    invoke-interface {v0, p1}, LTi/b;->k(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LSi/i;->a:LTi/s;

    invoke-interface {v0, p1, p2, p3}, LTi/b;->j([BII)V

    return-void
.end method
