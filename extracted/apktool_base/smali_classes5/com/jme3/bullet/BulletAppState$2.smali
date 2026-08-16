.class Lcom/jme3/bullet/BulletAppState$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/bullet/BulletAppState;->startPhysicsOnExecutor()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/bullet/BulletAppState;

.field final synthetic val$appState:Lcom/jme3/bullet/BulletAppState;


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/BulletAppState;Lcom/jme3/bullet/BulletAppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/jme3/bullet/BulletAppState$2;->val$appState:Lcom/jme3/bullet/BulletAppState;

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState$2;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState$2;->this$0:Lcom/jme3/bullet/BulletAppState;

    .line 3
    invoke-static {v0}, Lcom/jme3/bullet/BulletAppState;->access$300(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/BulletAppState$2;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-static {v2}, Lcom/jme3/bullet/BulletAppState;->access$400(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/bullet/BulletAppState$2;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-static {v3}, Lcom/jme3/bullet/BulletAppState;->access$500(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/bullet/BulletAppState;->createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState$2;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-static {v1}, Lcom/jme3/bullet/BulletAppState;->access$000(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->setSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    .line 6
    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState$2;->val$appState:Lcom/jme3/bullet/BulletAppState;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
