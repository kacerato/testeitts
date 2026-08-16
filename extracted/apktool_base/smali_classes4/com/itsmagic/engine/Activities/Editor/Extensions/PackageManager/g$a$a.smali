.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->B1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->B1()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "Error"

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    invoke-interface {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_3
    :goto_3
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->D1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->E1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    if-nez v0, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->r1()V

    :cond_5
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public b(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->B1()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->B1()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Importing:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 p1, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Download:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    invoke-interface {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->D1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->E1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->r1()V

    :cond_2
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public c(IJJ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->t1(I)I

    move-result v0

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->f()J

    move-result-wide v4

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->n()Z

    move-result v2

    move v12, v2

    :goto_0
    move-wide v13, v4

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    move v12, v3

    goto :goto_0

    :goto_1
    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v15

    monitor-enter v15

    move v11, v3

    :goto_2
    :try_start_0
    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    sget-object v16, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Download:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    move v3, v0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide v8, v13

    move v10, v12

    move/from16 v17, v11

    move-object/from16 v11, v16

    invoke-interface/range {v2 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->d(IJJJZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V

    add-int/lit8 v11, v17, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit v15

    return-void

    :goto_3
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
