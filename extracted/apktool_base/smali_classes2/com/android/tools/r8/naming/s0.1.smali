.class public final Lcom/android/tools/r8/naming/s0;
.super Lcom/android/tools/r8/naming/v0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/tools/r8/naming/v0;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/naming/v0;->a:[Lcom/android/tools/r8/naming/M0;

    new-instance v2, Lcom/android/tools/r8/naming/M0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v0, v3}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
