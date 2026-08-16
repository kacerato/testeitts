.class public Lmi/c;
.super Lli/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;LXi/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p6}, Lorg/bouncycastle/crypto/util/w;->a(LXi/c;)Lhi/h0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V

    return-void
.end method

.method public constructor <init>(Lli/h;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;LXi/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lli/h;->l()Lfi/d;

    move-result-object v1

    invoke-static {p6}, Lorg/bouncycastle/crypto/util/w;->a(LXi/c;)Lhi/h0;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lli/n;-><init>(Lfi/d;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lfi/d;Lhi/h0;)V

    return-void
.end method
