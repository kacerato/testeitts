.class public Lorg/bouncycastle/pqc/crypto/lms/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:S = -0x7d7es

.field public static final b:S = -0x7c7ds


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/v;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/A;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result v1

    shl-int v7, v0, v1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/v;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[BI[B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "root seed is less than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/A;->d()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lorg/bouncycastle/pqc/crypto/lms/o;)Lorg/bouncycastle/pqc/crypto/lms/x;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->g()Lorg/bouncycastle/pqc/crypto/lms/k;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->k()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/B;->c(Lorg/bouncycastle/pqc/crypto/lms/k;[B[B)Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/x;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->g()Lorg/bouncycastle/pqc/crypto/lms/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/k;->e()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->l()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/o;->d()[[B

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Lorg/bouncycastle/pqc/crypto/lms/x;-><init>(ILorg/bouncycastle/pqc/crypto/lms/m;Lorg/bouncycastle/pqc/crypto/lms/A;[[B)V

    return-object v1
.end method

.method public static c(Lorg/bouncycastle/pqc/crypto/lms/v;[B)Lorg/bouncycastle/pqc/crypto/lms/x;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->T0()Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/o;->update([BII)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/n;->b(Lorg/bouncycastle/pqc/crypto/lms/o;)Lorg/bouncycastle/pqc/crypto/lms/x;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/bouncycastle/pqc/crypto/lms/w;Lorg/bouncycastle/pqc/crypto/lms/o;)Z
    .locals 10

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/o;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/x;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/x;->c()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/x;->e()[[B

    move-result-object v3

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/B;->g(Lorg/bouncycastle/pqc/crypto/lms/o;)[B

    move-result-object p1

    const/4 v4, 0x1

    shl-int v2, v4, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/x;->d()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/w;->e()[B

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/b;->d(Lorg/bouncycastle/pqc/crypto/lms/A;)LBi/y;

    move-result-object v1

    invoke-interface {v1}, LBi/y;->f()I

    move-result v5

    new-array v6, v5, [B

    array-length v7, v0

    const/4 v8, 0x0

    invoke-interface {v1, v0, v8, v7}, LBi/y;->update([BII)V

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 v7, -0x7d7e

    invoke-static {v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    array-length v7, p1

    invoke-interface {v1, p1, v8, v7}, LBi/y;->update([BII)V

    invoke-interface {v1, v6, v8}, LBi/y;->c([BI)I

    move p1, v8

    :cond_0
    if-le v2, v4, :cond_2

    and-int/lit8 v7, v2, 0x1

    const/16 v9, -0x7c7d

    if-ne v7, v4, :cond_1

    array-length v7, v0

    invoke-interface {v1, v0, v8, v7}, LBi/y;->update([BII)V

    div-int/lit8 v7, v2, 0x2

    invoke-static {v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    invoke-static {v9, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    aget-object v7, v3, p1

    array-length v9, v7

    invoke-interface {v1, v7, v8, v9}, LBi/y;->update([BII)V

    invoke-interface {v1, v6, v8, v5}, LBi/y;->update([BII)V

    :goto_0
    invoke-interface {v1, v6, v8}, LBi/y;->c([BI)I

    goto :goto_1

    :cond_1
    array-length v7, v0

    invoke-interface {v1, v0, v8, v7}, LBi/y;->update([BII)V

    div-int/lit8 v7, v2, 0x2

    invoke-static {v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    invoke-static {v9, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    invoke-interface {v1, v6, v8, v5}, LBi/y;->update([BII)V

    aget-object v7, v3, p1

    array-length v9, v7

    invoke-interface {v1, v7, v8, v9}, LBi/y;->update([BII)V

    goto :goto_0

    :goto_1
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 p1, p1, 0x1

    array-length v7, v3

    if-ne p1, v7, :cond_0

    if-le v2, v4, :cond_0

    return v8

    :cond_2
    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/lms/w;->k([B)Z

    move-result p0

    return p0
.end method

.method public static e(Lorg/bouncycastle/pqc/crypto/lms/w;Lorg/bouncycastle/pqc/crypto/lms/x;[B)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/w;->d(Lorg/bouncycastle/pqc/crypto/lms/x;)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/n;->d(Lorg/bouncycastle/pqc/crypto/lms/w;Lorg/bouncycastle/pqc/crypto/lms/o;)Z

    move-result p0

    return p0
.end method

.method public static f(Lorg/bouncycastle/pqc/crypto/lms/w;[B[B)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/w;->b([B)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/n;->d(Lorg/bouncycastle/pqc/crypto/lms/w;Lorg/bouncycastle/pqc/crypto/lms/o;)Z

    move-result p0

    return p0
.end method
