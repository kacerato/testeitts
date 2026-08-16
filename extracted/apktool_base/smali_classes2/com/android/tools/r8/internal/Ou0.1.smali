.class public final Lcom/android/tools/r8/internal/Ou0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/tools/r8/internal/Ou0;->b:J

    return-void
.end method

.method public static a(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/android/tools/r8/internal/Ou0;

    iget-wide v0, p1, Lcom/android/tools/r8/internal/Ou0;->b:J

    iget-wide v2, p0, Lcom/android/tools/r8/internal/Ou0;->b:J

    const-wide/high16 v4, -0x8000000000000000L

    xor-long/2addr v2, v4

    xor-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Ou0;->b:J

    instance-of v2, p1, Lcom/android/tools/r8/internal/Ou0;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Ou0;

    iget-wide v4, p1, Lcom/android/tools/r8/internal/Ou0;->b:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Ou0;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/android/tools/r8/internal/Ou0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "toString(...)"

    const/16 v4, 0xa

    if-ltz v2, :cond_0

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    ushr-long v5, v0, v2

    int-to-long v7, v4

    div-long/2addr v5, v7

    shl-long/2addr v5, v2

    mul-long v9, v5, v7

    sub-long/2addr v0, v9

    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    sub-long/2addr v0, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    :cond_1
    invoke-static {v5, v6, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
