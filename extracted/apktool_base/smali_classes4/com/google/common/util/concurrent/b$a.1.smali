.class public Lcom/google/common/util/concurrent/b$a;
.super Lcom/google/common/util/concurrent/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lcom/google/common/util/concurrent/b;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/b$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/b$a$a;-><init>(Lcom/google/common/util/concurrent/b$a;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/g0;->q(Ljava/util/concurrent/Executor;Lw2/Q;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/b$a$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/b$a$b;-><init>(Lcom/google/common/util/concurrent/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->o()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/b$a;->p:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
