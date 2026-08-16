.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->b:Ljava/io/File;

    invoke-static {v0}, LWg/b;->g(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->c:Ljava/lang/String;

    const-string v2, "\\s+"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, LTc/b;->Y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->E1(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a$a;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "Can\'t import obj file"

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i;->d:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->u1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$i$a;->b:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    throw v0
.end method
