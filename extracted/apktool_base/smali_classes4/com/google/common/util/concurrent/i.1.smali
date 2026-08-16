.class public final synthetic Lcom/google/common/util/concurrent/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/j;

.field public final synthetic c:Lcom/google/common/collect/c1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/j;Lcom/google/common/collect/c1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/j;

    iput-object p2, p0, Lcom/google/common/util/concurrent/i;->c:Lcom/google/common/collect/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/j;

    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->c:Lcom/google/common/collect/c1;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/j;->N(Lcom/google/common/util/concurrent/j;Lcom/google/common/collect/c1;)V

    return-void
.end method
