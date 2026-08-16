.class Lcom/jme3/bullet/BulletAppState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/bullet/BulletAppState;
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


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/BulletAppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState$1;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState$1;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-static {v0}, Lcom/jme3/bullet/BulletAppState;->access$000(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState$1;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-virtual {v1}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState$1;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-static {v1}, Lcom/jme3/bullet/BulletAppState;->access$100(Lcom/jme3/bullet/BulletAppState;)F

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/BulletAppState$1;->this$0:Lcom/jme3/bullet/BulletAppState;

    invoke-static {v2}, Lcom/jme3/bullet/BulletAppState;->access$200(Lcom/jme3/bullet/BulletAppState;)F

    move-result v2

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->update(F)V

    .line 4
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
    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
