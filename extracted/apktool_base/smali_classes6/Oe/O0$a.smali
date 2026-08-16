.class public final LOe/O0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "Ljava/lang/Runnable;",
        "LFe/g<",
        "LDe/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:J = -0x3f2c4fd6dc101621L


# instance fields
.field public final b:LOe/O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/O0<",
            "*>;"
        }
    .end annotation
.end field

.field public c:LDe/c;

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LOe/O0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/O0<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/O0$a;->b:LOe/O0;

    return-void
.end method


# virtual methods
.method public a(LDe/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    iget-object v0, p0, LOe/O0$a;->b:LOe/O0;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LOe/O0$a;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LOe/O0$a;->b:LOe/O0;

    iget-object v1, v1, LOe/O0;->b:LVe/a;

    check-cast v1, LGe/g;

    invoke-interface {v1, p1}, LGe/g;->b(LDe/c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LDe/c;

    invoke-virtual {p0, p1}, LOe/O0$a;->a(LDe/c;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, LOe/O0$a;->b:LOe/O0;

    invoke-virtual {v0, p0}, LOe/O0;->l8(LOe/O0$a;)V

    return-void
.end method
