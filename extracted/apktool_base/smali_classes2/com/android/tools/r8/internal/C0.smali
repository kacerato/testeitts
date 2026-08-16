.class public final Lcom/android/tools/r8/internal/C0;
.super Lcom/android/tools/r8/internal/MY;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/android/tools/r8/internal/D0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D0;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/C0;->c:Lcom/android/tools/r8/internal/D0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/C0;->b:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/MY;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/C0;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ki;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/tools/r8/internal/ki;->b:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/C0;->c:Lcom/android/tools/r8/internal/D0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/D0;->d:Lcom/android/tools/r8/internal/F0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/F0;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/C0;->b:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ki;

    if-eqz v1, :cond_1

    iget v0, v1, Lcom/android/tools/r8/internal/ki;->b:I

    return v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget v0, v0, Lcom/android/tools/r8/internal/ki;->b:I

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/C0;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
