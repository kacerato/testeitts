.class public Lorg/bouncycastle/crypto/util/q$b;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXh/h;->v(Ljava/lang/Object;)LXh/h;

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/s;

    invoke-virtual {p2}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    new-instance v1, LXi/q;

    invoke-virtual {p2}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3, v0}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance p2, LXi/s;

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1, v1}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object p2
.end method
