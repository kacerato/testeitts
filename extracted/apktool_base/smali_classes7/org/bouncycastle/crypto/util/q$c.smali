.class public Lorg/bouncycastle/crypto/util/q$c;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/q$m;-><init>(Lorg/bouncycastle/crypto/util/q$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p2

    invoke-static {p2}, Lki/b;->u(Ljava/lang/Object;)Lki/b;

    move-result-object p2

    invoke-virtual {p2}, Lki/b;->x()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lki/d;->v(Ljava/lang/Object;)Lki/d;

    move-result-object p1

    invoke-virtual {p1}, Lki/d;->z()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lki/d;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lki/d;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lki/d;->x()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lki/d;->x()Ljava/math/BigInteger;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {p1}, Lki/d;->B()Lki/h;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lki/h;->y()[B

    move-result-object v0

    invoke-virtual {p1}, Lki/h;->x()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v4, LXi/v;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v4, v0, p1}, LXi/v;-><init>([BI)V

    :cond_1
    move-object p1, v4

    new-instance v6, LXi/s;

    new-instance v7, LXi/q;

    move-object v0, v7

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;LXi/v;)V

    invoke-direct {v6, p2, v7}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v6
.end method
