.class public Lcom/itsmagic/engine/Engines/Engine/World/World$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LLb/a;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/World/World;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/World;LLb/a;Lcom/itsmagic/engine/Engines/Engine/World/World$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$bundle",
            "val$isAsync"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->e:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->b:LLb/a;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->b:LLb/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->loadAsync(LLb/a;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->hasMaterialForAsyncLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getMaterialsForAsyncLoad()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->d:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->type:Ljava/lang/String;

    const-string v4, "Texture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_1

    :try_start_3
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->t(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lub/g;

    move-result-object v3

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a:Lub/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "component"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/World$a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method
