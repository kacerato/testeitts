.class public LIi/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/a0;
.implements LBi/y;


# static fields
.field public static final l:[B


# instance fields
.field public final a:LIi/i;

.field public final b:LIi/i;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:[B

.field public final g:[B

.field public h:Z

.field public i:I

.field public j:I

.field public final k:LBi/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ParallelHash"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, LIi/C;->l:[B

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 6

    mul-int/lit8 v4, p1, 0x2

    .line 1
    sget-object v5, LBi/o;->ANY:LBi/o;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, LIi/C;-><init>(I[BIILBi/o;)V

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 6

    .line 2
    sget-object v5, LBi/o;->ANY:LBi/o;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, LIi/C;-><init>(I[BIILBi/o;)V

    return-void
.end method

.method public constructor <init>(I[BIILBi/o;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/i;

    sget-object v1, LIi/C;->l:[B

    invoke-direct {v0, p1, v1, p2}, LIi/i;-><init>(I[B[B)V

    iput-object v0, p0, LIi/C;->a:LIi/i;

    new-instance p2, LIi/i;

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v0, v0, [B

    invoke-direct {p2, p1, v1, v0}, LIi/i;-><init>(I[B[B)V

    iput-object p2, p0, LIi/C;->b:LIi/i;

    iput p1, p0, LIi/C;->c:I

    iput p3, p0, LIi/C;->e:I

    add-int/lit8 p4, p4, 0x7

    div-int/lit8 p4, p4, 0x8

    iput p4, p0, LIi/C;->d:I

    new-array p2, p3, [B

    iput-object p2, p0, LIi/C;->f:[B

    mul-int/lit8 p2, p1, 0x2

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    iput-object p2, p0, LIi/C;->g:[B

    iput-object p5, p0, LIi/C;->k:LBi/o;

    invoke-static {p0, p1, p5}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/C;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/C;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/i;

    iget-object v1, p1, LIi/C;->a:LIi/i;

    invoke-direct {v0, v1}, LIi/i;-><init>(LIi/i;)V

    iput-object v0, p0, LIi/C;->a:LIi/i;

    new-instance v0, LIi/i;

    iget-object v1, p1, LIi/C;->b:LIi/i;

    invoke-direct {v0, v1}, LIi/i;-><init>(LIi/i;)V

    iput-object v0, p0, LIi/C;->b:LIi/i;

    iget v0, p1, LIi/C;->c:I

    iput v0, p0, LIi/C;->c:I

    iget v1, p1, LIi/C;->e:I

    iput v1, p0, LIi/C;->e:I

    iget v1, p1, LIi/C;->d:I

    iput v1, p0, LIi/C;->d:I

    iget-object v1, p1, LIi/C;->f:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, p0, LIi/C;->f:[B

    iget-object v1, p1, LIi/C;->g:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, p0, LIi/C;->g:[B

    iget-object v1, p1, LIi/C;->k:LBi/o;

    iput-object v1, p0, LIi/C;->k:LBi/o;

    iget-boolean v2, p1, LIi/C;->h:Z

    iput-boolean v2, p0, LIi/C;->h:Z

    iget v2, p1, LIi/C;->i:I

    iput v2, p0, LIi/C;->i:I

    iget p1, p1, LIi/C;->j:I

    iput p1, p0, LIi/C;->j:I

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, LIi/C;->f:[B

    iget v1, p0, LIi/C;->j:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, LIi/C;->d([BII)V

    iput v2, p0, LIi/C;->j:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParallelHash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LIi/C;->a:LIi/i;

    invoke-virtual {v1}, LIi/i;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, LIi/C;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, LIi/C;->d:I

    invoke-virtual {p0, v0}, LIi/C;->g(I)V

    :cond_0
    iget-object v0, p0, LIi/C;->a:LIi/i;

    invoke-virtual {p0}, LIi/C;->f()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, LIi/Q;->e([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/C;->reset()V

    return p1
.end method

.method public final d([BII)V
    .locals 1

    iget-object v0, p0, LIi/C;->b:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/v;->update([BII)V

    iget-object p1, p0, LIi/C;->b:LIi/i;

    iget-object p2, p0, LIi/C;->g:[B

    array-length p3, p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, LIi/Q;->e([BII)I

    iget-object p1, p0, LIi/C;->a:LIi/i;

    iget-object p2, p0, LIi/C;->g:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v0, p3}, LIi/v;->update([BII)V

    iget p1, p0, LIi/C;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LIi/C;->i:I

    return-void
.end method

.method public e([BII)I
    .locals 1

    iget-boolean v0, p0, LIi/C;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, LIi/C;->d:I

    invoke-virtual {p0, v0}, LIi/C;->g(I)V

    :cond_0
    iget-object v0, p0, LIi/C;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/Q;->e([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/C;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/C;->d:I

    return v0
.end method

.method public final g(I)V
    .locals 4

    iget v0, p0, LIi/C;->j:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, LIi/C;->a()V

    :cond_0
    iget v0, p0, LIi/C;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, LIi/b0;->d(J)[B

    move-result-object v0

    mul-int/lit8 p1, p1, 0x8

    int-to-long v1, p1

    invoke-static {v1, v2}, LIi/b0;->d(J)[B

    move-result-object p1

    iget-object v1, p0, LIi/C;->a:LIi/i;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, LIi/v;->update([BII)V

    iget-object v0, p0, LIi/C;->a:LIi/i;

    array-length v1, p1

    invoke-virtual {v0, p1, v3, v1}, LIi/v;->update([BII)V

    iput-boolean v3, p0, LIi/C;->h:Z

    return-void
.end method

.method public h([BII)I
    .locals 1

    iget-boolean v0, p0, LIi/C;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LIi/C;->g(I)V

    :cond_0
    iget-object v0, p0, LIi/C;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/i;->h([BII)I

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LIi/C;->a:LIi/i;

    invoke-virtual {v0}, LIi/v;->i()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, LIi/C;->a:LIi/i;

    invoke-virtual {v0}, LIi/i;->reset()V

    iget-object v0, p0, LIi/C;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    iget v0, p0, LIi/C;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1}, LIi/b0;->c(J)[B

    move-result-object v0

    iget-object v1, p0, LIi/C;->a:LIi/i;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, LIi/v;->update([BII)V

    iput v3, p0, LIi/C;->i:I

    iput v3, p0, LIi/C;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LIi/C;->h:Z

    return-void
.end method

.method public update(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LIi/C;->f:[B

    iget v1, p0, LIi/C;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LIi/C;->j:I

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    invoke-direct {p0}, LIi/C;->a()V

    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, LIi/C;->j:I

    if-eqz v1, :cond_1

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, LIi/C;->j:I

    iget-object v2, p0, LIi/C;->f:[B

    array-length v3, v2

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, LIi/C;->j:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_0

    :cond_0
    iget v1, p0, LIi/C;->j:I

    iget-object v2, p0, LIi/C;->f:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, LIi/C;->a()V

    :cond_1
    if-ge v0, p3, :cond_2

    :goto_1
    sub-int v1, p3, v0

    iget v2, p0, LIi/C;->e:I

    if-lt v1, v2, :cond_2

    add-int v1, p2, v0

    invoke-virtual {p0, p1, v1, v2}, LIi/C;->d([BII)V

    iget v1, p0, LIi/C;->e:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, p3, :cond_3

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, LIi/C;->update(B)V

    move v0, v1

    goto :goto_2

    :cond_3
    return-void
.end method
