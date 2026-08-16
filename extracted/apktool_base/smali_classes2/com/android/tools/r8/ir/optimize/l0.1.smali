.class public final Lcom/android/tools/r8/ir/optimize/l0;
.super Lcom/android/tools/r8/ir/optimize/j0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/ir/optimize/j0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/YV;)V

    iput-object p3, p0, Lcom/android/tools/r8/ir/optimize/l0;->c:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/ir/optimize/l0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/ir/optimize/l0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/l0;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p1, Lcom/android/tools/r8/ir/optimize/l0;->c:Lcom/android/tools/r8/internal/xw0;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/j0;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p1, Lcom/android/tools/r8/ir/optimize/j0;->a:Lcom/android/tools/r8/internal/xw0;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/j0;->b:Lcom/android/tools/r8/internal/YV;

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/j0;->b:Lcom/android/tools/r8/internal/YV;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/j0;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/l0;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/j0;->b:Lcom/android/tools/r8/internal/YV;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
