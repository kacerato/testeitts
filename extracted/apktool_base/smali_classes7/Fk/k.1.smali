.class public LFk/k;
.super LFk/j;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LFk/j;-><init>()V

    iput p1, p0, LFk/k;->b:I

    iput-object p2, p0, LFk/k;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, LFk/j;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LFk/k;->b:I

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LFk/L;->v(Ljava/lang/Object;)LFk/L;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LFk/k;->c:Loh/g;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/t;->F(Ljava/lang/Object;)Loh/t;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static A([B)LFk/k;
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    invoke-static {p0, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, LFk/k;

    new-instance v0, Loh/C0;

    invoke-direct {v0, v4}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v3, v0}, LFk/k;-><init>(ILoh/g;)V

    return-object p0

    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    invoke-static {p0, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, LFk/k;

    new-instance v0, Loh/C0;

    invoke-direct {v0, v4}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v3, v0}, LFk/k;-><init>(ILoh/g;)V

    return-object p0

    :cond_1
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    new-instance v0, LFk/k;

    new-instance v1, LFk/L;

    new-instance v4, Loh/C0;

    const/16 v5, 0x22

    invoke-static {p0, v2, v5}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    invoke-direct {v4, v2}, Loh/C0;-><init>([B)V

    new-instance v2, Loh/C0;

    const/16 v6, 0x42

    invoke-static {p0, v5, v6}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p0

    invoke-direct {v2, p0}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v4, v2}, LFk/L;-><init>(Loh/y;Loh/y;)V

    invoke-direct {v0, v3, v1}, LFk/k;-><init>(ILoh/g;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static B()LFk/k;
    .locals 3

    new-instance v0, LFk/k;

    const/4 v1, 0x1

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static E(Ljava/lang/Object;)LFk/k;
    .locals 2

    instance-of v0, p0, LFk/k;

    if-eqz v0, :cond_0

    check-cast p0, LFk/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/k;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LFk/k;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static F(LFk/L;)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static G(Ljava/math/BigInteger;Ljava/math/BigInteger;)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    invoke-static {}, LFk/L;->u()LFk/L$a;

    move-result-object v1

    invoke-virtual {v1, p0}, LFk/L$a;->b(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object p0

    invoke-virtual {p0, p1}, LFk/L$a;->e(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/L$a;->a()LFk/L;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v0, p1, p0}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static H(Loh/y;)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static I([B)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static v(Loh/y;)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static w([B)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static x(Loh/y;)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static y([B)LFk/k;
    .locals 2

    new-instance v0, LFk/k;

    new-instance v1, Loh/C0;

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Loh/C0;-><init>([B)V

    const/4 p0, 0x3

    invoke-direct {v0, p0, v1}, LFk/k;-><init>(ILoh/g;)V

    return-object v0
.end method


# virtual methods
.method public C()I
    .locals 1

    iget v0, p0, LFk/k;->b:I

    return v0
.end method

.method public D()Loh/g;
    .locals 1

    iget-object v0, p0, LFk/k;->c:Loh/g;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LFk/k;->b:I

    iget-object v2, p0, LFk/k;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public u()[B
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LFk/k;->b:I

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LFk/k;->c:Loh/g;

    invoke-static {v2}, LFk/L;->v(Ljava/lang/Object;)LFk/L;

    move-result-object v2

    invoke-virtual {v2}, LFk/L;->x()Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    invoke-virtual {v2}, LFk/L;->y()Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    new-array v0, v0, [B

    aput-byte v3, v0, v1

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown point choice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, LFk/k;->c:Loh/g;

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    array-length v4, v2

    add-int/2addr v4, v0

    new-array v4, v4, [B

    aput-byte v3, v4, v1

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object v0, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, LFk/k;->c:Loh/g;

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    array-length v4, v2

    add-int/2addr v4, v0

    new-array v4, v4, [B

    aput-byte v3, v4, v1

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x Only not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(Ljk/i;)LFk/k;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljk/i;->l(Z)[B

    move-result-object p1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v4, v2, [B

    invoke-static {p1, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, LFk/k;

    new-instance v0, Loh/C0;

    invoke-direct {v0, v4}, Loh/C0;-><init>([B)V

    invoke-direct {p1, v3, v0}, LFk/k;-><init>(ILoh/g;)V

    return-object p1
.end method
