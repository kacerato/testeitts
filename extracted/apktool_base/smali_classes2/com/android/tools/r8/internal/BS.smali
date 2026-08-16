.class public final Lcom/android/tools/r8/internal/BS;
.super Lcom/android/tools/r8/internal/DS;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/CS;)V
    .locals 0

    iget-object p1, p1, Lcom/android/tools/r8/internal/CS;->b:Lcom/android/tools/r8/internal/FS;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/DS;-><init>(Lcom/android/tools/r8/internal/FS;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/DS;->b:Lcom/android/tools/r8/internal/ES;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DS;->e:Lcom/android/tools/r8/internal/FS;

    iget-object v2, v1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/android/tools/r8/internal/FS;->f:I

    iget v2, p0, Lcom/android/tools/r8/internal/DS;->d:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    iput-object v1, p0, Lcom/android/tools/r8/internal/DS;->b:Lcom/android/tools/r8/internal/ES;

    iput-object v0, p0, Lcom/android/tools/r8/internal/DS;->c:Lcom/android/tools/r8/internal/ES;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
