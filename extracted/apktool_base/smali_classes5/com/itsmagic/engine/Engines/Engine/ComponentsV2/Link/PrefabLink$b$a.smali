.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PrefabLink - edit prefab"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->getFinalEditableTemplateObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->getFinalEditableTemplateObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LJ3/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const-string v1, "Ops! please, reload world."

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
