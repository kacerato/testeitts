.class public final LB2/A;
.super LB2/I;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements LB2/y;


# annotations
.annotation runtime LB2/k;
.end annotation


# static fields
.field public static final k:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LB2/I;-><init>()V

    return-void
.end method


# virtual methods
.method public M0(J)V
    .locals 6

    iget-object v0, p0, LB2/I;->b:[LB2/I$b;

    if-nez v0, :cond_0

    iget-wide v1, p0, LB2/I;->c:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, LB2/I;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, LB2/I;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lt v3, v2, :cond_1

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v2, v0, LB2/I$b;->h:J

    add-long v4, v2, p1

    invoke-virtual {v0, v2, v3, v4, v5}, LB2/I$b;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, v1, v2}, LB2/I;->g(J[IZ)V

    :cond_2
    return-void
.end method

.method public N0()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LB2/A;->M0(J)V

    return-void
.end method

.method public final d(JJ)J
    .locals 0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, LB2/A;->o()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, LB2/A;->o()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public h()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, LB2/A;->M0(J)V

    return-void
.end method

.method public final i(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    iput v0, p0, LB2/I;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, LB2/I;->b:[LB2/I$b;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, LB2/I;->c:J

    return-void
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, LB2/A;->o()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public j()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LB2/I;->f(J)V

    return-void
.end method

.method public k()J
    .locals 10

    iget-wide v0, p0, LB2/I;->c:J

    iget-object v2, p0, LB2/I;->b:[LB2/I$b;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, LB2/I;->c:J

    if-eqz v2, :cond_1

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    if-eqz v7, :cond_0

    iget-wide v8, v7, LB2/I$b;->h:J

    add-long/2addr v0, v8

    iput-wide v3, v7, LB2/I$b;->h:J

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final l(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, LB2/A;->o()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, LB2/A;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 7

    iget-wide v0, p0, LB2/I;->c:J

    iget-object v2, p0, LB2/I;->b:[LB2/I$b;

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    iget-wide v5, v5, LB2/I$b;->h:J

    add-long/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, LB2/A;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
