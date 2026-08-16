.class public final Lcom/android/tools/r8/internal/gC;
.super Lcom/android/tools/r8/internal/hC;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/gC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hC;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/gC;->d:I

    iput p3, p0, Lcom/android/tools/r8/internal/gC;->e:I

    return-void
.end method


# virtual methods
.method public final e(II)Lcom/android/tools/r8/internal/hC;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/gC;->e:I

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/gC;->f:Lcom/android/tools/r8/internal/hC;

    iget v1, p0, Lcom/android/tools/r8/internal/gC;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/hC;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/gC;->e:I

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/U60;->a(II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/gC;->f:Lcom/android/tools/r8/internal/hC;

    iget v1, p0, Lcom/android/tools/r8/internal/gC;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/dC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gC;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/dC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gC;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/dC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/dC;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gC;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/dC;-><init>(Lcom/android/tools/r8/internal/hC;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/gC;->e:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/gC;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
