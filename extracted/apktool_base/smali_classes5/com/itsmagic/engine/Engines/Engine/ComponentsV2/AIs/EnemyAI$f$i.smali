.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f$i;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f$i;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$1102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Z)Z

    return-void
.end method

.method public get()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f$i;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)Z

    move-result v0

    return v0
.end method
