.class public Lorg/bouncycastle/crypto/util/q$j;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 4

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object p2

    invoke-virtual {p2}, Lyh/g;->y()Loh/x;

    move-result-object v0

    new-instance v1, LXi/H;

    new-instance v2, LXi/K;

    invoke-static {v0}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object v3

    invoke-direct {v2, v0, v3}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-virtual {p2}, Lyh/g;->u()Loh/x;

    move-result-object v3

    invoke-virtual {p2}, Lyh/g;->v()Loh/x;

    move-result-object p2

    invoke-direct {v1, v2, v0, v3, p2}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    array-length p2, p1

    const/16 v0, 0x40

    if-ne p2, v0, :cond_1

    const/16 p2, 0x41

    new-array p2, p2, [B

    const/4 v0, 0x0

    const/4 v2, 0x4

    aput-byte v2, p2, v0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x20

    if-gt v0, v2, :cond_0

    rsub-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, p2, v0

    add-int/lit8 v2, v0, 0x20

    rsub-int/lit8 v3, v0, 0x40

    aget-byte v3, p1, v3

    aput-byte v3, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljk/e;->l([B)Ljk/i;

    move-result-object p1

    new-instance p2, LXi/M;

    invoke-direct {p2, p1, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid length for GOST3410_2001 public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering GOST3410_2001 public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
