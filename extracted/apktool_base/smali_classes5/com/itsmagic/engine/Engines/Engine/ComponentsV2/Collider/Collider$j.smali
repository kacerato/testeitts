.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;I)I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    :cond_0
    return-void
.end method
