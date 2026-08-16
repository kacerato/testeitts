.class public final Lcom/android/tools/r8/internal/h30;
.super Lcom/android/tools/r8/internal/m30;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# instance fields
.field public g:Lcom/android/tools/r8/internal/k30;

.field public final synthetic h:Lcom/android/tools/r8/internal/o30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/o30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/h30;->h:Lcom/android/tools/r8/internal/o30;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/m30;-><init>(Lcom/android/tools/r8/internal/o30;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/k30;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/k30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h30;->h:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m30;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/k30;-><init>(Lcom/android/tools/r8/internal/o30;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/h30;->g:Lcom/android/tools/r8/internal/k30;

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/k30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h30;->h:Lcom/android/tools/r8/internal/o30;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m30;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/k30;-><init>(Lcom/android/tools/r8/internal/o30;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/h30;->g:Lcom/android/tools/r8/internal/k30;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/m30;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/h30;->g:Lcom/android/tools/r8/internal/k30;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/k30;->b:I

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/k30;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
