.class public final Lcom/android/tools/r8/internal/F20;
.super Lcom/android/tools/r8/internal/K20;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# instance fields
.field public g:Lcom/android/tools/r8/internal/I20;

.field public final synthetic h:Lcom/android/tools/r8/internal/M20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/M20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/F20;->h:Lcom/android/tools/r8/internal/M20;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/K20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/I20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F20;->h:Lcom/android/tools/r8/internal/M20;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/I20;-><init>(Lcom/android/tools/r8/internal/M20;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/F20;->g:Lcom/android/tools/r8/internal/I20;

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/I20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/F20;->h:Lcom/android/tools/r8/internal/M20;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K20;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/I20;-><init>(Lcom/android/tools/r8/internal/M20;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/F20;->g:Lcom/android/tools/r8/internal/I20;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/K20;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/F20;->g:Lcom/android/tools/r8/internal/I20;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/I20;->b:I

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
