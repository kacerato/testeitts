.class public final Lcom/android/tools/r8/internal/Qd;
.super Lcom/android/tools/r8/internal/Ud;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/V;

.field public final c:Lcom/android/tools/r8/ClassFileResourceProvider;

.field public final d:Lcom/android/tools/r8/graph/h4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/ClassFileResourceProvider;Lcom/android/tools/r8/graph/h4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ud;-><init>(Lcom/android/tools/r8/graph/V;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qd;->b:Lcom/android/tools/r8/graph/V;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qd;->c:Lcom/android/tools/r8/ClassFileResourceProvider;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Qd;->d:Lcom/android/tools/r8/graph/h4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd;->c:Lcom/android/tools/r8/ClassFileResourceProvider;

    instance-of v1, v0, Lcom/android/tools/r8/internal/aJ;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/android/tools/r8/internal/aJ;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/aJ;->a:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qd;->c:Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-interface {v1}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/Qd;->d:Lcom/android/tools/r8/graph/h4;

    iget-object v3, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd;->c:Lcom/android/tools/r8/ClassFileResourceProvider;

    instance-of v1, v0, Lcom/android/tools/r8/internal/aJ;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/aJ;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/aJ;->a:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd;->c:Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/graph/o4;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qd;->d:Lcom/android/tools/r8/graph/h4;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Qd;->b:Lcom/android/tools/r8/graph/V;

    invoke-direct {v1, v2, p2, v3}, Lcom/android/tools/r8/graph/o4;-><init>(Lcom/android/tools/r8/graph/h4;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/V;)V

    .line 9
    invoke-interface {v0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p2

    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResource;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/android/tools/r8/graph/o4;->b(Lcom/android/tools/r8/origin/Origin;[B)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd;->c:Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class-resource-provider("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
