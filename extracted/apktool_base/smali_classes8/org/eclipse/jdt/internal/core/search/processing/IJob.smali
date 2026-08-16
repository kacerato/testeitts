.class public interface abstract Lorg/eclipse/jdt/internal/core/search/processing/IJob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLETE:Z = true

.field public static final CancelIfNotReady:I = 0x2

.field public static final FAILED:Z = false

.field public static final ForceImmediate:I = 0x1

.field public static final WaitUntilReady:I = 0x3


# virtual methods
.method public abstract belongsTo(Ljava/lang/String;)Z
.end method

.method public abstract cancel()V
.end method

.method public abstract ensureReadyToRun()V
.end method

.method public abstract execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
.end method

.method public abstract getJobFamily()Ljava/lang/String;
.end method

.method public waitNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
