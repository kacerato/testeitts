.class public LMl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;)LBi/y;
    .locals 3

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, LIi/L;

    invoke-direct {p0}, LIi/L;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, LSh/d;->e:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LIi/O;

    invoke-direct {p0}, LIi/O;-><init>()V

    return-object p0

    :cond_1
    sget-object v0, LSh/d;->m:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, LIi/Q;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, LIi/Q;-><init>(I)V

    return-object p0

    :cond_2
    sget-object v0, LSh/d;->n:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, LIi/Q;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, LIi/Q;-><init>(I)V

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lck/r;[B)LBi/Z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lck/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LMl/g;->d(Ljava/lang/String;)LBi/Z;

    move-result-object v0

    invoke-virtual {p0}, Lck/r;->a()Lhi/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, LXi/o0;

    invoke-virtual {p0}, Lck/r;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    invoke-direct {v1, p1, v2, p0}, LXi/o0;-><init>([BII)V

    :goto_0
    invoke-interface {v0, v2, v1}, LBi/Z;->a(ZLBi/k;)V

    goto :goto_1

    :cond_0
    new-instance v1, LXi/o0;

    invoke-static {p0, p1}, LMl/g;->e(Lck/r;[B)[B

    move-result-object p0

    invoke-direct {v1, p0}, LXi/o0;-><init>([B)V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static c(Lck/r;[B)LBi/Z;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lck/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LMl/g;->d(Ljava/lang/String;)LBi/Z;

    move-result-object v0

    invoke-virtual {p0}, Lck/r;->a()Lhi/b;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, LXi/o0;

    invoke-virtual {p0}, Lck/r;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    const/4 v3, 0x0

    invoke-static {p1, v3, p0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, LXi/o0;-><init>([B)V

    :goto_0
    invoke-interface {v0, v2, v1}, LBi/Z;->a(ZLBi/k;)V

    goto :goto_1

    :cond_0
    new-instance v1, LXi/o0;

    invoke-static {p0, p1}, LMl/g;->e(Lck/r;[B)[B

    move-result-object p0

    invoke-direct {v1, p0}, LXi/o0;-><init>([B)V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static d(Ljava/lang/String;)LBi/Z;
    .locals 3

    const-string v0, "AESWRAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "ARIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LLi/c0;

    new-instance v0, LLi/f;

    invoke-direct {v0}, LLi/f;-><init>()V

    invoke-direct {p0, v0}, LLi/c0;-><init>(LBi/f;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "Camellia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, LLi/c0;

    new-instance v0, LLi/m;

    invoke-direct {v0}, LLi/m;-><init>()V

    invoke-direct {p0, v0}, LLi/c0;-><init>(LBi/f;)V

    goto :goto_1

    :cond_2
    const-string v0, "SEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, LLi/c0;

    new-instance v0, LLi/j0;

    invoke-direct {v0}, LLi/j0;-><init>()V

    invoke-direct {p0, v0}, LLi/c0;-><init>(LBi/f;)V

    goto :goto_1

    :cond_3
    const-string v0, "AES-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, LLi/d0;

    new-instance v0, LLi/a;

    invoke-direct {v0}, LLi/a;-><init>()V

    invoke-direct {p0, v0}, LLi/d0;-><init>(LBi/f;)V

    goto :goto_1

    :cond_4
    const-string v0, "Camellia-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, LLi/d0;

    new-instance v0, LLi/m;

    invoke-direct {v0}, LLi/m;-><init>()V

    invoke-direct {p0, v0}, LLi/d0;-><init>(LBi/f;)V

    goto :goto_1

    :cond_5
    const-string v0, "ARIA-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, LLi/d0;

    new-instance v0, LLi/f;

    invoke-direct {v0}, LLi/f;-><init>()V

    invoke-direct {p0, v0}, LLi/d0;-><init>(LBi/f;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    new-instance p0, LLi/c0;

    new-instance v0, LLi/a;

    invoke-direct {v0}, LLi/a;-><init>()V

    invoke-direct {p0, v0}, LLi/c0;-><init>(LBi/f;)V

    :goto_1
    return-object p0
.end method

.method public static e(Lck/r;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lck/r;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {p0}, Lck/r;->d()[B

    move-result-object v1

    invoke-virtual {p0}, Lck/r;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    new-array v2, p0, [B

    sget-object v3, Lki/r;->O6:Loh/x;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Loh/B;->A(Loh/B;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    new-instance v3, LOi/z;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, LMl/g;->a(Loh/x;)LBi/y;

    move-result-object v0

    invoke-direct {v3, v0}, LOi/z;-><init>(LBi/y;)V

    new-instance v0, LXi/n0;

    invoke-direct {v0, p1, v1}, LXi/n0;-><init>([B[B)V

    :goto_0
    invoke-interface {v3, v0}, LBi/w;->c(LBi/x;)V

    invoke-interface {v3, v2, v4, p0}, LBi/w;->a([BII)I

    goto :goto_1

    :cond_0
    sget-object v3, Lki/r;->P6:Loh/x;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v3, v5}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    new-instance v3, LEi/a;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, LMl/g;->a(Loh/x;)LBi/y;

    move-result-object v0

    invoke-direct {v3, v0}, LEi/a;-><init>(LBi/y;)V

    new-instance v0, LXi/n0;

    invoke-direct {v0, p1, v1}, LXi/n0;-><init>([B[B)V

    goto :goto_0

    :cond_1
    sget-object v3, LSh/d;->n:Loh/x;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v3, v5}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, LIi/Q;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, LIi/Q;-><init>(I)V

    array-length v3, p1

    invoke-interface {v0, p1, v4, v3}, LBi/y;->update([BII)V

    array-length p1, v1

    invoke-interface {v0, v1, v4, p1}, LBi/y;->update([BII)V

    invoke-interface {v0, v2, v4, p0}, LBi/a0;->e([BII)I

    :goto_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized KDF: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
