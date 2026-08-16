.class public Lcom/android/tools/r8/graph/z5;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/z5;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/android/tools/r8/graph/z5;

.field public static final synthetic e:Z = true


# instance fields
.field public final b:[Lcom/android/tools/r8/graph/u0;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/z5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/z5;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/tools/r8/graph/z5;->c:I

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/u0;I)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/z5;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 6
    array-length v1, p1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 7
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 8
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    .line 11
    iput p2, p0, Lcom/android/tools/r8/graph/z5;->c:I

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u0;)Lcom/android/tools/r8/graph/u0;
    .locals 0

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    return-object p0
.end method

.method public static a([Lcom/android/tools/r8/graph/u0;I)Lcom/android/tools/r8/graph/z5;
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 5
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/z5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/z5;-><init>([Lcom/android/tools/r8/graph/u0;I)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Zh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Zh;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/ai;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ai;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/z5;)[Lcom/android/tools/r8/graph/u0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/z5;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/graph/z5;->c:I

    return p0
.end method

.method public static k0()Lcom/android/tools/r8/graph/z5;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/z5;
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    new-instance v1, Lcom/android/tools/r8/graph/bi;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/bi;-><init>(Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    .line 12
    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/u0;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    if-eq p1, v0, :cond_1

    .line 14
    iget v0, p0, Lcom/android/tools/r8/graph/z5;->c:I

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/z5;->a([Lcom/android/tools/r8/graph/u0;I)Lcom/android/tools/r8/graph/z5;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/z5;)Z

    return-void
.end method

.method public final d(Ljava/util/function/Consumer;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/z5;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    check-cast p1, Lcom/android/tools/r8/graph/z5;

    iget-object p1, p1, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j(I)Lcom/android/tools/r8/graph/u0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/graph/z5;->e:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/graph/z5;->c:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    return-object p1
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Yh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Yh;-><init>()V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/z5;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
