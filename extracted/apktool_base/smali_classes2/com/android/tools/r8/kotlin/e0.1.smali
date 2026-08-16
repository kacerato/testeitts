.class public final Lcom/android/tools/r8/kotlin/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/p;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/NQ$c;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/NQ$c;Lcom/android/tools/r8/internal/hC;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/e0;->a:Lcom/android/tools/r8/internal/NQ$c;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/e0;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/e0;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ$c;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/e0;
    .locals 6

    .line 1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NQ$c;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {v3, p2, v3}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    .line 6
    array-length v5, v0

    if-ge v5, v4, :cond_0

    .line 7
    array-length v5, v0

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 8
    :cond_0
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Lcom/android/tools/r8/kotlin/e0;

    .line 10
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 11
    invoke-direct {p2, p0, v0, p1}, Lcom/android/tools/r8/kotlin/e0;-><init>(Lcom/android/tools/r8/internal/NQ$c;Lcom/android/tools/r8/internal/hC;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/s0;)Ljava/util/function/Consumer;
    .locals 1

    .line 23
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/i1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/i1;-><init>(Lcom/android/tools/r8/kotlin/s0;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o50;
    .locals 5

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/e0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/e0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/kotlin/s0;

    .line 14
    new-instance v3, Lcom/android/tools/r8/kotlin/R3;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/kotlin/R3;-><init>(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v2, v3, p2, v4}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/e0;->a:Lcom/android/tools/r8/internal/NQ$c;

    .line 17
    iput-object p1, p2, Lcom/android/tools/r8/internal/NQ$c;->b:Ljava/util/List;

    .line 18
    sget-object p1, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ$c;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v0

    if-gez v0, :cond_1

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/NQ$c;->a(Lcom/android/tools/r8/internal/ML;)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/e0;->a:Lcom/android/tools/r8/internal/NQ$c;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NQ$c;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/e0;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/Q3;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/Q3;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/e0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/internal/ML;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/e0;->a:Lcom/android/tools/r8/internal/NQ$c;

    iget-object v0, v0, Lcom/android/tools/r8/internal/NQ$c;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method
