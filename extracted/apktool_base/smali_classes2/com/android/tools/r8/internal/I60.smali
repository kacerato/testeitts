.class public final Lcom/android/tools/r8/internal/I60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/J0;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/J0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/I60;->a:Lcom/android/tools/r8/graph/J0;

    iput p2, p0, Lcom/android/tools/r8/internal/I60;->b:I

    iput p3, p0, Lcom/android/tools/r8/internal/I60;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/I60;

    iget v0, p0, Lcom/android/tools/r8/internal/I60;->b:I

    iget v1, p1, Lcom/android/tools/r8/internal/I60;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/I60;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/I60;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/I60;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/I60;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
