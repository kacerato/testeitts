.class public Lcom/android/tools/r8/graph/u0;
.super Lcom/android/tools/r8/graph/E;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/E;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/u0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:[Lcom/android/tools/r8/graph/u0;

.field public static final g:Lcom/android/tools/r8/graph/u0;

.field public static final synthetic h:Z = true


# instance fields
.field public final d:[Lcom/android/tools/r8/graph/r0;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/u0;

    sput-object v0, Lcom/android/tools/r8/graph/u0;->f:[Lcom/android/tools/r8/graph/u0;

    new-instance v0, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/u0;->g:Lcom/android/tools/r8/graph/u0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/graph/E;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/tools/r8/graph/u0;->e:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/r0;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/graph/E;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/graph/u0;->e:I

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/graph/u0;->h:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)I
    .locals 0

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/graph/n5;->a(Lcom/android/tools/r8/graph/n5;Lcom/android/tools/r8/naming/r0;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;
    .locals 0

    .line 20
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/rg;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/rg;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Z
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u0;)[Lcom/android/tools/r8/graph/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    return-object p0
.end method

.method public static l0()Lcom/android/tools/r8/graph/u0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/u0;->g:Lcom/android/tools/r8/graph/u0;

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/graph/qg;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/qg;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/r0;
    .locals 5

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    sget-object v1, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/r0;

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    if-eq p1, v0, :cond_2

    .line 24
    invoke-static {p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/android/tools/r8/graph/u0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/u0;)Z

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/r0;)V
    .locals 3

    .line 7
    iget v0, p0, Lcom/android/tools/r8/graph/u0;->e:I

    if-eqz v0, :cond_3

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/graph/u0;->h:Z

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    new-instance v1, Lcom/android/tools/r8/graph/ng;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/ng;-><init>(Lcom/android/tools/r8/naming/r0;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 13
    iget-object v2, v2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e1;->l0()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/graph/u0;->e:I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/u0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 2
    iget-object v5, v5, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v5, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Lcom/android/tools/r8/graph/r0;

    .line 4
    invoke-static {p1, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v4, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    add-int/lit8 v2, v4, 0x1

    sub-int/2addr v0, v4

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_0
    invoke-static {v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/android/tools/r8/graph/u0;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/graph/u0;-><init>([Lcom/android/tools/r8/graph/r0;)V

    return-object p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/u0;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/graph/og;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/og;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/graph/u0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/u0;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k0()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/pg;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/pg;-><init>()V

    return-object v0
.end method

.method public m0()[Lcom/android/tools/r8/graph/r0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    return-object v0
.end method

.method public n0()Lcom/android/tools/r8/graph/r0;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    array-length v0, v0

    return v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
