.class Lcom/android/tools/r8/shaking/c3$b;
.super Lcom/android/tools/r8/shaking/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/android/tools/r8/shaking/i4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/i4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/c3;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/c3;
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/c3$b;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/i4;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/i4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/c3$b;-><init>(Lcom/android/tools/r8/shaking/i4;)V

    return-object v0
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i4;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/shaking/n4;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i4;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/shaking/i4$b;

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/c3$b;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/shaking/i4$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/shaking/n4;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$b;->a:Lcom/android/tools/r8/shaking/i4;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
