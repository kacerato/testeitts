.class public final Lcom/android/tools/r8/synthesis/q;
.super Lcom/android/tools/r8/synthesis/n;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/s;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/I0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/synthesis/n;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/t;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/synthesis/q;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/graph/I0;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/android/tools/r8/synthesis/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcom/android/tools/r8/synthesis/a0;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/synthesis/r;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v3, Lcom/android/tools/r8/graph/I0;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/synthesis/r;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyntheticClasspathClass{ clazz = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", kind = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", context = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
