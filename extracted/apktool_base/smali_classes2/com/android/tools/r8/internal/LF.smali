.class public final Lcom/android/tools/r8/internal/LF;
.super Lcom/android/tools/r8/internal/c0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/QF;->clear()V

    return-void
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QF;->a(I)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/KF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/KF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/KF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/KF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-object v0
.end method

.method public final remove(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    iget v1, v0, Lcom/android/tools/r8/internal/QF;->h:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/QF;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    iget p1, p1, Lcom/android/tools/r8/internal/QF;->h:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LF;->b:Lcom/android/tools/r8/internal/QF;

    iget v0, v0, Lcom/android/tools/r8/internal/QF;->h:I

    return v0
.end method
