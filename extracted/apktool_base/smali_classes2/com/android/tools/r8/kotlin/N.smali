.class public final Lcom/android/tools/r8/kotlin/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Xe0;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/kotlin/s0;

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/N;->e:Lcom/android/tools/r8/internal/Xe0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/s0;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/kotlin/N;->c:Lcom/android/tools/r8/internal/hC;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/kotlin/N;->d:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/android/tools/r8/kotlin/N;->e:Lcom/android/tools/r8/internal/Xe0;

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N;->c:Lcom/android/tools/r8/internal/hC;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/OL;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/N;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OL;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/OL;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance p1, Lcom/android/tools/r8/kotlin/N;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OL;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/android/tools/r8/kotlin/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, p1, p0, v2}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Z)Lcom/android/tools/r8/kotlin/s0;

    move-result-object p0

    .line 7
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    array-length v3, v1

    if-nez v3, :cond_2

    .line 9
    new-instance p1, Lcom/android/tools/r8/kotlin/N;

    sget-object v1, Lcom/android/tools/r8/kotlin/N;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {p1, v0, p0, v1}, Lcom/android/tools/r8/kotlin/N;-><init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/s0;Lcom/android/tools/r8/internal/hC;)V

    return-object p1

    .line 10
    :cond_2
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v3, 0x4

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    array-length v4, v1

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v7, v1, v5

    .line 13
    invoke-static {v7, p1, v7, v2}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Z)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    .line 14
    array-length v9, v3

    if-ge v9, v8, :cond_3

    .line 15
    array-length v9, v3

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 16
    :cond_3
    aput-object v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    .line 17
    :cond_4
    new-instance p1, Lcom/android/tools/r8/kotlin/N;

    .line 18
    invoke-static {v6, v3}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 19
    invoke-direct {p1, v0, p0, v1}, Lcom/android/tools/r8/kotlin/N;-><init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/s0;Lcom/android/tools/r8/internal/hC;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/s0;)Ljava/util/function/Consumer;
    .locals 1

    .line 40
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/i1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/i1;-><init>(Lcom/android/tools/r8/kotlin/s0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/kotlin/N;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->c:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/g1;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/g1;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    new-instance p2, Lcom/android/tools/r8/internal/OL;

    iget-object p3, p0, Lcom/android/tools/r8/kotlin/N;->a:Ljava/lang/String;

    invoke-direct {p2, p3, v0}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    .line 23
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/kotlin/N;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->a:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    move-object v0, p2

    .line 28
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v2, "("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/android/tools/r8/kotlin/N;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/kotlin/s0;

    .line 32
    new-instance v5, Lcom/android/tools/r8/kotlin/h1;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/kotlin/h1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, v5, p3, v2}, Lcom/android/tools/r8/kotlin/s0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_1

    .line 33
    :cond_4
    const-string v3, ")"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v3, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    new-instance v4, Lcom/android/tools/r8/kotlin/h1;

    invoke-direct {v4, p2}, Lcom/android/tools/r8/kotlin/h1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v4, p3, v2}, Lcom/android/tools/r8/kotlin/s0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p3

    or-int/2addr p3, v1

    .line 35
    new-instance v1, Lcom/android/tools/r8/internal/OL;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return p3
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/kotlin/N;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->d:Ljava/lang/String;

    const-string v1, ")"

    const-string v2, "("

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/N;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/kotlin/N;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/N;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/N;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v3}, Lcom/android/tools/r8/kotlin/s0;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/N;->b:Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v1}, Lcom/android/tools/r8/kotlin/s0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
