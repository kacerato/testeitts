.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:LBi/h;


# direct methods
.method public constructor <init>(LBi/f;)V
    .locals 1

    .line 1
    new-instance v0, LWi/d;

    invoke-direct {v0}, LWi/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;LWi/a;)V

    return-void
.end method

.method public constructor <init>(LBi/f;LWi/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LWi/e;

    invoke-direct {v0, p1, p2}, LWi/e;-><init>(LBi/f;LWi/a;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    return-void
.end method

.method public constructor <init>(LBi/h;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0, p1, p2}, LBi/h;->f(ZLBi/k;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0}, LBi/h;->d()LBi/f;

    move-result-object v0

    invoke-interface {v0}, LBi/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0, p1, p2}, LBi/h;->a([BI)I

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d()LBi/f;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0}, LBi/h;->d()LBi/f;

    move-result-object v0

    return-object v0
.end method

.method public e([BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "AAD is not supported in the current mode."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, LBi/h;->h([BII[BI)I

    move-result p1

    return p1
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0, p1}, LBi/h;->e(I)I

    move-result p1

    return p1
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0, p1}, LBi/h;->c(I)I

    move-result p1

    return p1
.end method

.method public i(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    invoke-virtual {v0, p1, p2, p3}, LBi/h;->g(B[BI)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;->a:LBi/h;

    instance-of v0, v0, LTi/j;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
