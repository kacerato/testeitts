.class public LIi/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/a0;
.implements LBi/y;


# static fields
.field public static final e:[B


# instance fields
.field public final a:LIi/i;

.field public final b:I

.field public final c:I

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TupleHash"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, LIi/Y;->e:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    .line 1
    invoke-direct {p0, p1, p2, v0}, LIi/Y;-><init>(I[BI)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/i;

    sget-object v1, LIi/Y;->e:[B

    invoke-direct {v0, p1, v1, p2}, LIi/i;-><init>(I[B[B)V

    iput-object v0, p0, LIi/Y;->a:LIi/i;

    iput p1, p0, LIi/Y;->b:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, LIi/Y;->c:I

    invoke-virtual {p0}, LIi/Y;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/Y;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/i;

    iget-object v1, p1, LIi/Y;->a:LIi/i;

    invoke-direct {v0, v1}, LIi/i;-><init>(LIi/i;)V

    iput-object v0, p0, LIi/Y;->a:LIi/i;

    iget v0, v0, LIi/v;->f:I

    iput v0, p0, LIi/Y;->b:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, LIi/Y;->c:I

    iget-boolean p1, p1, LIi/Y;->d:Z

    iput-boolean p1, p0, LIi/Y;->d:Z

    return-void
.end method

.method private a(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, LIi/b0;->d(J)[B

    move-result-object p1

    iget-object v0, p0, LIi/Y;->a:LIi/i;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, LIi/v;->update([BII)V

    iput-boolean v2, p0, LIi/Y;->d:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TupleHash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LIi/Y;->a:LIi/i;

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

    iget-boolean v0, p0, LIi/Y;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LIi/Y;->f()I

    move-result v0

    invoke-direct {p0, v0}, LIi/Y;->a(I)V

    :cond_0
    iget-object v0, p0, LIi/Y;->a:LIi/i;

    invoke-virtual {p0}, LIi/Y;->f()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, LIi/Q;->e([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/Y;->reset()V

    return p1
.end method

.method public e([BII)I
    .locals 1

    iget-boolean v0, p0, LIi/Y;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LIi/Y;->f()I

    move-result v0

    invoke-direct {p0, v0}, LIi/Y;->a(I)V

    :cond_0
    iget-object v0, p0, LIi/Y;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/Q;->e([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/Y;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/Y;->c:I

    return v0
.end method

.method public h([BII)I
    .locals 1

    iget-boolean v0, p0, LIi/Y;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LIi/Y;->a(I)V

    :cond_0
    iget-object v0, p0, LIi/Y;->a:LIi/i;

    invoke-virtual {v0, p1, p2, p3}, LIi/i;->h([BII)I

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LIi/Y;->a:LIi/i;

    invoke-virtual {v0}, LIi/v;->i()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LIi/Y;->a:LIi/i;

    invoke-virtual {v0}, LIi/i;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LIi/Y;->d:Z

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
    invoke-static {p1}, LIi/b0;->a(B)[B

    move-result-object p1

    iget-object v0, p0, LIi/Y;->a:LIi/i;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, LIi/v;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, LIi/b0;->b([BII)[B

    move-result-object p1

    iget-object p2, p0, LIi/Y;->a:LIi/i;

    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, LIi/v;->update([BII)V

    return-void
.end method
