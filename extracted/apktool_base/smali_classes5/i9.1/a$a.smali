.class public Li9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li9/a;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li9/a$a;->b:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Li9/a$a;->b:Li9/a;

    invoke-static {v0}, Li9/a;->a(Li9/a;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li9/a$a;->b:Li9/a;

    invoke-static {v1}, Li9/a;->a(Li9/a;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    iget-object v2, p0, Li9/a$a;->b:Li9/a;

    invoke-static {v2}, Li9/a;->b(Li9/a;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
