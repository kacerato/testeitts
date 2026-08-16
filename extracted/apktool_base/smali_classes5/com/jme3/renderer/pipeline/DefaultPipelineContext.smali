.class public Lcom/jme3/renderer/pipeline/DefaultPipelineContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/pipeline/PipelineContext;


# instance fields
.field private final rendered:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/renderer/pipeline/DefaultPipelineContext;->rendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public endContextRenderFrame(Lcom/jme3/renderer/RenderManager;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/renderer/pipeline/DefaultPipelineContext;->rendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public endViewPortRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public startViewPortRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)Z
    .locals 0

    iget-object p1, p0, Lcom/jme3/renderer/pipeline/DefaultPipelineContext;->rendered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    return p1
.end method
