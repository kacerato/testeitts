.class public final synthetic Lcom/google/common/cache/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/r;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lcom/google/common/cache/r;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/cache/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/t;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/r;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/cache/v;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/t;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/cache/t;->c:Lcom/google/common/cache/r;

    invoke-static {v0, v1, p1}, Lcom/google/common/cache/u;->b(Ljava/util/concurrent/Executor;Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V

    return-void
.end method
