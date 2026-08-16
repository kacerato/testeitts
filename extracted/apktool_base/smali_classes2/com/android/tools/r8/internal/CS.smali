.class public final Lcom/android/tools/r8/internal/CS;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/FS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/CS;->b:Lcom/android/tools/r8/internal/FS;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CS;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CS;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/BS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/BS;-><init>(Lcom/android/tools/r8/internal/CS;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CS;->b:Lcom/android/tools/r8/internal/FS;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/FS;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;Z)V

    :cond_1
    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CS;->b:Lcom/android/tools/r8/internal/FS;

    iget v0, v0, Lcom/android/tools/r8/internal/FS;->e:I

    return v0
.end method
