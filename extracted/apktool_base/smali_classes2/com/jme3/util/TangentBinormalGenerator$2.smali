.class Lcom/jme3/util/TangentBinormalGenerator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/util/TangentBinormalGenerator;->generateParallel(Lcom/jme3/scene/Spatial;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lcom/jme3/scene/Mesh;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/TangentBinormalGenerator$2;->val$m:Lcom/jme3/scene/Mesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/util/TangentBinormalGenerator$2;->val$m:Lcom/jme3/scene/Mesh;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jme3/util/TangentBinormalGenerator;->generate(Lcom/jme3/scene/Mesh;ZZ)V

    return-void
.end method
