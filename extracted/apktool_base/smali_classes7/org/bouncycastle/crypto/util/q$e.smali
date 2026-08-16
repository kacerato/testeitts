.class public Lorg/bouncycastle/crypto/util/q$e;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Ldi/d;->y(Ljava/lang/Object;)Ldi/d;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    check-cast p1, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    sget-object v1, Ldi/g;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/util/q$e;->b([B)V

    :cond_0
    invoke-virtual {p2}, Ldi/d;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ldi/d;->z()Loh/x;

    move-result-object p2

    invoke-static {p2}, Ldi/c;->a(Loh/x;)LXi/G;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ldi/d;->x()Ldi/b;

    move-result-object p2

    invoke-virtual {p2}, Ldi/b;->v()[B

    move-result-object v2

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/util/q$e;->b([B)V

    :cond_2
    new-instance v10, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v10, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p2}, Ldi/b;->x()Ldi/a;

    move-result-object v2

    new-instance v3, Ljk/e$e;

    invoke-virtual {v2}, Ldi/a;->z()I

    move-result v5

    invoke-virtual {v2}, Ldi/a;->v()I

    move-result v6

    invoke-virtual {v2}, Ldi/a;->x()I

    move-result v7

    invoke-virtual {v2}, Ldi/a;->y()I

    move-result v8

    invoke-virtual {p2}, Ldi/b;->u()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Ldi/b;->y()[B

    move-result-object v2

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/util/q$e;->b([B)V

    :cond_3
    invoke-static {v3, v2}, Ldi/e;->a(Ljk/e;[B)Ljk/i;

    move-result-object v0

    new-instance v1, LXi/G;

    invoke-virtual {p2}, Ldi/b;->A()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v1, v3, v0, p2}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;)V

    move-object p2, v1

    :goto_0
    invoke-virtual {p2}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-static {v0, p1}, Ldi/e;->a(Ljk/e;[B)Ljk/i;

    move-result-object p1

    new-instance v0, LXi/M;

    invoke-direct {v0, p1, p2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering DSTU public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
