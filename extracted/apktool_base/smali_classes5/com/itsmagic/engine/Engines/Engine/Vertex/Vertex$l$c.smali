.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$c;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$c;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$c;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->l:Z

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

    :cond_0
    return-void
.end method
