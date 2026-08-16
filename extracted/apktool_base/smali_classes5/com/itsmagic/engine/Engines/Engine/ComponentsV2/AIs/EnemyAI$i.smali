.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapsableEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;)V

    const-string v2, "Attack delay"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;)V

    const-string v2, "Attack delay randomness"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$2900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;->a:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;)V

    const-string v3, "Attack function"

    invoke-virtual {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->k(Ljava/lang/String;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
