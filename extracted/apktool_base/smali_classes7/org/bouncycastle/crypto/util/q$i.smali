.class public Lorg/bouncycastle/crypto/util/q$i;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$i;-><init>()V

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

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LBj/a;->v(Ljava/lang/Object;)LBj/a;

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/s;

    new-instance v0, LXi/Y;

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, LXi/W;

    invoke-virtual {p2}, LBj/a;->x()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, LBj/a;->u()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v1, v2, p2}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, LXi/Y;-><init>(Ljava/math/BigInteger;LXi/W;)V

    return-object v0
.end method
