.class public abstract Lcom/android/tools/r8/internal/DS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lcom/android/tools/r8/internal/ES;

.field public c:Lcom/android/tools/r8/internal/ES;

.field public d:I

.field public final synthetic e:Lcom/android/tools/r8/internal/FS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FS;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/DS;->e:Lcom/android/tools/r8/internal/FS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DS;->b:Lcom/android/tools/r8/internal/ES;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/DS;->c:Lcom/android/tools/r8/internal/ES;

    iget p1, p1, Lcom/android/tools/r8/internal/FS;->f:I

    iput p1, p0, Lcom/android/tools/r8/internal/DS;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/DS;->b:Lcom/android/tools/r8/internal/ES;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DS;->e:Lcom/android/tools/r8/internal/FS;

    iget-object v1, v1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/DS;->c:Lcom/android/tools/r8/internal/ES;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/DS;->e:Lcom/android/tools/r8/internal/FS;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/DS;->c:Lcom/android/tools/r8/internal/ES;

    iget-object v0, p0, Lcom/android/tools/r8/internal/DS;->e:Lcom/android/tools/r8/internal/FS;

    iget v0, v0, Lcom/android/tools/r8/internal/FS;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/DS;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
