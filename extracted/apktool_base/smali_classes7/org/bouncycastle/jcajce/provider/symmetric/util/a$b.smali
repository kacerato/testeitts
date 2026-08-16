.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;
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
    name = "b"
.end annotation


# instance fields
.field public a:LNi/a;

.field public b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;


# direct methods
.method public constructor <init>(LNi/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->a:LNi/a;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->a:LNi/a;

    invoke-virtual {v0, p1, p2}, LNi/a;->d(ZLBi/k;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->a:LNi/a;

    invoke-virtual {v0}, LNi/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->a:LNi/a;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;->d()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/4 v2, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, LNi/a;->e([BII[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;->c()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;->c()V

    throw p1
.end method

.method public d()LBi/f;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not applicable for FPE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e([BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "AAD is not supported in the current mode."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method public g(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public i(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;->b:Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$a;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
