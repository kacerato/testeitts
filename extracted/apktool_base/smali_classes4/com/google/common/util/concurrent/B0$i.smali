.class public final Lcom/google/common/util/concurrent/B0$i;
.super Lcom/google/common/util/concurrent/O;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/B0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Lcom/google/common/util/concurrent/B0$j;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/B0$j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/O;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/B0$i;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/google/common/util/concurrent/B0$i;->c:Lcom/google/common/util/concurrent/B0$j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/B0$i;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/B0$h;

    iget-object v1, p0, Lcom/google/common/util/concurrent/B0$i;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/B0$i;->c:Lcom/google/common/util/concurrent/B0$j;

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/B0$h;-><init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/B0$j;)V

    return-object v0
.end method
