.class Lcom/jme3/environment/EnvironmentCamera$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/environment/EnvironmentCamera;->snapshot(Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/environment/EnvironmentCamera;

.field final synthetic val$done:Lcom/jme3/environment/generation/JobProgressListener;

.field final synthetic val$scene:Lcom/jme3/scene/Spatial;


# direct methods
.method public constructor <init>(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/scene/Spatial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/jme3/environment/EnvironmentCamera$1;->val$done:Lcom/jme3/environment/generation/JobProgressListener;

    iput-object p3, p0, Lcom/jme3/environment/EnvironmentCamera$1;->val$scene:Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentCamera$1;->this$0:Lcom/jme3/environment/EnvironmentCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentCamera$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;

    iget-object v1, p0, Lcom/jme3/environment/EnvironmentCamera$1;->this$0:Lcom/jme3/environment/EnvironmentCamera;

    iget-object v2, p0, Lcom/jme3/environment/EnvironmentCamera$1;->val$done:Lcom/jme3/environment/generation/JobProgressListener;

    iget-object v3, p0, Lcom/jme3/environment/EnvironmentCamera$1;->val$scene:Lcom/jme3/scene/Spatial;

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;-><init>(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/scene/Spatial;)V

    .line 3
    iget-object v1, p0, Lcom/jme3/environment/EnvironmentCamera$1;->this$0:Lcom/jme3/environment/EnvironmentCamera;

    invoke-static {v1}, Lcom/jme3/environment/EnvironmentCamera;->access$000(Lcom/jme3/environment/EnvironmentCamera;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
