.class Lcom/jme3/renderer/queue/GeometryList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/renderer/queue/GeometryList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/jme3/scene/Geometry;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/jme3/renderer/queue/GeometryList;


# direct methods
.method public constructor <init>(Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/renderer/queue/GeometryList$1;->this$0:Lcom/jme3/renderer/queue/GeometryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/renderer/queue/GeometryList$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList$1;->index:I

    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList$1;->this$0:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/jme3/scene/Geometry;
    .locals 3

    .line 2
    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList$1;->index:I

    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList$1;->this$0:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList$1;->this$0:Lcom/jme3/renderer/queue/GeometryList;

    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/renderer/queue/GeometryList$1;->index:I

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geometry list has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/renderer/queue/GeometryList$1;->this$0:Lcom/jme3/renderer/queue/GeometryList;

    invoke-virtual {v2}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/renderer/queue/GeometryList$1;->next()Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Geometry list doesn\'t support iterator removal"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
