.class public abstract Lcom/google/common/util/concurrent/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/p0;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/f$k;,
        Lcom/google/common/util/concurrent/f$j;,
        Lcom/google/common/util/concurrent/f$g;,
        Lcom/google/common/util/concurrent/f$i;,
        Lcom/google/common/util/concurrent/f$h;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final h:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/google/common/util/concurrent/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/common/util/concurrent/f0;

.field public final b:Lcom/google/common/util/concurrent/f0$a;

.field public final c:Lcom/google/common/util/concurrent/f0$a;

.field public final d:Lcom/google/common/util/concurrent/f0$a;

.field public final e:Lcom/google/common/util/concurrent/f0$a;

.field public final f:Lcom/google/common/util/concurrent/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Lcom/google/common/util/concurrent/f$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/f$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/f;->h:Lcom/google/common/util/concurrent/c0$a;

    new-instance v0, Lcom/google/common/util/concurrent/f$b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f$b;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/f;->i:Lcom/google/common/util/concurrent/c0$a;

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->w(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/f;->j:Lcom/google/common/util/concurrent/c0$a;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v1}, Lcom/google/common/util/concurrent/f;->w(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;

    move-result-object v2

    sput-object v2, Lcom/google/common/util/concurrent/f;->k:Lcom/google/common/util/concurrent/c0$a;

    sget-object v2, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v2}, Lcom/google/common/util/concurrent/f;->x(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;

    move-result-object v2

    sput-object v2, Lcom/google/common/util/concurrent/f;->l:Lcom/google/common/util/concurrent/c0$a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->x(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/f;->m:Lcom/google/common/util/concurrent/c0$a;

    invoke-static {v1}, Lcom/google/common/util/concurrent/f;->x(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/f;->n:Lcom/google/common/util/concurrent/c0$a;

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->STOPPING:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->x(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/f;->o:Lcom/google/common/util/concurrent/c0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/f0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f0;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    new-instance v0, Lcom/google/common/util/concurrent/f$h;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$h;-><init>(Lcom/google/common/util/concurrent/f;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/f0$a;

    new-instance v0, Lcom/google/common/util/concurrent/f$i;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$i;-><init>(Lcom/google/common/util/concurrent/f;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->c:Lcom/google/common/util/concurrent/f0$a;

    new-instance v0, Lcom/google/common/util/concurrent/f$g;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$g;-><init>(Lcom/google/common/util/concurrent/f;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->d:Lcom/google/common/util/concurrent/f0$a;

    new-instance v0, Lcom/google/common/util/concurrent/f$j;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$j;-><init>(Lcom/google/common/util/concurrent/f;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->e:Lcom/google/common/util/concurrent/f0$a;

    new-instance v0, Lcom/google/common/util/concurrent/c0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/c0;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    return-void
.end method

.method public static synthetic i(Lcom/google/common/util/concurrent/f;)Lcom/google/common/util/concurrent/f0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    return-object p0
.end method

.method public static w(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/p0$b;",
            ")",
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/f$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$d;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    return-object v0
.end method

.method public static x(Lcom/google/common/util/concurrent/p0$b;)Lcom/google/common/util/concurrent/c0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/p0$b;",
            ")",
            "Lcom/google/common/util/concurrent/c0$a<",
            "Lcom/google/common/util/concurrent/p0$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/f$c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$c;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/p0$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/c0;->b(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->d:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/f0;->r(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f;->j(Lcom/google/common/util/concurrent/p0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Timed out waiting for "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to reach the RUNNING state."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->e:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/f0;->r(Lcom/google/common/util/concurrent/f0$a;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/f;->j(Lcom/google/common/util/concurrent/p0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/f0;->D()V

    throw p1

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Timed out waiting for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to reach a terminal state. Current state: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->d:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/f0;->q(Lcom/google/common/util/concurrent/f0$a;)V

    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->j(Lcom/google/common/util/concurrent/p0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    throw v0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f$k;->b()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->e:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/f0;->q(Lcom/google/common/util/concurrent/f0$a;)V

    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->j(Lcom/google/common/util/concurrent/p0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    throw v0
.end method

.method public final g()Lcom/google/common/util/concurrent/p0;
    .locals 4
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/f0;->i(Lcom/google/common/util/concurrent/f0$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->q()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-object p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has already been started"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Lcom/google/common/util/concurrent/p0;
    .locals 4
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->c:Lcom/google/common/util/concurrent/f0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/f0;->i(Lcom/google/common/util/concurrent/f0$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/f$f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "isStoppable is incorrectly implemented, saw: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STOPPING:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->r(Lcom/google/common/util/concurrent/p0$b;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->n()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;ZLjava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/f;->r(Lcom/google/common/util/concurrent/p0$b;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->l()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->NEW:Lcom/google/common/util/concurrent/p0$b;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->s(Lcom/google/common/util/concurrent/p0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    throw v0

    :cond_0
    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isRunning()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Lcom/google/common/util/concurrent/p0$b;)V
    .locals 7
    .annotation build LJ2/a;
        value = "monitor"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    if-eq v0, p1, :cond_1

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    const-string v2, " to be "

    const-string v3, "Expected the service "

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but the service has FAILED"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->e()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c0;->c()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0
    .annotation build LI2/g;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    return-void
.end method

.method public abstract m()V
    .annotation build LI2/g;
    .end annotation
.end method

.method public abstract n()V
    .annotation build LI2/g;
    .end annotation
.end method

.method public final o(Lcom/google/common/util/concurrent/p0$b;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    new-instance v1, Lcom/google/common/util/concurrent/f$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/util/concurrent/f$e;-><init>(Lcom/google/common/util/concurrent/f;Lcom/google/common/util/concurrent/p0$b;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v1, Lcom/google/common/util/concurrent/f;->i:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v1, Lcom/google/common/util/concurrent/f;->h:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    return-void
.end method

.method public final r(Lcom/google/common/util/concurrent/p0$b;)V
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v0, Lcom/google/common/util/concurrent/f;->j:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v0, Lcom/google/common/util/concurrent/f;->k:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final s(Lcom/google/common/util/concurrent/p0$b;)V
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/f$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v0, Lcom/google/common/util/concurrent/f;->o:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v0, Lcom/google/common/util/concurrent/f;->n:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v0, Lcom/google/common/util/concurrent/f;->m:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->f:Lcom/google/common/util/concurrent/c0;

    sget-object v0, Lcom/google/common/util/concurrent/f;->l:Lcom/google/common/util/concurrent/c0$a;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/c0;->d(Lcom/google/common/util/concurrent/c0$a;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final state()Lcom/google/common/util/concurrent/p0$b;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f$k;->a()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    return-object v0
.end method

.method public final t(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/f$f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/f$k;

    sget-object v2, Lcom/google/common/util/concurrent/p0$b;->FAILED:Lcom/google/common/util/concurrent/p0$b;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {p0, v0, p1}, Lcom/google/common/util/concurrent/f;->o(Lcom/google/common/util/concurrent/p0$b;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed while in state:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    iget-object v0, v0, Lcom/google/common/util/concurrent/f$k;->a:Lcom/google/common/util/concurrent/p0$b;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STARTING:Lcom/google/common/util/concurrent/p0$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/f$k;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STOPPING:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/f$k;

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->RUNNING:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    iget-object v1, v1, Lcom/google/common/util/concurrent/f$k;->a:Lcom/google/common/util/concurrent/p0$b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    throw v0
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->g()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/f$f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/google/common/util/concurrent/f$k;

    sget-object v2, Lcom/google/common/util/concurrent/p0$b;->TERMINATED:Lcom/google/common/util/concurrent/p0$b;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/f$k;-><init>(Lcom/google/common/util/concurrent/p0$b;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/f;->g:Lcom/google/common/util/concurrent/f$k;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/f;->s(Lcom/google/common/util/concurrent/p0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/f0;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f0;->D()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->k()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
