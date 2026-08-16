.class Lcom/threed/jpct/VisListManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private buf2Vis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/VisList;",
            ">;>;"
        }
    .end annotation
.end field

.field isDisposed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/VisListManager;->isDisposed:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/VisListManager;->isDisposed:Z

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/VisListManager;->dispose()V

    return-void
.end method

.method public getVisList(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/VisList;)Lcom/threed/jpct/VisList;
    .locals 7

    iget-object v0, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/threed/jpct/FrameBuffer;->register(Lcom/threed/jpct/VisListManager;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p1, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    iput-wide v0, p2, Lcom/threed/jpct/VisList;->lastCycle:J

    return-object p2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/VisList;

    iget-wide v3, v2, Lcom/threed/jpct/VisList;->lastCycle:J

    iget-wide v5, p1, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    move-object v1, v2

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/threed/jpct/VisList;

    invoke-virtual {p2}, Lcom/threed/jpct/VisList;->getMaxSize()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/threed/jpct/VisList;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Additional visibility list ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") created with size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/threed/jpct/VisList;->getMaxSize()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_2
    iget-wide p1, p1, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    iput-wide p1, v1, Lcom/threed/jpct/VisList;->lastCycle:J

    return-object v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/VisListManager;->buf2Vis:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "Visibility lists disposed!"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
