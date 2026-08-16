.class public final Lcom/google/common/util/concurrent/W$b;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation build Lv2/d;
.end annotation


# instance fields
.field public final b:Lcom/google/common/util/concurrent/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/W<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/W;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/W<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/W$b;->b:Lcom/google/common/util/concurrent/W;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/W;Lcom/google/common/util/concurrent/W$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/W$b;-><init>(Lcom/google/common/util/concurrent/W;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/W$b;Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/W$b;->b(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Thread;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/W$b;->b:Lcom/google/common/util/concurrent/W;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/W;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
