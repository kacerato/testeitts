.class public Li9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li9/b;


# direct methods
.method public constructor <init>(Li9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li9/b$a;->b:Li9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li9/b$a;->b:Li9/b;

    invoke-static {v1}, Li9/b;->b(Li9/b;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    iget-object v2, p0, Li9/b$a;->b:Li9/b;

    invoke-static {v2}, Li9/b;->a(Li9/b;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
