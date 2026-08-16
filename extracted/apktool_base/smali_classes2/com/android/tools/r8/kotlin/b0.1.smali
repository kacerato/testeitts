.class public abstract Lcom/android/tools/r8/kotlin/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/ML;

.field public static final b:Lcom/android/tools/r8/kotlin/a0;

.field public static final c:Lcom/android/tools/r8/kotlin/a0;

.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/ML;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/ML;-><init>(III)V

    sput-object v0, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    new-instance v0, Lcom/android/tools/r8/kotlin/a0;

    const-string v1, "NO_KOTLIN_INFO"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    new-instance v0, Lcom/android/tools/r8/kotlin/a0;

    const-string v1, "INVALID_KOTLIN_INFO"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/kotlin/b0;->c:Lcom/android/tools/r8/kotlin/a0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/OL;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/OL;

    iget-object p0, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/OL;I)Lcom/android/tools/r8/internal/OL;
    .locals 3

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/OL;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OL;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$default"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/OL;->b:Ljava/lang/String;

    .line 10
    const-string v2, "I"

    invoke-static {v2, p1}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Ljava/lang/Object;)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Z
    .locals 4

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/v3;

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/u1;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p3, p1, p2, p0}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/kotlin/b0;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 33
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/HU0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/HU0;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1, v0, p3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z
    .locals 2

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 35
    invoke-interface {p3, v1, p2, p0}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/u1;)Z
    .locals 3

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    instance-of v0, p0, Lcom/android/tools/r8/shaking/G3;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->p()Lcom/android/tools/r8/shaking/G3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/G3;->E()Lcom/android/tools/r8/shaking/K3;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/u1;)Z

    move-result p0

    return p0

    .line 24
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/shaking/K3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->q()Lcom/android/tools/r8/shaking/K3;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/shaking/O3;->c:Lcom/android/tools/r8/shaking/O3;

    if-ne v0, v2, :cond_2

    return v1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/L3;->C()Lcom/android/tools/r8/shaking/M3;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/M3;->e:Z

    if-eqz v0, :cond_3

    return v1

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object p0

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 12
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/android/tools/r8/internal/JJ; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
