.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$activeDownload"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object p1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    invoke-interface {v3, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->D1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->E1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Download onEthernetFailed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Failed:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    invoke-interface {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->D1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->E1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadOut"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    if-eqz v0, :cond_4

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->B1()Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->B1()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Importing:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Download:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    invoke-interface {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->C1()Ljava/util/List;

    move-result-object p1

    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->o:Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->D1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

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

    goto :goto_5

    :goto_2
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_3
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$a;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_5
    return-void
.end method
