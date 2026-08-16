.class public Lorg/bouncycastle/openssl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lli/h;

.field public final b:Lorg/bouncycastle/openssl/a;


# direct methods
.method public constructor <init>(Lli/h;Lorg/bouncycastle/openssl/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/m;->a:Lli/h;

    iput-object p2, p0, Lorg/bouncycastle/openssl/m;->b:Lorg/bouncycastle/openssl/a;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/r;

    invoke-direct {v0, p1}, Loh/r;-><init>([B)V

    new-instance p1, Lli/h;

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lli/h;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/openssl/m;->a:Lli/h;

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/openssl/a;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/openssl/a;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/openssl/m;->b:Lorg/bouncycastle/openssl/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/openssl/m;->b:Lorg/bouncycastle/openssl/a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lli/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/m;->a:Lli/h;

    return-object v0
.end method

.method public b()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openssl/m;->a:Lli/h;

    invoke-virtual {v0}, Lli/h;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openssl/m;->b:Lorg/bouncycastle/openssl/a;

    invoke-virtual {v1}, Lorg/bouncycastle/openssl/a;->d()Loh/E;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/bouncycastle/openssl/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/m;->b:Lorg/bouncycastle/openssl/a;

    return-object v0
.end method
