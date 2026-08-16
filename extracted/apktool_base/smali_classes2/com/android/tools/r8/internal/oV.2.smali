.class public final Lcom/android/tools/r8/internal/oV;
.super Lcom/android/tools/r8/internal/nV;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/pV;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/pV;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/oV;->b:Lcom/android/tools/r8/internal/pV;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nV;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oV;->b:Lcom/android/tools/r8/internal/pV;

    return-object v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oV;->b:Lcom/android/tools/r8/internal/pV;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pV;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oV;->b:Lcom/android/tools/r8/internal/pV;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pV;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oV;->b:Lcom/android/tools/r8/internal/pV;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pV;->i()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
