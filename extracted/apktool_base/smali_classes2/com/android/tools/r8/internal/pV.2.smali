.class public abstract Lcom/android/tools/r8/internal/pV;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pV;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract e()Ljava/util/Iterator;
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/oV;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/oV;-><init>(Lcom/android/tools/r8/internal/pV;)V

    return-object v0
.end method

.method public final i()Ljava/util/Spliterator;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pV;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pV;->size()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x41

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract size()I
.end method
