.class public interface abstract Lcom/ardor3d/renderer/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract clearEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
.end method

.method public abstract clearEnforcedStates()V
.end method

.method public abstract copyToTexture(Lcom/ardor3d/image/Texture;IIIIII)V
.end method

.method public abstract enforceState(Lcom/ardor3d/renderer/state/RenderState;)V
.end method

.method public abstract getBackgroundColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
.end method

.method public abstract getCamera()Lcom/ardor3d/renderer/Camera;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract render(Lcom/ardor3d/framework/Scene;Lcom/ardor3d/image/Texture;I)V
.end method

.method public abstract render(Lcom/ardor3d/framework/Scene;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/framework/Scene;",
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V
.end method

.method public abstract render(Lcom/ardor3d/scenegraph/Spatial;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Spatial;",
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract render(Ljava/util/List;Lcom/ardor3d/image/Texture;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;",
            "Lcom/ardor3d/image/Texture;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract render(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ardor3d/image/Texture;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
.end method

.method public abstract setMultipleTargets(Z)V
.end method

.method public abstract setupTexture(Lcom/ardor3d/image/Texture2D;)V
.end method
