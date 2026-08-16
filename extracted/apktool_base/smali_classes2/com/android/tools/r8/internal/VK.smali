.class public final Lcom/android/tools/r8/internal/VK;
.super Lcom/android/tools/r8/internal/nD;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/HashSet;

.field public final f:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nD;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VK;->e:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VK;->f:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VK;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VK;->f:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VK;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
