.class public final Lcom/android/tools/r8/internal/y40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/y40;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/y40;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/y40;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/y40;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/y40;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/y40;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/y40;->b:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Iterating over the end of argument list."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
