.class public LNg/f$f;
.super LGg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNg/f;->t(ILNg/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LNg/a;

.field public final synthetic e:LNg/f;


# direct methods
.method public varargs constructor <init>(LNg/f;Ljava/lang/String;[Ljava/lang/Object;ILNg/a;)V
    .locals 0

    iput-object p1, p0, LNg/f$f;->e:LNg/f;

    iput p4, p0, LNg/f$f;->c:I

    iput-object p5, p0, LNg/f$f;->d:LNg/a;

    invoke-direct {p0, p2, p3}, LGg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    iget-object v0, p0, LNg/f$f;->e:LNg/f;

    iget-object v0, v0, LNg/f;->k:LNg/k;

    iget v1, p0, LNg/f$f;->c:I

    iget-object v2, p0, LNg/f$f;->d:LNg/a;

    invoke-interface {v0, v1, v2}, LNg/k;->d(ILNg/a;)V

    iget-object v0, p0, LNg/f$f;->e:LNg/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LNg/f$f;->e:LNg/f;

    iget-object v1, v1, LNg/f;->u:Ljava/util/Set;

    iget v2, p0, LNg/f$f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
