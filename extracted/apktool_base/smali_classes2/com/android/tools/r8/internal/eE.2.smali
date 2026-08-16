.class public final Lcom/android/tools/r8/internal/eE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/android/tools/r8/graph/O2;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/O2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/eE;->a:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/eE;->b:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/eE;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/eE;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/tools/r8/internal/eE;->e:Lcom/android/tools/r8/graph/O2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/eE;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/eE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eE;->a:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/tools/r8/internal/eE;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/eE;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/tools/r8/internal/eE;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/eE;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/eE;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/eE;->d:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/internal/eE;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/eE;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eE;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/eE;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/eE;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/eE;->e:Lcom/android/tools/r8/graph/O2;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
