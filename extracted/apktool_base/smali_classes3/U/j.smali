.class public final LU/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/d;
.implements LV/o;
.implements LU/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LU/d;",
        "LV/o;",
        "LU/i;"
    }
.end annotation


# static fields
.field public static final D:Ljava/lang/String; = "Request"

.field public static final E:Ljava/lang/String; = "Glide"

.field public static final F:Z


# instance fields
.field public A:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public B:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public C:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:LZ/c;

.field public final c:Ljava/lang/Object;

.field public final d:LU/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LU/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:LU/e;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bumptech/glide/d;

.field public final h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final j:LU/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LU/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public final m:Lcom/bumptech/glide/h;

.field public final n:LV/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/p<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LU/g<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final p:LW/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Lcom/bumptech/glide/load/engine/t;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;"
        }
    .end annotation
.end field

.field public s:Lcom/bumptech/glide/load/engine/j$d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public t:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public volatile u:Lcom/bumptech/glide/load/engine/j;

.field public v:LU/j$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public w:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public x:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LU/j;->F:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LU/a;IILcom/bumptech/glide/h;LV/p;LU/g;Ljava/util/List;LU/e;Lcom/bumptech/glide/load/engine/j;LW/g;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # LU/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "LU/a<",
            "*>;II",
            "Lcom/bumptech/glide/h;",
            "LV/p<",
            "TR;>;",
            "LU/g<",
            "TR;>;",
            "Ljava/util/List<",
            "LU/g<",
            "TR;>;>;",
            "LU/e;",
            "Lcom/bumptech/glide/load/engine/j;",
            "LW/g<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, LU/j;->F:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, LU/j;->a:Ljava/lang/String;

    invoke-static {}, LZ/c;->a()LZ/c;

    move-result-object v1

    iput-object v1, v0, LU/j;->b:LZ/c;

    move-object v1, p3

    iput-object v1, v0, LU/j;->c:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, LU/j;->f:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, LU/j;->g:Lcom/bumptech/glide/d;

    move-object v2, p4

    iput-object v2, v0, LU/j;->h:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, LU/j;->i:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, LU/j;->j:LU/a;

    move v2, p7

    iput v2, v0, LU/j;->k:I

    move v2, p8

    iput v2, v0, LU/j;->l:I

    move-object v2, p9

    iput-object v2, v0, LU/j;->m:Lcom/bumptech/glide/h;

    move-object v2, p10

    iput-object v2, v0, LU/j;->n:LV/p;

    move-object v2, p11

    iput-object v2, v0, LU/j;->d:LU/g;

    move-object v2, p12

    iput-object v2, v0, LU/j;->o:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, LU/j;->e:LU/e;

    move-object/from16 v2, p14

    iput-object v2, v0, LU/j;->u:Lcom/bumptech/glide/load/engine/j;

    move-object/from16 v2, p15

    iput-object v2, v0, LU/j;->p:LW/g;

    move-object/from16 v2, p16

    iput-object v2, v0, LU/j;->q:Ljava/util/concurrent/Executor;

    sget-object v2, LU/j$a;->PENDING:LU/j$a;

    iput-object v2, v0, LU/j;->v:LU/j$a;

    iget-object v2, v0, LU/j;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/bumptech/glide/d;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, LU/j;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method public static u(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static x(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LU/a;IILcom/bumptech/glide/h;LV/p;LU/g;Ljava/util/List;LU/e;Lcom/bumptech/glide/load/engine/j;LW/g;Ljava/util/concurrent/Executor;)LU/j;
    .locals 18
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "LU/a<",
            "*>;II",
            "Lcom/bumptech/glide/h;",
            "LV/p<",
            "TR;>;",
            "LU/g<",
            "TR;>;",
            "Ljava/util/List<",
            "LU/g<",
            "TR;>;>;",
            "LU/e;",
            "Lcom/bumptech/glide/load/engine/j;",
            "LW/g<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "LU/j<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, LU/j;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, LU/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;LU/a;IILcom/bumptech/glide/h;LV/p;LU/g;Ljava/util/List;LU/e;Lcom/bumptech/glide/load/engine/j;LW/g;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method


# virtual methods
.method public final A()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    invoke-virtual {p0}, LU/j;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LU/j;->h:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LU/j;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, LU/j;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, LU/j;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object v1, p0, LU/j;->n:LV/p;

    invoke-interface {v1, v0}, LV/p;->m(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->COMPLETE:LU/j$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/bumptech/glide/load/engine/t;LC/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;",
            "LC/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LU/j;->b:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v0, p0, LU/j;->s:Lcom/bumptech/glide/load/engine/j$d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LU/j;->i:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LU/j;->c(Lcom/bumptech/glide/load/engine/GlideException;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, LU/j;->i:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LU/j;->m()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    iput-object v0, p0, LU/j;->r:Lcom/bumptech/glide/load/engine/t;

    sget-object p2, LU/j$a;->COMPLETE:LU/j$a;

    iput-object p2, p0, LU/j;->v:LU/j$a;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p2, p0, LU/j;->u:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/j;->l(Lcom/bumptech/glide/load/engine/t;)V

    return-void

    :catchall_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_3

    :cond_2
    :try_start_3
    invoke-virtual {p0, p1, v2, p2}, LU/j;->z(Lcom/bumptech/glide/load/engine/t;Ljava/lang/Object;LC/a;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_3
    :goto_0
    :try_start_4
    iput-object v0, p0, LU/j;->r:Lcom/bumptech/glide/load/engine/t;

    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LU/j;->i:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LU/j;->c(Lcom/bumptech/glide/load/engine/GlideException;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p2, p0, LU/j;->u:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/j;->l(Lcom/bumptech/glide/load/engine/t;)V

    return-void

    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_6

    iget-object p2, p0, LU/j;->u:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/j;->l(Lcom/bumptech/glide/load/engine/t;)V

    :cond_6
    throw p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, LU/j;->y(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public clear()V
    .locals 5

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LU/j;->i()V

    iget-object v1, p0, LU/j;->b:LZ/c;

    invoke-virtual {v1}, LZ/c;->c()V

    iget-object v1, p0, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->CLEARED:LU/j$a;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LU/j;->n()V

    iget-object v1, p0, LU/j;->r:Lcom/bumptech/glide/load/engine/t;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, LU/j;->r:Lcom/bumptech/glide/load/engine/t;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, LU/j;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LU/j;->n:LV/p;

    invoke-virtual {p0}, LU/j;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, LV/p;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object v2, p0, LU/j;->v:LU/j$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v0, p0, LU/j;->u:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/j;->l(Lcom/bumptech/glide/load/engine/t;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d(II)V
    .locals 24

    move-object/from16 v15, p0

    iget-object v0, v15, LU/j;->b:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-object v14, v15, LU/j;->c:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v0, LU/j;->F:Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onSizeReady in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, LU/j;->t:J

    invoke-static {v2, v3}, LY/g;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, LU/j;->t(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v23, v14

    move-object v1, v15

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v1, v15, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->WAITING_FOR_SIZE:LU/j$a;

    if-eq v1, v2, :cond_1

    monitor-exit v14

    return-void

    :cond_1
    sget-object v13, LU/j$a;->RUNNING:LU/j$a;

    iput-object v13, v15, LU/j;->v:LU/j$a;

    iget-object v1, v15, LU/j;->j:LU/a;

    invoke-virtual {v1}, LU/a;->P()F

    move-result v1

    move/from16 v2, p1

    invoke-static {v2, v1}, LU/j;->u(IF)I

    move-result v2

    iput v2, v15, LU/j;->z:I

    move/from16 v2, p2

    invoke-static {v2, v1}, LU/j;->u(IF)I

    move-result v1

    iput v1, v15, LU/j;->A:I

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished setup for calling load in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, LU/j;->t:J

    invoke-static {v2, v3}, LY/g;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, LU/j;->t(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v15, LU/j;->u:Lcom/bumptech/glide/load/engine/j;

    iget-object v2, v15, LU/j;->g:Lcom/bumptech/glide/d;

    iget-object v3, v15, LU/j;->h:Ljava/lang/Object;

    iget-object v4, v15, LU/j;->j:LU/a;

    invoke-virtual {v4}, LU/a;->O()LC/e;

    move-result-object v4

    iget v5, v15, LU/j;->z:I

    iget v6, v15, LU/j;->A:I

    iget-object v7, v15, LU/j;->j:LU/a;

    invoke-virtual {v7}, LU/a;->N()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v15, LU/j;->i:Ljava/lang/Class;

    iget-object v9, v15, LU/j;->m:Lcom/bumptech/glide/h;

    iget-object v10, v15, LU/j;->j:LU/a;

    invoke-virtual {v10}, LU/a;->B()Lcom/bumptech/glide/load/engine/i;

    move-result-object v10

    iget-object v11, v15, LU/j;->j:LU/a;

    invoke-virtual {v11}, LU/a;->R()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v15, LU/j;->j:LU/a;

    invoke-virtual {v12}, LU/a;->g0()Z

    move-result v12

    move-object/from16 v16, v13

    iget-object v13, v15, LU/j;->j:LU/a;

    invoke-virtual {v13}, LU/a;->Z()Z

    move-result v13

    move/from16 v21, v0

    iget-object v0, v15, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->H()LC/h;

    move-result-object v0

    move-object/from16 p1, v0

    iget-object v0, v15, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->X()Z

    move-result v0

    move/from16 p2, v0

    iget-object v0, v15, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->T()Z

    move-result v0

    move/from16 v17, v0

    iget-object v0, v15, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->S()Z

    move-result v0

    move/from16 v18, v0

    iget-object v0, v15, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->G()Z

    move-result v0

    move/from16 v19, v0

    iget-object v0, v15, LU/j;->q:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/bumptech/glide/load/engine/j;->g(Lcom/bumptech/glide/d;Ljava/lang/Object;LC/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZLC/h;ZZZZLU/i;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/j$d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, LU/j;->s:Lcom/bumptech/glide/load/engine/j$d;

    iget-object v0, v1, LU/j;->v:LU/j$a;

    move-object/from16 v2, v22

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, v1, LU/j;->s:Lcom/bumptech/glide/load/engine/j$d;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v21, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, LU/j;->t:J

    invoke-static {v2, v3}, LY/g;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LU/j;->t(Ljava/lang/String;)V

    :cond_4
    monitor-exit v23

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->CLEARED:LU/j$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->COMPLETE:LU/j$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LU/j;->b:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public h(LU/d;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, LU/j;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, LU/j;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, v1, LU/j;->k:I

    iget v5, v1, LU/j;->l:I

    iget-object v6, v1, LU/j;->h:Ljava/lang/Object;

    iget-object v7, v1, LU/j;->i:Ljava/lang/Class;

    iget-object v8, v1, LU/j;->j:LU/a;

    iget-object v9, v1, LU/j;->m:Lcom/bumptech/glide/h;

    iget-object v10, v1, LU/j;->o:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    move v10, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, LU/j;

    iget-object v11, v0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v2, v0, LU/j;->k:I

    iget v12, v0, LU/j;->l:I

    iget-object v13, v0, LU/j;->h:Ljava/lang/Object;

    iget-object v14, v0, LU/j;->i:Ljava/lang/Class;

    iget-object v15, v0, LU/j;->j:LU/a;

    iget-object v3, v0, LU/j;->m:Lcom/bumptech/glide/h;

    iget-object v0, v0, LU/j;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_3

    if-ne v5, v12, :cond_3

    invoke-static {v6, v13}, LY/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v8, v15}, LU/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3

    :goto_3
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final i()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-boolean v0, p0, LU/j;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->RUNNING:LU/j$a;

    if-eq v1, v2, :cond_1

    sget-object v2, LU/j$a;->WAITING_FOR_SIZE:LU/j$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LU/j;->i()V

    iget-object v1, p0, LU/j;->b:LZ/c;

    invoke-virtual {v1}, LZ/c;->c()V

    invoke-static {}, LY/g;->b()J

    move-result-wide v1

    iput-wide v1, p0, LU/j;->t:J

    iget-object v1, p0, LU/j;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget v1, p0, LU/j;->k:I

    iget v2, p0, LU/j;->l:I

    invoke-static {v1, v2}, LY/m;->v(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LU/j;->k:I

    iput v1, p0, LU/j;->z:I

    iget v1, p0, LU/j;->l:I

    iput v1, p0, LU/j;->A:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, LU/j;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, LU/j;->y(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, LU/j;->v:LU/j$a;

    sget-object v2, LU/j$a;->RUNNING:LU/j$a;

    if-eq v1, v2, :cond_8

    sget-object v3, LU/j$a;->COMPLETE:LU/j$a;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, LU/j;->r:Lcom/bumptech/glide/load/engine/t;

    sget-object v2, LC/a;->MEMORY_CACHE:LC/a;

    invoke-virtual {p0, v1, v2}, LU/j;->b(Lcom/bumptech/glide/load/engine/t;LC/a;)V

    monitor-exit v0

    return-void

    :cond_3
    sget-object v1, LU/j$a;->WAITING_FOR_SIZE:LU/j$a;

    iput-object v1, p0, LU/j;->v:LU/j$a;

    iget v3, p0, LU/j;->k:I

    iget v4, p0, LU/j;->l:I

    invoke-static {v3, v4}, LY/m;->v(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, LU/j;->k:I

    iget v4, p0, LU/j;->l:I

    invoke-virtual {p0, v3, v4}, LU/j;->d(II)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, LU/j;->n:LV/p;

    invoke-interface {v3, p0}, LV/p;->i(LV/o;)V

    :goto_2
    iget-object v3, p0, LU/j;->v:LU/j$a;

    if-eq v3, v2, :cond_5

    if-ne v3, v1, :cond_6

    :cond_5
    invoke-virtual {p0}, LU/j;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LU/j;->n:LV/p;

    invoke-virtual {p0}, LU/j;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, LV/p;->k(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    sget-boolean v1, LU/j;->F:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LU/j;->t:J

    invoke-static {v2, v3}, LY/g;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LU/j;->t(Ljava/lang/String;)V

    :cond_7
    monitor-exit v0

    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->e:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LU/e;->c(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final l()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->e:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LU/e;->b(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final m()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->e:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LU/e;->g(LU/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final n()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    invoke-virtual {p0}, LU/j;->i()V

    iget-object v0, p0, LU/j;->b:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-object v0, p0, LU/j;->n:LV/p;

    invoke-interface {v0, p0}, LV/p;->a(LV/o;)V

    iget-object v0, p0, LU/j;->s:Lcom/bumptech/glide/load/engine/j$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j$d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LU/j;->s:Lcom/bumptech/glide/load/engine/j$d;

    :cond_0
    return-void
.end method

.method public final o()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->D()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LU/j;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->C()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->C()I

    move-result v0

    invoke-virtual {p0, v0}, LU/j;->s(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LU/j;->w:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, LU/j;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final p()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LU/j;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->F()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->F()I

    move-result v0

    invoke-virtual {p0, v0}, LU/j;->s(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LU/j;->y:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, LU/j;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LU/j;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LU/j;->clear()V

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

.method public final q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->K()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LU/j;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->L()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->L()I

    move-result v0

    invoke-virtual {p0, v0}, LU/j;->s(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LU/j;->x:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, LU/j;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final r()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->e:LU/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LU/e;->getRoot()LU/e;

    move-result-object v0

    invoke-interface {v0}, LU/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final s(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->Q()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/j;->j:LU/a;

    invoke-virtual {v0}, LU/a;->Q()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU/j;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LU/j;->g:Lcom/bumptech/glide/d;

    invoke-static {v1, p1, v0}, LN/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, LU/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final v()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->e:LU/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LU/e;->d(LU/d;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LU/j;->e:LU/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LU/e;->i(LU/d;)V

    :cond_0
    return-void
.end method

.method public final y(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 8

    iget-object v0, p0, LU/j;->b:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-object v0, p0, LU/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU/j;->C:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/GlideException;->setOrigin(Ljava/lang/Exception;)V

    iget-object v1, p0, LU/j;->g:Lcom/bumptech/glide/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->g()I

    move-result v1

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LU/j;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LU/j;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LU/j;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 p2, 0x0

    iput-object p2, p0, LU/j;->s:Lcom/bumptech/glide/load/engine/j$d;

    sget-object p2, LU/j$a;->FAILED:LU/j$a;

    iput-object p2, p0, LU/j;->v:LU/j$a;

    const/4 p2, 0x1

    iput-boolean p2, p0, LU/j;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, LU/j;->o:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU/g;

    iget-object v5, p0, LU/j;->h:Ljava/lang/Object;

    iget-object v6, p0, LU/j;->n:LV/p;

    invoke-virtual {p0}, LU/j;->r()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, LU/g;->d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LV/p;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    move v3, v1

    :cond_2
    iget-object v2, p0, LU/j;->d:LU/g;

    if-eqz v2, :cond_3

    iget-object v4, p0, LU/j;->h:Ljava/lang/Object;

    iget-object v5, p0, LU/j;->n:LV/p;

    invoke-virtual {p0}, LU/j;->r()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, LU/g;->d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LV/p;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    or-int p1, v3, p2

    if-nez p1, :cond_4

    invoke-virtual {p0}, LU/j;->A()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :try_start_2
    iput-boolean v1, p0, LU/j;->B:Z

    invoke-virtual {p0}, LU/j;->v()V

    monitor-exit v0

    return-void

    :goto_3
    iput-boolean v1, p0, LU/j;->B:Z

    throw p1

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final z(Lcom/bumptech/glide/load/engine/t;Ljava/lang/Object;LC/a;)V
    .locals 10
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;TR;",
            "LC/a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, LU/j;->r()Z

    move-result v6

    sget-object v0, LU/j$a;->COMPLETE:LU/j$a;

    iput-object v0, p0, LU/j;->v:LU/j$a;

    iput-object p1, p0, LU/j;->r:Lcom/bumptech/glide/load/engine/t;

    iget-object p1, p0, LU/j;->g:Lcom/bumptech/glide/d;

    invoke-virtual {p1}, Lcom/bumptech/glide/d;->g()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LU/j;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LU/j;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LU/j;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, LU/j;->t:J

    invoke-static {v0, v1}, LY/g;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LU/j;->B:Z

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, LU/j;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/g;

    iget-object v2, p0, LU/j;->h:Ljava/lang/Object;

    iget-object v3, p0, LU/j;->n:LV/p;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, LU/g;->e(Ljava/lang/Object;Ljava/lang/Object;LV/p;LC/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move v9, v7

    :cond_2
    iget-object v0, p0, LU/j;->d:LU/g;

    if-eqz v0, :cond_3

    iget-object v2, p0, LU/j;->h:Ljava/lang/Object;

    iget-object v3, p0, LU/j;->n:LV/p;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, LU/g;->e(Ljava/lang/Object;Ljava/lang/Object;LV/p;LC/a;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v7

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_4

    iget-object p1, p0, LU/j;->p:LW/g;

    invoke-interface {p1, p3, v6}, LW/g;->a(LC/a;Z)LW/f;

    move-result-object p1

    iget-object p3, p0, LU/j;->n:LV/p;

    invoke-interface {p3, p2, p1}, LV/p;->h(Ljava/lang/Object;LW/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-boolean v7, p0, LU/j;->B:Z

    invoke-virtual {p0}, LU/j;->w()V

    return-void

    :goto_2
    iput-boolean v7, p0, LU/j;->B:Z

    throw p1
.end method
