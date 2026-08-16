.class public Lorg/bouncycastle/crypto/util/q$d;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p2

    check-cast p2, Loh/s;

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/u;->v(Ljava/lang/Object;)Lhi/u;

    move-result-object p1

    new-instance v0, LXi/z;

    invoke-virtual {p1}, Lhi/u;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lhi/u;->y()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lhi/u;->u()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, LXi/z;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, LXi/B;

    invoke-virtual {p2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2, v0}, LXi/B;-><init>(Ljava/math/BigInteger;LXi/z;)V

    return-object p1
.end method
