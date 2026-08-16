.class public final Lcom/android/tools/r8/internal/AS;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/FS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FS;->a(Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/ES;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zS;-><init>(Lcom/android/tools/r8/internal/AS;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FS;->a(Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/ES;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;Z)V

    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    iget v0, v0, Lcom/android/tools/r8/internal/FS;->e:I

    return v0
.end method
