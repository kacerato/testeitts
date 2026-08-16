.class public Lcom/itsmagic/engine/Activities/Editor/Utils/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LG8/a;",
            ">;)",
            "Ljava/util/List<",
            "LG8/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG8/a;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG8/a;

    invoke-virtual {v1}, LG8/a;->j()LG8/a$a;

    move-result-object v4

    invoke-virtual {v3}, LG8/a;->j()LG8/a$a;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, LG8/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LG8/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, LG8/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, LG8/a;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1}, LG8/a;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LG8/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, LG8/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, LG8/a;->k(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "holder",
            "parent",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "LG8/a;",
            "Lcom/itsmagic/engine/Activities/Editor/Utils/B;",
            ")",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_6

    const/4 v1, 0x0

    if-nez p2, :cond_3

    new-instance p2, Ldd/b;

    const-string v2, "Node graph"

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Utils/A$a;

    invoke-direct {v3, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/A$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V

    invoke-direct {p2, v2, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :try_start_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    :goto_0
    :try_start_1
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    new-instance v6, Ld8/p;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Ld8/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->i()Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_1
    sget-object v3, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld8/p;

    invoke-virtual {v3}, Ld8/p;->a()LG8/a;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, LG8/a;->f()Ljava/util/List;

    move-result-object p2

    :goto_4
    if-eqz p2, :cond_6

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG8/a;

    invoke-virtual {v2}, LG8/a;->j()LG8/a$a;

    move-result-object v3

    sget-object v4, LG8/a$a;->Folder:LG8/a$a;

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, LG8/a;->d()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ldd/b;

    invoke-virtual {v2}, LG8/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->b(Landroid/content/Context;Landroid/view/View;LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    new-instance v3, Ldd/b;

    invoke-virtual {v2}, LG8/a;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;

    invoke-direct {v5, v2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/A$b;-><init>(LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V

    invoke-direct {v3, v4, v5}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "holder",
            "callBack"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/A;->b(Landroid/content/Context;Landroid/view/View;LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, v0, p0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    :cond_0
    return-void
.end method
