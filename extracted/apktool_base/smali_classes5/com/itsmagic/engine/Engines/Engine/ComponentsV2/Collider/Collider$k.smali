.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$k;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->navMesh:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/c$a;)V

    :cond_3
    return-void
.end method
