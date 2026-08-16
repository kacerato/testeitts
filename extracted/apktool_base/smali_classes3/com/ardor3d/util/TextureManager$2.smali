.class final Lcom/ardor3d/util/TextureManager$2;
.super Lcom/ardor3d/renderer/RendererCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/util/TextureManager;->handleTextureDelete(Lcom/ardor3d/renderer/Renderer;Lcom/google/common/collect/S1;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ardor3d/renderer/RendererCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$glref:Ljava/lang/Object;

.field final synthetic val$idMap:Lcom/google/common/collect/S1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/TextureManager$2;->val$idMap:Lcom/google/common/collect/S1;

    iput-object p2, p0, Lcom/ardor3d/util/TextureManager$2;->val$glref:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ardor3d/renderer/RendererCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/util/TextureManager$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/renderer/RendererCallable;->getRenderer()Lcom/ardor3d/renderer/Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/util/TextureManager$2;->val$idMap:Lcom/google/common/collect/S1;

    iget-object v2, p0, Lcom/ardor3d/util/TextureManager$2;->val$glref:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteTextureIds(Ljava/util/Collection;)V

    const/4 v0, 0x0

    return-object v0
.end method
