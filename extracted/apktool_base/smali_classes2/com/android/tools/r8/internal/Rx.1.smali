.class public abstract Lcom/android/tools/r8/internal/Rx;
.super Lcom/android/tools/r8/internal/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/tools/r8/internal/u;

    return v0
.end method
