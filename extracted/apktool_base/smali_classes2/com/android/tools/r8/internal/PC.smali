.class public abstract Lcom/android/tools/r8/internal/PC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/PC;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    .line 6
    iget p1, p1, Lcom/android/tools/r8/internal/PC;->b:I

    iput p1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;
.end method

.method public abstract a()Lcom/android/tools/r8/internal/QC;
.end method

.method public abstract b()Lcom/android/tools/r8/internal/PC;
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/PC;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 3
    array-length v1, v1

    .line 4
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/PC;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/PC;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public c()Lcom/android/tools/r8/internal/PC;
    .locals 0

    return-object p0
.end method
