.class public Lcom/jme3/app/ResetStatsState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->render(Lcom/jme3/renderer/RenderManager;)V

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/jme3/renderer/Renderer;->getStatistics()Lcom/jme3/renderer/Statistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Statistics;->clearFrame()V

    return-void
.end method
