.class public LGj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;[B)LFk/j0;
    .locals 7

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    sget-object v0, LZh/d;->H:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance p0, LFk/j0;

    new-instance v0, LFk/m;

    new-instance v4, LFk/k;

    new-instance v5, Loh/C0;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v6

    invoke-virtual {v6}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Loh/C0;-><init>([B)V

    invoke-direct {v4, v3, v5}, LFk/k;-><init>(ILoh/g;)V

    new-instance v5, Loh/C0;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v5, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v4, v5}, LFk/m;-><init>(LFk/k;Loh/y;)V

    invoke-direct {p0, v3, v0}, LFk/j0;-><init>(ILoh/g;)V

    return-object p0

    :cond_0
    sget-object v0, Lbi/b;->u:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LFk/j0;

    new-instance v0, LFk/m;

    new-instance v4, LFk/k;

    new-instance v5, Loh/C0;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v6

    invoke-virtual {v6}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Loh/C0;-><init>([B)V

    invoke-direct {v4, v3, v5}, LFk/k;-><init>(ILoh/g;)V

    new-instance v3, Loh/C0;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v4, v3}, LFk/m;-><init>(LFk/k;Loh/y;)V

    invoke-direct {p0, v1, v0}, LFk/j0;-><init>(ILoh/g;)V

    return-object p0

    :cond_1
    sget-object v0, Lbi/b;->y:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, LFk/j0;

    new-instance v0, LFk/n;

    new-instance v2, LFk/l;

    new-instance v4, Loh/C0;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v5

    invoke-virtual {v5}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v5

    const/16 v6, 0x30

    invoke-static {v6, v5}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Loh/C0;-><init>([B)V

    invoke-direct {v2, v3, v4}, LFk/l;-><init>(ILoh/g;)V

    new-instance v3, Loh/C0;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v2, v3}, LFk/n;-><init>(LFk/l;Loh/y;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, LFk/j0;-><init>(ILoh/g;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown curveID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(LFk/j0;)[B
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, LFk/j0;->x()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LFk/j0;->x()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LFk/j0;->z()Loh/g;

    move-result-object p0

    invoke-static {p0}, LFk/n;->v(Ljava/lang/Object;)LFk/n;

    move-result-object p0

    invoke-virtual {p0}, LFk/n;->x()LFk/l;

    move-result-object v1

    invoke-virtual {v1}, LFk/l;->B()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-virtual {p0}, LFk/n;->y()Loh/y;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, LFk/j0;->z()Loh/g;

    move-result-object p0

    invoke-static {p0}, LFk/m;->v(Ljava/lang/Object;)LFk/m;

    move-result-object p0

    invoke-virtual {p0}, LFk/m;->x()LFk/k;

    move-result-object v1

    invoke-virtual {v1}, LFk/k;->D()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-virtual {p0}, LFk/m;->y()Loh/y;

    move-result-object p0

    goto :goto_0

    :goto_2
    :try_start_0
    new-instance v2, Loh/G0;

    new-instance v3, Loh/s;

    invoke-static {v1}, Lorg/bouncycastle/util/b;->i([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Loh/s;

    invoke-static {p0}, Lorg/bouncycastle/util/b;->i([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    const/4 p0, 0x2

    new-array p0, p0, [Loh/g;

    const/4 v4, 0x0

    aput-object v3, p0, v4

    aput-object v1, p0, v0

    invoke-direct {v2, p0}, Loh/G0;-><init>([Loh/g;)V

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "der encoding r & s"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
