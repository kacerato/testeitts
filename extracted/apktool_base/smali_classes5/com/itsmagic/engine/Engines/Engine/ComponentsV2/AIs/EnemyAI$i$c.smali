.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    return-object v0
.end method

.method public getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method
