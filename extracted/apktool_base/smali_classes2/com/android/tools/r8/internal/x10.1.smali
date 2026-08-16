.class public final Lcom/android/tools/r8/internal/x10;
.super Lcom/android/tools/r8/internal/F00;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F00;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/x10;->d:Z

    if-nez v0, :cond_1

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/tools/r8/internal/x10;->b:J

    iput-wide p3, p0, Lcom/android/tools/r8/internal/x10;->c:J

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->b:J

    return-wide v0
.end method

.method public final a([I)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 16
    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final a(I)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->b:J

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->c:J

    cmp-long p1, v2, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Bh;)Z
    .locals 5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, v0, Lcom/android/tools/r8/internal/Jj;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/Im0;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Bh;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    .line 6
    iget-wide v0, p1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p1, v0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/x10;->a(I)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    instance-of v1, v0, Lcom/android/tools/r8/internal/x10;

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Bh;->l()Lcom/android/tools/r8/internal/x10;

    move-result-object p1

    .line 10
    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->b:J

    iget-wide v3, p1, Lcom/android/tools/r8/internal/x10;->c:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->c:J

    iget-wide v3, p1, Lcom/android/tools/r8/internal/x10;->b:J

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 11
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/internal/x10;->d:Z

    if-nez v1, :cond_5

    .line 12
    instance-of v0, v0, Lcom/android/tools/r8/internal/y10;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Bh;->u()Lcom/android/tools/r8/internal/y10;

    move-result-object p1

    .line 15
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Bh;->a(Lcom/android/tools/r8/internal/Bh;)Z

    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    return-object p0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/x10;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/x10;

    iget-wide v1, p0, Lcom/android/tools/r8/internal/x10;->b:J

    iget-wide v3, p1, Lcom/android/tools/r8/internal/x10;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/tools/r8/internal/x10;->c:J

    iget-wide v3, p1, Lcom/android/tools/r8/internal/x10;->c:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/tools/r8/internal/x10;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    sget-boolean v0, Lcom/android/tools/r8/internal/x10;->d:Z

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/android/tools/r8/internal/x10;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/tools/r8/internal/x10;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final l()Lcom/android/tools/r8/internal/x10;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/tools/r8/internal/x10;->b:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/x10;->c:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFromIntervalValue(["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
