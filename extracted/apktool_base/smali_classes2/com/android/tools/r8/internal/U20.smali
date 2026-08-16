.class public final Lcom/android/tools/r8/internal/U20;
.super Lcom/android/tools/r8/internal/Z0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/f30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/U20;->c:Lcom/android/tools/r8/internal/f30;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Z0;-><init>(Lcom/android/tools/r8/internal/a1;)V

    return-void
.end method


# virtual methods
.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/T20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/U20;->c:Lcom/android/tools/r8/internal/f30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/T20;-><init>(Lcom/android/tools/r8/internal/f30;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/T20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/U20;->c:Lcom/android/tools/r8/internal/f30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/T20;-><init>(Lcom/android/tools/r8/internal/f30;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/T20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/U20;->c:Lcom/android/tools/r8/internal/f30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/T20;-><init>(Lcom/android/tools/r8/internal/f30;)V

    return-object v0
.end method
