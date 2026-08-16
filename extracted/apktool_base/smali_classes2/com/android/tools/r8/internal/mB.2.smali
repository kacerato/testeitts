.class public Lcom/android/tools/r8/internal/mB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/internal/mB;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/android/tools/r8/internal/mB;->b:J

    .line 4
    iput-wide v0, p0, Lcom/android/tools/r8/internal/mB;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/mB;->b:J

    return-wide v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Wj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wj1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Xj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xj1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/mB;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/tools/r8/internal/mB;->c:J

    return-wide v0
.end method

.method public static f()Lcom/android/tools/r8/internal/mB;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/mB;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/mB;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a()Z
    .locals 7

    const-wide v0, -0x795fdfffffdfffe7L    # -9.096487288834464E-277

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/mB;->a(J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 8
    iget-wide v3, p0, Lcom/android/tools/r8/internal/mB;->c:J

    const-wide/16 v5, 0x18

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 9
    :goto_1
    sget-boolean v3, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v3, :cond_5

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x15

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2d

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x37

    .line 13
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3f

    .line 14
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x4

    .line 15
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x35

    .line 16
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x39

    .line 17
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3a

    .line 18
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x43

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x44

    .line 20
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_3
    return v0
.end method

.method public final a(I)Z
    .locals 4

    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_0

    shl-long/2addr v0, p1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/mB;->a(J)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    sget-boolean v3, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v3, :cond_2

    const/16 v3, 0x80

    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    sub-int/2addr p1, v2

    shl-long/2addr v0, p1

    .line 5
    iget-wide v2, p0, Lcom/android/tools/r8/internal/mB;->c:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(J)Z
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/android/tools/r8/internal/mB;->b:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 2

    const-wide v0, 0x1800000050000000L    # 4.383620004436983E-193

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/mB;->a(J)Z

    move-result v0

    .line 3
    sget-boolean v1, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v1, :cond_3

    const/16 v1, 0x1c

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x1e

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3b

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3c

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    return v0
.end method

.method public final c()Z
    .locals 2

    const-wide v0, 0x1e600000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/mB;->a(J)Z

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v1, :cond_3

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    return v0
.end method

.method public final d()Z
    .locals 2

    const-wide v0, 0x18600000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/mB;->a(J)Z

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v1, :cond_3

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    return v0
.end method

.method public final e()Z
    .locals 2

    const-wide v0, 0x4000000080000000L    # 2.0000009536743164

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/mB;->a(J)Z

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/mB;->d:Z

    if-nez v1, :cond_3

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Yj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Yj1;-><init>()V

    return-object v0
.end method
