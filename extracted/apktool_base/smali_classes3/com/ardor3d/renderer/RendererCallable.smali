.class public abstract Lcom/ardor3d/renderer/RendererCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private _renderer:Lcom/ardor3d/renderer/Renderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/ardor3d/renderer/Renderer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/RendererCallable;->_renderer:Lcom/ardor3d/renderer/Renderer;

    return-object v0
.end method

.method public setRenderer(Lcom/ardor3d/renderer/Renderer;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/RendererCallable;->_renderer:Lcom/ardor3d/renderer/Renderer;

    return-void
.end method
