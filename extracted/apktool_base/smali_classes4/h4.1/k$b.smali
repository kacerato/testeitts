.class public Lh4/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/k;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lh4/g;)Z
    .locals 0

    invoke-static {p0}, Lh4/k$b;->d(Lh4/g;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lh4/g;)Z
    .locals 1

    invoke-virtual {p0}, Lh4/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh4/g;->a()Lh4/k;

    move-result-object p0

    invoke-static {}, Lh4/k;->b()Lh4/k;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lh4/k;->b()Lh4/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lh4/k;->b()Lh4/k;

    move-result-object v0

    invoke-virtual {v0}, Lh4/k;->w()V

    invoke-static {}, Lh4/k;->d()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lh4/k;->d()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lh4/l;

    invoke-direct {v2}, Lh4/l;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v0}, Lh4/k;->c(Lh4/k;)Lh4/k;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->A(Ljava/lang/String;)Lh4/k;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->c(Lh4/k;)Lh4/k;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
