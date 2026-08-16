.class public abstract Lcom/android/tools/r8/internal/o;
.super Lcom/android/tools/r8/internal/H0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\\s+|,\\s+|#|\\(|\\)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_7

    move-object p1, p0

    check-cast p1, Lcom/android/tools/r8/internal/FA;

    sget-boolean v1, Lcom/android/tools/r8/graph/k3;->f:Z

    new-instance v1, Lcom/android/tools/r8/graph/j3;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/j3;-><init>()V

    iput-object v1, p1, Lcom/android/tools/r8/internal/FA;->c:Lcom/android/tools/r8/graph/j3;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/tools/r8/internal/FA;->d:Lcom/android/tools/r8/graph/M2;

    iput-object v1, p1, Lcom/android/tools/r8/internal/FA;->e:Lcom/android/tools/r8/graph/M2;

    iput-object v1, p1, Lcom/android/tools/r8/internal/FA;->f:Lcom/android/tools/r8/graph/l1;

    iput-object v1, p1, Lcom/android/tools/r8/internal/FA;->g:Lcom/android/tools/r8/graph/k3;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/tools/r8/internal/H0;->b:Lcom/android/tools/r8/internal/nC;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/H0;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/H0;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/FA;->h:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    iput-object v2, p1, Lcom/android/tools/r8/internal/FA;->d:Lcom/android/tools/r8/graph/M2;

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/H0;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    iput-object v2, p1, Lcom/android/tools/r8/internal/FA;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/H0;->a:Lcom/android/tools/r8/graph/u1;

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/H0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p1, Lcom/android/tools/r8/internal/FA;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/FA;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/FA;->f:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/FA;->c:Lcom/android/tools/r8/graph/j3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v0, Lcom/android/tools/r8/graph/k3;

    iput-object v0, p1, Lcom/android/tools/r8/internal/FA;->g:Lcom/android/tools/r8/graph/k3;

    return-void

    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desugared library: cannot parse field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method
