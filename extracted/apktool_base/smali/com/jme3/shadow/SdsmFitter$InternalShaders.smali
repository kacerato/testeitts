.class Lcom/jme3/shadow/SdsmFitter$InternalShaders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shadow/SdsmFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalShaders"
.end annotation


# instance fields
.field public final depthReduceShader:Lcom/jme3/renderer/opengl/ComputeShader;

.field public final fitFrustumsShader:Lcom/jme3/renderer/opengl/ComputeShader;

.field final synthetic this$0:Lcom/jme3/shadow/SdsmFitter;


# direct methods
.method public constructor <init>(Lcom/jme3/shadow/SdsmFitter;Lcom/jme3/asset/AssetManager;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Common/MatDefs/Shadow/Sdsm/ReduceDepth.comp"

    invoke-interface {p2, p1}, Lcom/jme3/asset/AssetManager;->loadAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Common/MatDefs/Shadow/Sdsm/FitLightFrustums.comp"

    invoke-interface {p2, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->buildShader(Ljava/lang/String;Z)Lcom/jme3/renderer/opengl/ComputeShader;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->depthReduceShader:Lcom/jme3/renderer/opengl/ComputeShader;

    invoke-direct {p0, p2, p3}, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->buildShader(Ljava/lang/String;Z)Lcom/jme3/renderer/opengl/ComputeShader;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->fitFrustumsShader:Lcom/jme3/renderer/opengl/ComputeShader;

    return-void
.end method

.method private buildShader(Ljava/lang/String;Z)Lcom/jme3/renderer/opengl/ComputeShader;
    .locals 3

    if-eqz p2, :cond_0

    new-instance p2, Lcom/jme3/renderer/opengl/ComputeShader;

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-static {v0}, Lcom/jme3/shadow/SdsmFitter;->access$000(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/opengl/GL4;

    move-result-object v0

    const-string v1, "RESOLVE_DEPTH_MS"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/jme3/renderer/opengl/ComputeShader;-><init>(Lcom/jme3/renderer/opengl/GL4;Ljava/lang/String;[[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/jme3/renderer/opengl/ComputeShader;

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-static {v0}, Lcom/jme3/shadow/SdsmFitter;->access$000(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/opengl/GL4;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/jme3/renderer/opengl/ComputeShader;-><init>(Lcom/jme3/renderer/opengl/GL4;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->this$0:Lcom/jme3/shadow/SdsmFitter;

    invoke-static {p1}, Lcom/jme3/shadow/SdsmFitter;->access$100(Lcom/jme3/shadow/SdsmFitter;)Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/jme3/renderer/Renderer;->registerNativeObject(Lcom/jme3/util/NativeObject;)V

    return-object p2
.end method


# virtual methods
.method public cleanup(Lcom/jme3/renderer/Renderer;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->depthReduceShader:Lcom/jme3/renderer/opengl/ComputeShader;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/opengl/ComputeShader;->deleteObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/shadow/SdsmFitter$InternalShaders;->fitFrustumsShader:Lcom/jme3/renderer/opengl/ComputeShader;

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/opengl/ComputeShader;->deleteObject(Ljava/lang/Object;)V

    return-void
.end method
