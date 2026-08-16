.class public Lcom/google/common/util/concurrent/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/g0;->q(Ljava/util/concurrent/Executor;Lw2/Q;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lw2/Q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lw2/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/g0$b;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/g0$b;->c:Lw2/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/g0$b;->c:Lw2/Q;

    invoke-static {p1, v1}, Lcom/google/common/util/concurrent/v;->k(Ljava/lang/Runnable;Lw2/Q;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
