.class public final Lcom/android/tools/r8/internal/Ze0;
.super Lcom/android/tools/r8/internal/nD;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/bf0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/bf0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ze0;->e:Lcom/android/tools/r8/internal/bf0;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ze0;->e:Lcom/android/tools/r8/internal/bf0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ze0;->e:Lcom/android/tools/r8/internal/bf0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bf0;->f:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ze0;->e:Lcom/android/tools/r8/internal/bf0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bf0;->f:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
