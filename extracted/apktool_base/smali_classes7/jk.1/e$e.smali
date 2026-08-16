.class public Ljk/e$e;
.super Ljk/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final w:I = 0x6


# instance fields
.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljk/i$d;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Ljk/e$b;-><init>(IIII)V

    iput p1, p0, Ljk/e$e;->r:I

    iput p2, p0, Ljk/e$e;->s:I

    iput p3, p0, Ljk/e$e;->t:I

    iput p4, p0, Ljk/e$e;->u:I

    iput-object p7, p0, Ljk/e;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Ljk/e;->e:Ljava/math/BigInteger;

    new-instance p1, Ljk/i$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Ljk/i$d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object p1, p0, Ljk/e$e;->v:Ljk/i$d;

    invoke-virtual {p0, p5}, Ljk/e$e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    iput-object p1, p0, Ljk/e;->b:Ljk/f;

    invoke-virtual {p0, p6}, Ljk/e$e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    iput-object p1, p0, Ljk/e;->c:Ljk/f;

    const/4 p1, 0x6

    iput p1, p0, Ljk/e;->f:I

    return-void
.end method

.method public constructor <init>(IIIILjk/f;Ljk/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Ljk/e$b;-><init>(IIII)V

    iput p1, p0, Ljk/e$e;->r:I

    iput p2, p0, Ljk/e$e;->s:I

    iput p3, p0, Ljk/e$e;->t:I

    iput p4, p0, Ljk/e$e;->u:I

    iput-object p7, p0, Ljk/e;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Ljk/e;->e:Ljava/math/BigInteger;

    new-instance p1, Ljk/i$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Ljk/i$d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object p1, p0, Ljk/e$e;->v:Ljk/i$d;

    iput-object p5, p0, Ljk/e;->b:Ljk/f;

    iput-object p6, p0, Ljk/e;->c:Ljk/f;

    const/4 p1, 0x6

    iput p1, p0, Ljk/e;->f:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v0 .. v8}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static synthetic R(Ljk/e$e;)I
    .locals 0

    iget p0, p0, Ljk/e$e;->r:I

    return p0
.end method


# virtual methods
.method public J(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public S()I
    .locals 1

    iget v0, p0, Ljk/e$e;->s:I

    return v0
.end method

.method public T()I
    .locals 1

    iget v0, p0, Ljk/e$e;->t:I

    return v0
.end method

.method public U()I
    .locals 1

    iget v0, p0, Ljk/e$e;->u:I

    return v0
.end method

.method public V()I
    .locals 1

    iget v0, p0, Ljk/e$e;->r:I

    return v0
.end method

.method public W()Z
    .locals 1

    iget v0, p0, Ljk/e$e;->t:I

    if-nez v0, :cond_0

    iget v0, p0, Ljk/e$e;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Ljk/e;
    .locals 10

    new-instance v9, Ljk/e$e;

    iget v1, p0, Ljk/e$e;->r:I

    iget v2, p0, Ljk/e$e;->s:I

    iget v3, p0, Ljk/e$e;->t:I

    iget v4, p0, Ljk/e$e;->u:I

    iget-object v5, p0, Ljk/e;->b:Ljk/f;

    iget-object v6, p0, Ljk/e;->c:Ljk/f;

    iget-object v7, p0, Ljk/e;->d:Ljava/math/BigInteger;

    iget-object v8, p0, Ljk/e;->e:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljk/e$e;-><init>(IIIILjk/f;Ljk/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public g([Ljk/i;II)Ljk/g;
    .locals 7

    iget v0, p0, Ljk/e$e;->r:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    invoke-virtual {p0}, Ljk/e$e;->W()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iget v2, p0, Ljk/e$e;->s:I

    aput v2, v0, v3

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Ljk/e$e;->s:I

    aput v5, v0, v3

    iget v5, p0, Ljk/e$e;->t:I

    aput v5, v0, v2

    iget v2, p0, Ljk/e$e;->u:I

    aput v2, v0, v1

    goto :goto_0

    :goto_1
    mul-int v0, p3, v4

    mul-int/2addr v0, v1

    new-array v5, v0, [J

    move v0, v3

    :goto_2
    if-ge v3, p3, :cond_1

    add-int v1, p2, v3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljk/i;->n()Ljk/f;

    move-result-object v2

    check-cast v2, Ljk/f$c;

    iget-object v2, v2, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v2, v5, v0}, Ljk/o;->j([JI)V

    add-int/2addr v0, v4

    invoke-virtual {v1}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    check-cast v1, Ljk/f$c;

    iget-object v1, v1, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v1, v5, v0}, Ljk/o;->j([JI)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance p1, Ljk/e$e$a;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Ljk/e$e$a;-><init>(Ljk/e$e;II[J[I)V

    return-object p1
.end method

.method public h()Ljk/h;
    .locals 1

    invoke-virtual {p0}, Ljk/e$b;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljk/C;

    invoke-direct {v0}, Ljk/C;-><init>()V

    return-object v0

    :cond_0
    invoke-super {p0}, Ljk/e;->h()Ljk/h;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Ljk/i$d;

    invoke-direct {v0, p0, p1, p2}, Ljk/i$d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Ljk/i$d;

    invoke-direct {v0, p0, p1, p2, p3}, Ljk/i$d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v1, p0, Ljk/e$e;->r:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Ljk/e$e;->t:I

    iget v2, p0, Ljk/e$e;->u:I

    or-int v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    new-array v0, v5, [I

    iget v2, p0, Ljk/e$e;->s:I

    aput v2, v0, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    iget v6, p0, Ljk/e$e;->s:I

    aput v6, v3, v4

    aput v0, v3, v5

    const/4 v0, 0x2

    aput v2, v3, v0

    move-object v0, v3

    :goto_0
    new-instance v2, Ljk/f$c;

    new-instance v3, Ljk/o;

    invoke-direct {v3, p1}, Ljk/o;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v2, v1, v0, v3}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid in F2m field element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()I
    .locals 1

    iget v0, p0, Ljk/e$e;->r:I

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Ljk/e$e;->v:Ljk/i$d;

    return-object v0
.end method
