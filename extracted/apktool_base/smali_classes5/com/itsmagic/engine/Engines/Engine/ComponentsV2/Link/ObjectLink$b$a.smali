.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, " "

    invoke-static {}, Lt6/j;->J1()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ObjectLink - export object to file"

    invoke-static {v1}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x1()Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhb/c;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EXPORTED_TO:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, LN7/c;->w0(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v1}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v1}, Lt6/j;->P1(Lt6/e;)V

    throw v0
.end method
