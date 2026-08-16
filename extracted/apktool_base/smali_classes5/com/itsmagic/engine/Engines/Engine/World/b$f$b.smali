.class public Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/b$f;->run()V
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

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/World/b$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/b$f;LLb/a;Lcom/itsmagic/engine/Engines/Engine/World/World$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$awll",
            "val$bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->d:Lcom/itsmagic/engine/Engines/Engine/World/b$f;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->b:LLb/a;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->b:LLb/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->loadAsync(LLb/a;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->hasMaterialForAsyncLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getMaterialsForAsyncLoad()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->type:Ljava/lang/String;

    const-string v5, "Texture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    :try_start_1
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lub/g;

    move-result-object v4

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a:Lub/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->c:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/b$f$b;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method
