.class public final Lcom/android/tools/r8/internal/TF;
.super Lcom/android/tools/r8/internal/b1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/iG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/iG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iG;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iG;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/hG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/hG;-><init>(Lcom/android/tools/r8/internal/iG;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/hG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/hG;-><init>(Lcom/android/tools/r8/internal/iG;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    iget v0, v0, Lcom/android/tools/r8/internal/iG;->c:I

    return v0
.end method
