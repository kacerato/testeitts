.class public final Lcom/android/tools/r8/internal/jd0;
.super Lcom/android/tools/r8/internal/od0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public h:Lcom/android/tools/r8/internal/md0;

.field public final synthetic i:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/qd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/jd0;->i:Lcom/android/tools/r8/internal/qd0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/od0;-><init>(Lcom/android/tools/r8/internal/qd0;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/md0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jd0;->i:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/od0;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/md0;-><init>(Lcom/android/tools/r8/internal/qd0;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jd0;->h:Lcom/android/tools/r8/internal/md0;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/od0;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/jd0;->h:Lcom/android/tools/r8/internal/md0;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/md0;->b:I

    return-void
.end method
