.class public final Lcom/android/tools/r8/internal/mI;
.super Lcom/android/tools/r8/internal/eI;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/mI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/mI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/mI;-><init>(II)V

    sput-object v0, Lcom/android/tools/r8/internal/mI;->e:Lcom/android/tools/r8/internal/mI;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/eI;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/tools/r8/internal/mI;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mI;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/mI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/eI;->b:I

    check-cast p1, Lcom/android/tools/r8/internal/mI;

    iget v1, p1, Lcom/android/tools/r8/internal/eI;->b:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/eI;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/eI;->c:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mI;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/eI;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/tools/r8/internal/eI;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/eI;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/eI;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/tools/r8/internal/eI;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/eI;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
