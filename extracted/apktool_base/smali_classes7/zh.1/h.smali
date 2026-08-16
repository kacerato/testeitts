.class public Lzh/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x4


# instance fields
.field public a:I

.field public final b:Lzh/m;

.field public c:Lzh/g;

.field public d:Ljava/math/BigInteger;

.field public e:Lzh/j;

.field public f:Lhi/F;

.field public g:Lhi/W;

.field public h:Lhi/F;

.field public i:Lhi/F;

.field public j:Lhi/C;


# direct methods
.method public constructor <init>(Lzh/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lzh/h;->a:I

    iput-object p1, p0, Lzh/h;->c:Lzh/g;

    invoke-virtual {p1}, Lzh/g;->E()Lzh/m;

    move-result-object v0

    iput-object v0, p0, Lzh/h;->b:Lzh/m;

    invoke-virtual {p1}, Lzh/g;->F()I

    move-result v0

    iput v0, p0, Lzh/h;->a:I

    invoke-virtual {p1}, Lzh/g;->A()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lzh/h;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lzh/g;->C()Lzh/j;

    move-result-object v0

    iput-object v0, p0, Lzh/h;->e:Lzh/j;

    invoke-virtual {p1}, Lzh/g;->B()Lhi/W;

    move-result-object v0

    iput-object v0, p0, Lzh/h;->g:Lhi/W;

    invoke-virtual {p1}, Lzh/g;->u()Lhi/F;

    move-result-object v0

    iput-object v0, p0, Lzh/h;->h:Lhi/F;

    invoke-virtual {p1}, Lzh/g;->v()Lhi/F;

    move-result-object p1

    iput-object p1, p0, Lzh/h;->i:Lhi/F;

    return-void
.end method

.method public constructor <init>(Lzh/m;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lzh/h;->a:I

    iput-object p1, p0, Lzh/h;->b:Lzh/m;

    return-void
.end method


# virtual methods
.method public a()Lzh/g;
    .locals 14

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    new-instance v5, Loh/h;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Loh/h;-><init>(I)V

    iget v6, p0, Lzh/h;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    new-instance v6, Loh/s;

    iget v8, p0, Lzh/h;->a:I

    int-to-long v8, v8

    invoke-direct {v6, v8, v9}, Loh/s;-><init>(J)V

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v6, p0, Lzh/h;->b:Lzh/m;

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    iget-object v6, p0, Lzh/h;->d:Ljava/math/BigInteger;

    if-eqz v6, :cond_1

    new-instance v6, Loh/s;

    iget-object v8, p0, Lzh/h;->d:Ljava/math/BigInteger;

    invoke-direct {v6, v8}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v6, p0, Lzh/h;->e:Lzh/j;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    :cond_2
    filled-new-array {v2, v7, v1, v4, v3}, [I

    move-result-object v6

    iget-object v8, p0, Lzh/h;->f:Lhi/F;

    iget-object v9, p0, Lzh/h;->g:Lhi/W;

    iget-object v10, p0, Lzh/h;->h:Lhi/F;

    iget-object v11, p0, Lzh/h;->i:Lhi/F;

    iget-object v12, p0, Lzh/h;->j:Lhi/C;

    new-array v13, v0, [Loh/g;

    aput-object v8, v13, v2

    aput-object v9, v13, v7

    aput-object v10, v13, v1

    aput-object v11, v13, v4

    aput-object v12, v13, v3

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    aget v3, v6, v1

    aget-object v4, v13, v1

    if-eqz v4, :cond_3

    new-instance v8, Loh/K0;

    invoke-direct {v8, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v5, v8}, Loh/h;->a(Loh/g;)V

    :cond_3
    add-int/2addr v1, v7

    goto :goto_0

    :cond_4
    new-instance v0, Loh/G0;

    invoke-direct {v0, v5}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v0}, Lzh/g;->y(Ljava/lang/Object;)Lzh/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Lhi/E;)V
    .locals 1

    new-instance v0, Lhi/F;

    invoke-direct {v0, p1}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p0, v0}, Lzh/h;->c(Lhi/F;)V

    return-void
.end method

.method public c(Lhi/F;)V
    .locals 0

    iput-object p1, p0, Lzh/h;->h:Lhi/F;

    return-void
.end method

.method public d(Lhi/E;)V
    .locals 1

    new-instance v0, Lhi/F;

    invoke-direct {v0, p1}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p0, v0}, Lzh/h;->e(Lhi/F;)V

    return-void
.end method

.method public e(Lhi/F;)V
    .locals 0

    iput-object p1, p0, Lzh/h;->i:Lhi/F;

    return-void
.end method

.method public f(Lhi/C;)V
    .locals 1

    iget-object v0, p0, Lzh/h;->c:Lzh/g;

    if-nez v0, :cond_0

    iput-object p1, p0, Lzh/h;->j:Lhi/C;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change extensions in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/math/BigInteger;)V
    .locals 5

    iget-object v0, p0, Lzh/h;->c:Lzh/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzh/g;->A()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lzh/h;->d:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzh/h;->c:Lzh/g;

    invoke-virtual {v0}, Lzh/g;->A()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lzh/h;->d:Ljava/math/BigInteger;

    :cond_1
    :goto_0
    iput-object p1, p0, Lzh/h;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public h(Lhi/W;)V
    .locals 1

    iget-object v0, p0, Lzh/h;->c:Lzh/g;

    if-nez v0, :cond_0

    iput-object p1, p0, Lzh/h;->g:Lhi/W;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change request policy in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lzh/j;)V
    .locals 1

    iget-object v0, p0, Lzh/h;->c:Lzh/g;

    if-nez v0, :cond_0

    iput-object p1, p0, Lzh/h;->e:Lzh/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change request time in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lhi/E;)V
    .locals 1

    new-instance v0, Lhi/F;

    invoke-direct {v0, p1}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p0, v0}, Lzh/h;->k(Lhi/F;)V

    return-void
.end method

.method public k(Lhi/F;)V
    .locals 0

    iput-object p1, p0, Lzh/h;->f:Lhi/F;

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lzh/h;->c:Lzh/g;

    if-nez v0, :cond_0

    iput p1, p0, Lzh/h;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change version in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
