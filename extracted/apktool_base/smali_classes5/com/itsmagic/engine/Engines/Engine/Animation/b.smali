.class public Lcom/itsmagic/engine/Engines/Engine/Animation/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->b:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->e()V

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ".anim"

    invoke-static {p0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;

    invoke-direct {v3, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/b$c;->d()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Animation/b;->c:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
