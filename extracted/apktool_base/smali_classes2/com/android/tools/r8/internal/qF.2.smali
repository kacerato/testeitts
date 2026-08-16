.class public final Lcom/android/tools/r8/internal/qF;
.super Lcom/android/tools/r8/internal/b1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/wF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/qF;->b:Lcom/android/tools/r8/internal/wF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qF;->b:Lcom/android/tools/r8/internal/wF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wF;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qF;->b:Lcom/android/tools/r8/internal/wF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/wF;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/vF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qF;->b:Lcom/android/tools/r8/internal/wF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/vF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qF;->b:Lcom/android/tools/r8/internal/wF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vF;-><init>(Lcom/android/tools/r8/internal/wF;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qF;->b:Lcom/android/tools/r8/internal/wF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wF;->size()I

    move-result v0

    return v0
.end method
