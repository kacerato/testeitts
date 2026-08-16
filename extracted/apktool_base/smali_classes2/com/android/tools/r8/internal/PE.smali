.class public final Lcom/android/tools/r8/internal/PE;
.super Lcom/android/tools/r8/internal/UE;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# instance fields
.field public g:Lcom/android/tools/r8/internal/SE;

.field public final synthetic h:Lcom/android/tools/r8/internal/WE;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/WE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/PE;->h:Lcom/android/tools/r8/internal/WE;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/UE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/XE;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/SE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PE;->h:Lcom/android/tools/r8/internal/WE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/UE;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/SE;-><init>(Lcom/android/tools/r8/internal/WE;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PE;->g:Lcom/android/tools/r8/internal/SE;

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/SE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PE;->h:Lcom/android/tools/r8/internal/WE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/UE;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/SE;-><init>(Lcom/android/tools/r8/internal/WE;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/PE;->g:Lcom/android/tools/r8/internal/SE;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/UE;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/PE;->g:Lcom/android/tools/r8/internal/SE;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/SE;->b:I

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/XE;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
