.class public final Lcom/android/tools/r8/internal/W7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:I

.field public final c:[B

.field public d:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/W7;->d:I

    array-length v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/W7;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/W7;->c:[B

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/W7;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/W7;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/W7;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/W7;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/W7;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
