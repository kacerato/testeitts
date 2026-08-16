.class public abstract Lcom/android/tools/r8/internal/Q0;
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
    .locals 6

    const-string v0, "\\s+|,\\s+|#|\\(|\\)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_a

    move-object p1, p0

    check-cast p1, Lcom/android/tools/r8/internal/GA;

    sget-boolean v1, Lcom/android/tools/r8/graph/L4;->f:Z

    new-instance v1, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/K4;-><init>()V

    iput-object v1, p1, Lcom/android/tools/r8/internal/GA;->c:Lcom/android/tools/r8/graph/K4;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/tools/r8/internal/GA;->d:Lcom/android/tools/r8/graph/M2;

    iput-object v1, p1, Lcom/android/tools/r8/internal/GA;->e:Lcom/android/tools/r8/graph/M2;

    iput-object v1, p1, Lcom/android/tools/r8/internal/GA;->f:Lcom/android/tools/r8/graph/L2;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/android/tools/r8/internal/GA;->g:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/tools/r8/internal/GA;->h:Lcom/android/tools/r8/graph/A2;

    iput-object v1, p1, Lcom/android/tools/r8/internal/GA;->i:Lcom/android/tools/r8/graph/L4;

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/tools/r8/internal/H0;->b:Lcom/android/tools/r8/internal/nC;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/H0;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/H0;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    sget-boolean v4, Lcom/android/tools/r8/internal/GA;->j:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GA;->b()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    iput-object v3, p1, Lcom/android/tools/r8/internal/GA;->d:Lcom/android/tools/r8/graph/M2;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/H0;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GA;->b()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    iput-object v3, p1, Lcom/android/tools/r8/internal/GA;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/H0;->a:Lcom/android/tools/r8/graph/u1;

    add-int/lit8 v5, v1, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GA;->b()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    iput-object v3, p1, Lcom/android/tools/r8/internal/GA;->f:Lcom/android/tools/r8/graph/L2;

    add-int/2addr v1, v2

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_9

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/H0;->a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/internal/GA;->j:Z

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/GA;->b()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_5
    iget-object v3, p1, Lcom/android/tools/r8/internal/GA;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p1, Lcom/android/tools/r8/internal/H0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p1, Lcom/android/tools/r8/internal/GA;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/GA;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/H0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p1, Lcom/android/tools/r8/internal/GA;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/GA;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/internal/GA;->h:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/GA;->c:Lcom/android/tools/r8/graph/K4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v0, Lcom/android/tools/r8/graph/L4;

    iput-object v0, p1, Lcom/android/tools/r8/internal/GA;->i:Lcom/android/tools/r8/graph/L4;

    return-void

    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desugared library: cannot parse method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method
