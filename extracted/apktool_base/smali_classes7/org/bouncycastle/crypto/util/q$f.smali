.class public Lorg/bouncycastle/crypto/util/q$f;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 4

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    invoke-virtual {v0}, Lki/j;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object p2

    check-cast p2, Loh/x;

    invoke-static {p2}, LJi/a;->l(Loh/x;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lki/e;->d(Loh/x;)Lki/l;

    move-result-object v0

    :cond_0
    new-instance v1, LXi/K;

    invoke-direct {v1, p2, v0}, LXi/K;-><init>(Loh/x;Lki/l;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, LXi/G;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object p2

    invoke-static {p2}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object p2

    new-instance v1, LXi/G;

    invoke-direct {v1, p2}, LXi/G;-><init>(Lki/l;)V

    :goto_0
    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    new-instance p2, Loh/C0;

    invoke-direct {p2, p1}, Loh/C0;-><init>([B)V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    array-length v2, p1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_4

    aget-byte v0, p1, v3

    const/4 v2, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    new-instance v0, Lki/q;

    invoke-direct {v0}, Lki/q;-><init>()V

    invoke-virtual {v1}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lki/q;->a(Ljk/e;)I

    move-result v0

    array-length v3, p1

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_4

    :try_start_0
    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    new-instance p1, Lki/n;

    invoke-virtual {v1}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lki/n;-><init>(Ljk/e;Loh/y;)V

    new-instance p2, LXi/M;

    invoke-virtual {p1}, Lki/n;->u()Ljk/i;

    move-result-object p1

    invoke-direct {p2, p1, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object p2
.end method
