.class public final Lcom/android/tools/r8/naming/u0;
.super Lcom/android/tools/r8/naming/v0;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/tools/r8/naming/v0;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/naming/v0;->a:[Lcom/android/tools/r8/naming/M0;

    new-instance v3, Lcom/android/tools/r8/naming/M0;

    add-int v4, v1, p1

    invoke-direct {v3, v1, v4, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
