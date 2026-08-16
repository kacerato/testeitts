.class public Lcl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x20

.field public static final t:I = 0x100

.field public static final u:I = 0xd01

.field public static final v:I = 0xf301

.field public static final w:I = 0x20

.field public static final x:I = 0x20

.field public static final y:I = 0x180

.field public static final z:I = 0x2


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:Lcl/c;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:Lcl/p;


# direct methods
.method public constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcl/b;->c:I

    const/16 v0, 0x80

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x20

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcl/b;->g:I

    const/16 v0, 0xa0

    iput v0, p0, Lcl/b;->e:I

    mul-int/lit16 v0, p1, 0x160

    :goto_0
    iput v0, p0, Lcl/b;->f:I

    iput v3, p0, Lcl/b;->r:I

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "K: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported for Crystals Kyber"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iput v2, p0, Lcl/b;->g:I

    :goto_1
    iput v0, p0, Lcl/b;->e:I

    mul-int/lit16 v0, p1, 0x140

    goto :goto_0

    :cond_2
    iput v1, p0, Lcl/b;->g:I

    goto :goto_1

    :goto_2
    mul-int/lit16 p1, p1, 0x180

    iput p1, p0, Lcl/b;->d:I

    add-int/lit8 v0, p1, 0x20

    iput v0, p0, Lcl/b;->h:I

    iput p1, p0, Lcl/b;->i:I

    iget v1, p0, Lcl/b;->f:I

    iget v2, p0, Lcl/b;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcl/b;->j:I

    iput v0, p0, Lcl/b;->k:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcl/b;->l:I

    iput v1, p0, Lcl/b;->m:I

    iput v3, p0, Lcl/b;->n:I

    iput p1, p0, Lcl/b;->o:I

    iput v0, p0, Lcl/b;->p:I

    iput v1, p0, Lcl/b;->q:I

    if-eqz p2, :cond_3

    new-instance p1, Lcl/p$a;

    invoke-direct {p1}, Lcl/p$a;-><init>()V

    :goto_3
    iput-object p1, p0, Lcl/b;->s:Lcl/p;

    goto :goto_4

    :cond_3
    new-instance p1, Lcl/p$b;

    invoke-direct {p1}, Lcl/p$b;-><init>()V

    goto :goto_3

    :goto_4
    new-instance p1, Lcl/c;

    invoke-direct {p1, p0}, Lcl/c;-><init>(Lcl/b;)V

    iput-object p1, p0, Lcl/b;->b:Lcl/c;

    return-void
.end method

.method public static i()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static k()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public final a([B[BIZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public b()[[B
    .locals 7

    iget-object v0, p0, Lcl/b;->b:Lcl/c;

    invoke-virtual {v0}, Lcl/c;->c()[[B

    move-result-object v0

    iget v1, p0, Lcl/b;->i:I

    new-array v2, v1, [B

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    new-array v3, v1, [B

    iget-object v5, p0, Lcl/b;->s:Lcl/p;

    aget-object v6, v0, v4

    invoke-virtual {v5, v3, v6, v4}, Lcl/p;->b([B[BI)V

    new-array v1, v1, [B

    iget-object v5, p0, Lcl/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v5, p0, Lcl/b;->h:I

    new-array v6, v5, [B

    aget-object v0, v0, v4

    invoke-static {v0, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, -0x20

    invoke-static {v6, v4, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    invoke-static {v6, v0, v5}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    filled-new-array {v4, v0, v2, v3, v1}, [[B

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcl/b;->n:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcl/b;->q:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcl/b;->p:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcl/b;->o:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcl/b;->m:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcl/b;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcl/b;->j:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcl/b;->h:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcl/b;->i:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcl/b;->c:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcl/b;->e:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcl/b;->d:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcl/b;->f:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcl/b;->k:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcl/b;->l:I

    return v0
.end method

.method public t([B)V
    .locals 1

    iget-object v0, p0, Lcl/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public u()Lcl/p;
    .locals 1

    iget-object v0, p0, Lcl/b;->s:Lcl/p;

    return-object v0
.end method

.method public v(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcl/b;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public w([B[B)[B
    .locals 7

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    iget v3, p0, Lcl/b;->i:I

    array-length v4, p2

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v3

    iget-object v4, p0, Lcl/b;->b:Lcl/c;

    invoke-virtual {v4, p1, p2}, Lcl/c;->a([B[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v4, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcl/b;->l:I

    sub-int/2addr v4, v0

    invoke-static {p2, v4, v1, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcl/b;->s:Lcl/p;

    invoke-virtual {v4, v2, v1}, Lcl/p;->a([B[B)V

    iget-object v4, p0, Lcl/b;->b:Lcl/c;

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-static {v2, v6, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-virtual {v4, v1, v3, v0}, Lcl/c;->b([B[B[B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcl/b;->s:Lcl/p;

    invoke-virtual {v1, v2, p1, v6}, Lcl/p;->b([B[BI)V

    iget p1, p0, Lcl/b;->l:I

    add-int/lit8 v1, p1, -0x20

    invoke-static {p2, v1, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {p0, v2, p1, v6, v0}, Lcl/b;->a([B[BIZ)V

    iget p1, p0, Lcl/b;->r:I

    invoke-static {v2, v5, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public x([B)[[B
    .locals 6

    array-length v0, p1

    iget v1, p0, Lcl/b;->h:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcl/n;

    invoke-direct {v0, p0}, Lcl/n;-><init>(Lcl/b;)V

    iget-object v1, p0, Lcl/b;->b:Lcl/c;

    invoke-virtual {v1, v0, p1}, Lcl/c;->j(Lcl/n;[B)[B

    move-result-object v1

    iget-object v2, p0, Lcl/b;->b:Lcl/c;

    invoke-virtual {v2, v0, v1}, Lcl/c;->f(Lcl/n;[B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    iget-object v5, p0, Lcl/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcl/b;->s:Lcl/p;

    invoke-virtual {v4, v1, p1, v3}, Lcl/p;->b([B[BI)V

    iget-object v4, p0, Lcl/b;->s:Lcl/p;

    invoke-virtual {v4, v2, v1}, Lcl/p;->a([B[B)V

    iget-object v4, p0, Lcl/b;->b:Lcl/c;

    invoke-static {v1, v5, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-virtual {v4, v1, p1, v0}, Lcl/c;->b([B[B[B)[B

    move-result-object p1

    iget v0, p0, Lcl/b;->r:I

    new-array v1, v0, [B

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v1, p1}, [[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input validation: Modulus check failed for ml-kem encapsulation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input validation Error: Type check failed for ml-kem encapsulation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
