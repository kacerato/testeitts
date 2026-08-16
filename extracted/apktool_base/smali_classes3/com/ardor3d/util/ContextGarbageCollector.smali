.class public Lcom/ardor3d/util/ContextGarbageCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFinalCleanup(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ardor3d/util/TextureManager;->cleanAllTextures(Lcom/ardor3d/renderer/Renderer;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->cleanAllVBOs(Lcom/ardor3d/renderer/Renderer;)V

    invoke-static {p0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->cleanAllDisplayLists(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public static doRuntimeCleanup(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ardor3d/util/TextureManager;->cleanExpiredTextures(Lcom/ardor3d/renderer/Renderer;Ljava/util/Map;)V

    invoke-static {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->cleanExpiredVBOs(Lcom/ardor3d/renderer/Renderer;)V

    invoke-static {p0}, Lcom/ardor3d/util/scenegraph/DisplayListDelegate;->cleanExpiredDisplayLists(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method
