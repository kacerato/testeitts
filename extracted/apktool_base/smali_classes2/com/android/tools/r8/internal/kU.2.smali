.class public Lcom/android/tools/r8/internal/kU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/kU;->c:Z

    if-nez v0, :cond_1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    int-to-long v0, p1

    .line 3
    iput-wide v0, p0, Lcom/android/tools/r8/internal/kU;->a:J

    int-to-long p1, p2

    .line 4
    iput-wide p1, p0, Lcom/android/tools/r8/internal/kU;->b:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/kU;->c:Z

    if-nez v0, :cond_1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/tools/r8/internal/kU;->a:J

    .line 8
    iput-wide p3, p0, Lcom/android/tools/r8/internal/kU;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/kU;->b:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/kU;->a:J

    return-wide v0
.end method

.method public final c()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/internal/kU;->a:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/kU;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/kU;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/kU;

    iget-wide v3, p1, Lcom/android/tools/r8/internal/kU;->a:J

    iget-wide v5, p0, Lcom/android/tools/r8/internal/kU;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p1, Lcom/android/tools/r8/internal/kU;->b:J

    iget-wide v5, p0, Lcom/android/tools/r8/internal/kU;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/tools/r8/internal/kU;->a:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/kU;->b:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
