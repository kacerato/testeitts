.class Lcom/threed/jpct/Object3DList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threed/jpct/Object3DList;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lcom/threed/jpct/Object3D;",
        ">;"
    }
.end annotation


# instance fields
.field cnt:I

.field sc:I

.field final synthetic this$0:Lcom/threed/jpct/Object3DList;


# direct methods
.method public constructor <init>(Lcom/threed/jpct/Object3DList;)V
    .locals 1

    iput-object p1, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    invoke-static {p1}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/Object3DList$1;->sc:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v0}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v0

    iget v1, p0, Lcom/threed/jpct/Object3DList$1;->sc:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    iget-object v1, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v1}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public nextElement()Lcom/threed/jpct/Object3D;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v0}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v0

    iget v1, p0, Lcom/threed/jpct/Object3DList$1;->sc:I

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    iget-object v1, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v1}, Lcom/threed/jpct/Object3DList;->access$0(Lcom/threed/jpct/Object3DList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/Object3DList$1;->this$0:Lcom/threed/jpct/Object3DList;

    invoke-static {v0}, Lcom/threed/jpct/Object3DList;->access$1(Lcom/threed/jpct/Object3DList;)[Lcom/threed/jpct/Object3D;

    move-result-object v0

    iget v1, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/threed/jpct/Object3DList$1;->cnt:I

    aget-object v0, v0, v1

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ObjList Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/threed/jpct/Object3DList$1;->nextElement()Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method
