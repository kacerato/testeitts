.class public Lw5/o$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/o$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lw5/o$f;


# direct methods
.method public constructor <init>(Lw5/o$f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$unused"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iput-object p2, p0, Lw5/o$f$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v0, v0, Lw5/o$f;->c:Lw5/o;

    invoke-static {v0}, Lw5/o;->p1(Lw5/o;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v1, v1, Lw5/o$f;->c:Lw5/o;

    invoke-static {v1}, Lw5/o;->q1(Lw5/o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v1, v1, Lw5/o$f;->c:Lw5/o;

    invoke-static {v1}, Lw5/o;->r1(Lw5/o;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lw5/o$f$a;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v1, v1, Lw5/o$f;->c:Lw5/o;

    invoke-static {v1}, Lw5/o;->q1(Lw5/o;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lw5/o$f$a;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lw5/o$f$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw5/o$f$a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v3, v3, Lw5/o$f;->c:Lw5/o;

    invoke-static {v3}, Lw5/o;->r1(Lw5/o;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v0, v0, Lw5/o$f;->c:Lw5/o;

    invoke-static {v0}, Lw5/o;->u1(Lw5/o;)Lh7/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v0, v0, Lw5/o$f;->c:Lw5/o;

    invoke-static {v0}, Lw5/o;->u1(Lw5/o;)Lh7/d;

    move-result-object v0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_2
    iget-object v0, p0, Lw5/o$f$a;->c:Lw5/o$f;

    iget-object v0, v0, Lw5/o$f;->b:Lq7/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lq7/a;->p1()V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
