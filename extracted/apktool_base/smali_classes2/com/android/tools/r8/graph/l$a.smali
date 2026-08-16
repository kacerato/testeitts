.class public Lcom/android/tools/r8/graph/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/l$a;->c:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/l$a;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/graph/l;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/DataResourceProvider;

    sget-object v2, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    :try_start_0
    new-instance v3, Lcom/android/tools/r8/graph/k;

    invoke-direct {v3, p0, v2}, Lcom/android/tools/r8/graph/k;-><init>(Lcom/android/tools/r8/graph/l$a;Lcom/android/tools/r8/FeatureSplit;)V

    invoke-interface {v1, v3}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/l$a;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/graph/l$a;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/FeatureSplit;

    invoke-virtual {v3}, Lcom/android/tools/r8/FeatureSplit;->getProgramResourceProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_1
    new-instance v6, Lcom/android/tools/r8/graph/k;

    invoke-direct {v6, p0, v3}, Lcom/android/tools/r8/graph/k;-><init>(Lcom/android/tools/r8/graph/l$a;Lcom/android/tools/r8/FeatureSplit;)V

    invoke-interface {v5, v6}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    :try_end_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/android/tools/r8/graph/l;

    iget-object v1, p0, Lcom/android/tools/r8/graph/l$a;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/graph/l$a;->c:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/l;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    return-object v0
.end method
