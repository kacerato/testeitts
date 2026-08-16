.class public LY9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY9/a;

    invoke-direct {v0}, LY9/a;-><init>()V

    invoke-static {v0}, Lca/c;->t(Lca/a;)V

    new-instance v0, LY9/b;

    invoke-direct {v0}, LY9/b;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->g(LLb/j;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, LY9/c;->c()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, LY9/c;->d()V

    return-void
.end method

.method public static c()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-static {v1}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v3, v2, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, v2, Ld8/r;->c:Ljava/lang/Class;

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->j(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LJAVARuntime/SpatialObject;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJAVARuntime/SpatialObject;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, LJAVARuntime/SpatialObject;->validate()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v7, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LJAVARuntime/Component;

    if-ne v5, v6, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJAVARuntime/Component;

    if-eqz v5, :cond_5

    iget-object v5, v5, LJAVARuntime/Component;->myObject:LJAVARuntime/SpatialObject;

    if-nez v5, :cond_5

    invoke-virtual {v4, v7, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static d()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-static {v1}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    iget-object v3, v2, Ld8/r;->c:Ljava/lang/Class;

    iget-object v2, v2, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->j(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LJAVARuntime/SpatialObject;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJAVARuntime/SpatialObject;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, LJAVARuntime/SpatialObject;->validate()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v7, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, LJAVARuntime/SpatialObject;->isDontDestroyOnLoad()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v7, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LJAVARuntime/Component;

    if-ne v5, v6, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJAVARuntime/Component;

    if-eqz v5, :cond_2

    iget-object v5, v5, LJAVARuntime/Component;->myObject:LJAVARuntime/SpatialObject;

    if-nez v5, :cond_2

    invoke-virtual {v4, v7, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
