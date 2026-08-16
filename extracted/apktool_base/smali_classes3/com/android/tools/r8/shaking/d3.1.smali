.class public final Lcom/android/tools/r8/shaking/d3;
.super Lcom/android/tools/r8/shaking/c3;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Y10;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/c3;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i4;)Ljava/lang/Iterable;
    .locals 0

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/c3$a;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/i4;Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/c3$a;->a(ZLcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3$a;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/W0;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W0;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i4;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/c3;
    .locals 3

    .line 23
    invoke-static {}, Lcom/android/tools/r8/shaking/c3;->a()Lcom/android/tools/r8/shaking/c3$a;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    new-instance v2, Lcom/android/tools/r8/shaking/bc;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/shaking/bc;-><init>(Lcom/android/tools/r8/shaking/c3$a;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3$a;->a()Lcom/android/tools/r8/shaking/c3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/s30;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/Y10;->d:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/s30;-><init>(I[Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lcom/android/tools/r8/shaking/Zb;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Zb;-><init>(Ljava/util/function/Predicate;)V

    .line 21
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W0;

    if-nez v1, :cond_0

    const/16 v1, 0x2c

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-boolean v1, v2, Lcom/android/tools/r8/internal/W0;->c:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x21

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v1, v2, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    .line 28
    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    .line 29
    new-instance v0, Lcom/android/tools/r8/shaking/ac;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/ac;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W0;

    .line 14
    iget-object v2, v1, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    .line 15
    check-cast v2, Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-boolean p1, v1, Lcom/android/tools/r8/internal/W0;->c:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 17
    :cond_0
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/W0;->c:Z

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/shaking/d3;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/d3;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Y10;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    iget v0, v0, Lcom/android/tools/r8/internal/Y10;->d:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/d3;->a:Lcom/android/tools/r8/internal/Y10;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
