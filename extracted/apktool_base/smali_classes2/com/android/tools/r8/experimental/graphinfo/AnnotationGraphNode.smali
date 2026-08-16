.class public final Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;
.super Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
.source "SourceFile"


# instance fields
.field private final c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

.field private final d:Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->isLibraryNode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;-><init>(Z)V

    iput-object p1, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    iput-object p2, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->d:Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    iget-object v3, p1, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->d:Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    iget-object p1, p1, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->d:Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getAnnotatedNode()Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    return-object v0
.end method

.method public getAnnotationClassNode()Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->d:Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    iget-object v1, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->d:Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    invoke-virtual {v0}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "annotated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
