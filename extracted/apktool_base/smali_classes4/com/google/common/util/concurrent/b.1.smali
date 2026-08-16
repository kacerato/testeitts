.class public abstract Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/p0;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/google/common/util/concurrent/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/b;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/b$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b$a;-><init>(Lcom/google/common/util/concurrent/b;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    return-void
.end method

.method public static synthetic i()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/b;->b:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/p0$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/p0;->a(Lcom/google/common/util/concurrent/p0$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/p0;->b(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/p0;->c(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->d()V

    return-void
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->e()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->f()V

    return-void
.end method

.method public final g()Lcom/google/common/util/concurrent/p0;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->g()Lcom/google/common/util/concurrent/p0;

    return-object p0
.end method

.method public final h()Lcom/google/common/util/concurrent/p0;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->h()Lcom/google/common/util/concurrent/p0;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->isRunning()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/b$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b$b;-><init>(Lcom/google/common/util/concurrent/b;)V

    return-object v0
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public n()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public o()V
    .locals 0
    .annotation build Lv2/a;
    .end annotation

    return-void
.end method

.method public final state()Lcom/google/common/util/concurrent/p0$b;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/p0;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/p0;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/b;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

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
