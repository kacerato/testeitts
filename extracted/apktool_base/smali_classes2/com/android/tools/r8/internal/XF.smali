.class public final Lcom/android/tools/r8/internal/XF;
.super Lcom/android/tools/r8/internal/O;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/iG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/iG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/XF;->c:Lcom/android/tools/r8/internal/iG;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/O;-><init>(Lcom/android/tools/r8/internal/P;)V

    return-void
.end method


# virtual methods
.method public final iterator()Lcom/android/tools/r8/internal/HH;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/WF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XF;->c:Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/WF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/WF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XF;->c:Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/WF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/WF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XF;->c:Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/WF;-><init>(Lcom/android/tools/r8/internal/iG;)V

    return-object v0
.end method
