.class final Lcom/ardor3d/util/TextureManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/renderer/ContextCleanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/TextureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanForContext(Lcom/ardor3d/renderer/RenderContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, v0}, Lcom/ardor3d/util/TextureManager;->cleanAllTextures(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/RenderContext;Ljava/util/Map;)V

    return-void
.end method
