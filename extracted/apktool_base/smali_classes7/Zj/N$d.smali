.class public LZj/N$d;
.super LZj/N$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:LBi/I;


# direct methods
.method public constructor <init>(Ljava/lang/String;LBi/I;)V
    .locals 0

    invoke-direct {p0, p1}, LZj/N$h;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, LZj/N$d;->d:LBi/I;

    return-void
.end method


# virtual methods
.method public final a(Lck/B;LBi/I;)[B
    .locals 2

    invoke-virtual {p1}, Lck/B;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Lck/B;->d()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    invoke-virtual {p1}, Lck/B;->c()[B

    move-result-object v1

    invoke-virtual {p1}, Lck/B;->b()I

    move-result p1

    new-array p1, p1, [B

    invoke-static {p2, v1, v0, p1}, LZj/N;->c(LBi/I;[B[B[B)V

    return-object p1
.end method

.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lck/B;

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Lck/B;

    iget-object v1, p0, LZj/N$d;->d:LBi/I;

    invoke-virtual {p0, p1, v1}, LZj/N$d;->a(Lck/B;LBi/I;)[B

    move-result-object p1

    iget-object v1, p0, Lak/e;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
