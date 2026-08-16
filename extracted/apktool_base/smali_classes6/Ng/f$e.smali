.class public LNg/f$e;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f;->p(ILTg/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LTg/c;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:LNg/f;


# direct methods
.method public varargs constructor <init>(LNg/f;Ljava/lang/String;[Ljava/lang/Object;ILTg/c;IZ)V
    .locals 0

    iput-object p1, p0, LNg/f$e;->g:LNg/f;

    iput p4, p0, LNg/f$e;->c:I

    iput-object p5, p0, LNg/f$e;->d:LTg/c;

    iput p6, p0, LNg/f$e;->e:I

    iput-boolean p7, p0, LNg/f$e;->f:Z

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 5

    :try_start_0
    iget-object v0, p0, LNg/f$e;->g:LNg/f;

    iget-object v0, v0, LNg/f;->k:LNg/k;

    iget v1, p0, LNg/f$e;->c:I

    iget-object v2, p0, LNg/f$e;->d:LTg/c;

    iget v3, p0, LNg/f$e;->e:I

    iget-boolean v4, p0, LNg/f$e;->f:Z

    invoke-interface {v0, v1, v2, v3, v4}, LNg/k;->c(ILTg/e;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LNg/f$e;->g:LNg/f;

    iget-object v1, v1, LNg/f;->s:LNg/i;

    iget v2, p0, LNg/f$e;->c:I

    sget-object v3, LNg/a;->CANCEL:LNg/a;

    invoke-virtual {v1, v2, v3}, LNg/i;->n(ILNg/a;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, LNg/f$e;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, LNg/f$e;->g:LNg/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, LNg/f$e;->g:LNg/f;

    iget-object v1, v1, LNg/f;->u:Ljava/util/Set;

    iget v2, p0, LNg/f$e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

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
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
