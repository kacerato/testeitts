.class public final Lcom/android/tools/r8/internal/kA;
.super Lcom/android/tools/r8/internal/F0;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/F0;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/F0;-><init>(Ljava/util/HashMap;)V

    return-void
.end method
