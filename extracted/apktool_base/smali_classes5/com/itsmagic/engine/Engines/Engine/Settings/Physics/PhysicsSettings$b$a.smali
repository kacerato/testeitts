.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->layers:Ljava/util/List;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;)V

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {v0, p1}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
