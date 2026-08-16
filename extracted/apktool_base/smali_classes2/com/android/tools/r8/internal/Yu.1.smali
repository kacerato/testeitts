.class public final Lcom/android/tools/r8/internal/Yu;
.super Lcom/android/tools/r8/internal/Wu;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:[Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Wu;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Yu;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/C31;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/C31;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 10
    sget-boolean p1, Lcom/android/tools/r8/internal/Yu;->b:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Yu;->b:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Wu;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/internal/B31;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/B31;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    sget-object p1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/M2;

    const/4 p2, 0x0

    .line 5
    aget-object v0, p1, p2

    .line 6
    array-length v1, p1

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eq v3, v0, :cond_0

    .line 7
    new-instance p2, Lcom/android/tools/r8/internal/Yu;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Yu;-><init>([Lcom/android/tools/r8/graph/M2;)V

    return-object p2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Xu;

    aget-object p1, p1, p2

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xu;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/Yu;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    array-length v0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/Yu;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Yu;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yu;->a:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
