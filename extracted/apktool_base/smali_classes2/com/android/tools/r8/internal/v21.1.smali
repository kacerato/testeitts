.class public final synthetic Lcom/android/tools/r8/internal/v21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xu0;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/graph/A2;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xu0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/v21;->b:Lcom/android/tools/r8/internal/Xu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/v21;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/v21;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/v21;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/internal/v21;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/v21;->b:Lcom/android/tools/r8/internal/Xu0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/v21;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/v21;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/v21;->e:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/tools/r8/internal/v21;->f:Ljava/util/function/Consumer;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Xu0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method
