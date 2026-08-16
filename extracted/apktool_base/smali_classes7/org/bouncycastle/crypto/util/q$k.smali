.class public Lorg/bouncycastle/crypto/util/q$k;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 6

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object p2

    invoke-virtual {p2}, Lyh/g;->y()Loh/x;

    move-result-object v1

    new-instance v2, LXi/H;

    new-instance v3, LXi/K;

    invoke-static {v1}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object v4

    invoke-direct {v3, v1, v4}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-virtual {p2}, Lyh/g;->u()Loh/x;

    move-result-object v4

    invoke-virtual {p2}, Lyh/g;->v()Loh/x;

    move-result-object p2

    invoke-direct {v2, v3, v1, v4, p2}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p2, LCj/a;->h:Loh/x;

    invoke-virtual {v0, p2}, Loh/B;->A(Loh/B;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x40

    goto :goto_0

    :cond_0
    const/16 p2, 0x20

    :goto_0
    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    array-length v1, p1

    if-ne v1, v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    :goto_1
    if-gt v3, p2, :cond_1

    sub-int v4, p2, v3

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    add-int v4, v3, p2

    sub-int v5, v0, v3

    aget-byte v5, p1, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object p1

    new-instance p2, LXi/M;

    invoke-direct {p2, p1, v2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid length for GOST3410_2012 public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering GOST3410_2012 public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
