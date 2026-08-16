.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->h2()V
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


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    const-string v2, "Failed to import"

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Finished:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    if-nez v1, :cond_0

    const-string v1, "Package imported successfully"

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_0
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Import:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    invoke-interface {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ld8/j;->v0()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :cond_3
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public c(III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "steps",
            "count",
            "percentage"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->t1(I)I

    move-result p3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    iput p3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->h:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    iput p1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->i:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p1

    iput p2, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->j:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    if-eqz v1, :cond_0

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Import:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p3

    invoke-interface/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->c(IJJLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public onCancel()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->u1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Finished:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
