.class public final Lcom/android/tools/r8/internal/Zc0;
.super Lcom/android/tools/r8/internal/ed0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# instance fields
.field public g:Lcom/android/tools/r8/internal/cd0;

.field public final synthetic h:Lcom/android/tools/r8/internal/gd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/gd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zc0;->h:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ed0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/hd0;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/cd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zc0;->h:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ed0;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/cd0;-><init>(Lcom/android/tools/r8/internal/gd0;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zc0;->g:Lcom/android/tools/r8/internal/cd0;

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/cd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zc0;->h:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ed0;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/cd0;-><init>(Lcom/android/tools/r8/internal/gd0;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zc0;->g:Lcom/android/tools/r8/internal/cd0;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/ed0;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zc0;->g:Lcom/android/tools/r8/internal/cd0;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/cd0;->b:I

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/hd0;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
