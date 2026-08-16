.class public Lmk/D0;
.super Ljk/e$b;
.source "SourceFile"


# static fields
.field public static final s:I = 0x6

.field public static final t:[Ljk/f;


# instance fields
.field public r:Lmk/E0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmk/C0;

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lmk/C0;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljk/f;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lmk/D0;->t:[Ljk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9e

    const/4 v1, 0x0

    const/16 v2, 0xef

    invoke-direct {p0, v2, v0, v1, v1}, Ljk/e$b;-><init>(IIII)V

    new-instance v0, Lmk/E0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lmk/E0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object v0, p0, Lmk/D0;->r:Lmk/E0;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmk/D0;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->b:Ljk/f;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmk/D0;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->c:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2000000000000000000000000000005A79FEC67CB6E91F1C1DA800E478A5"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Ljk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Ljk/e;->f:I

    return-void
.end method

.method public static synthetic R()[Ljk/f;
    .locals 1

    sget-object v0, Lmk/D0;->t:[Ljk/f;

    return-object v0
.end method


# virtual methods
.method public J(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public S()I
    .locals 1

    const/16 v0, 0x9e

    return v0
.end method

.method public T()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljk/e;
    .locals 1

    new-instance v0, Lmk/D0;

    invoke-direct {v0}, Lmk/D0;-><init>()V

    return-object v0
.end method

.method public g([Ljk/i;II)Ljk/g;
    .locals 6

    mul-int/lit8 v0, p3, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljk/i;->n()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/C0;

    iget-object v5, v5, Lmk/C0;->g:[J

    invoke-static {v5, v1, v0, v3}, Lsk/i;->k([JI[JI)V

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v4}, Ljk/i;->o()Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/C0;

    iget-object v4, v4, Lmk/C0;->g:[J

    invoke-static {v4, v1, v0, v5}, Lsk/i;->k([JI[JI)V

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lmk/D0$a;

    invoke-direct {p1, p0, p3, v0}, Lmk/D0$a;-><init>(Lmk/D0;I[J)V

    return-object p1
.end method

.method public h()Ljk/h;
    .locals 1

    new-instance v0, Ljk/C;

    invoke-direct {v0}, Ljk/C;-><init>()V

    return-object v0
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/E0;

    invoke-direct {v0, p0, p1, p2}, Lmk/E0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/E0;

    invoke-direct {v0, p0, p1, p2, p3}, Lmk/E0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 1

    new-instance v0, Lmk/C0;

    invoke-direct {v0, p1}, Lmk/C0;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public w()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Lmk/D0;->r:Lmk/E0;

    return-object v0
.end method
