.class public final Lcom/android/tools/r8/internal/Yc0;
.super Lcom/android/tools/r8/internal/W;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/gd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/gd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yc0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yc0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->clear()V

    return-void
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yc0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->d(I)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/fd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yc0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/fd0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/fd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yc0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/fd0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yc0;->b:Lcom/android/tools/r8/internal/gd0;

    iget v0, v0, Lcom/android/tools/r8/internal/gd0;->l:I

    return v0
.end method
