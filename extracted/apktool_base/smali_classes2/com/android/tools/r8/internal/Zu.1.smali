.class public final Lcom/android/tools/r8/internal/Zu;
.super Lcom/android/tools/r8/internal/Q30;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:[Lcom/android/tools/r8/internal/Q30;

.field public final b:Lcom/android/tools/r8/internal/Wu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/internal/Q30;Lcom/android/tools/r8/internal/Wu;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Q30;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    .line 13
    iput-object p2, p0, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/internal/Q30;[Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Q30;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Zu;->c:Z

    if-nez v0, :cond_1

    array-length v1, p1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    array-length v1, p2

    array-length v2, p1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/y41;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/y41;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    const/4 p1, 0x0

    .line 6
    aget-object v0, p2, p1

    .line 7
    array-length v1, p2

    move v2, p1

    :goto_3
    if-ge v2, v1, :cond_7

    aget-object v3, p2, v2

    if-eq v3, v0, :cond_6

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Yu;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Yu;-><init>([Lcom/android/tools/r8/graph/M2;)V

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/Xu;

    aget-object p1, p2, p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xu;-><init>(Lcom/android/tools/r8/graph/M2;)V

    move-object p1, v0

    .line 10
    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Wu;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length p2, p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/G1;->a(I)Lcom/android/tools/r8/internal/MQ;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/tools/r8/internal/Q30;

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Zu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    .line 11
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/internal/Wu;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Wu;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/Zu;-><init>([Lcom/android/tools/r8/internal/Q30;Lcom/android/tools/r8/internal/Wu;)V

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Zu;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v0, v0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Zu;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Zu;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v1, v0

    iget-object v3, p1, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    array-length v4, v3

    if-eq v1, v4, :cond_1

    return v2

    :cond_1
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Zu;->b:Lcom/android/tools/r8/internal/Wu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Wu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zu;->a:[Lcom/android/tools/r8/internal/Q30;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
