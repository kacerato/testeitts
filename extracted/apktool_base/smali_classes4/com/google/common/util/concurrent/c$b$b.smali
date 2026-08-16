.class public Lcom/google/common/util/concurrent/c$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/c$b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/c$b;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c$b$b;->b:Lcom/google/common/util/concurrent/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$b$b;->b:Lcom/google/common/util/concurrent/c$b;

    iget-object v0, v0, Lcom/google/common/util/concurrent/c$b;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->l()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/c$b$b;->b:Lcom/google/common/util/concurrent/c$b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/c$b$b;->b:Lcom/google/common/util/concurrent/c$b;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
