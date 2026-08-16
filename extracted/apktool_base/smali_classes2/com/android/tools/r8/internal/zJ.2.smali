.class public final Lcom/android/tools/r8/internal/zJ;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/nt0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zJ;->b:Lcom/android/tools/r8/internal/nt0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zJ;Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zJ;->b:Lcom/android/tools/r8/internal/nt0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BJ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
