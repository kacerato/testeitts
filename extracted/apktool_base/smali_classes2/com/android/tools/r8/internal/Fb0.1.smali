.class public final Lcom/android/tools/r8/internal/Fb0;
.super Lcom/android/tools/r8/internal/Zr0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/K2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zr0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/graph/K2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/graph/K2;-><init>(ILcom/android/tools/r8/graph/L2;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Fb0;->a:Lcom/android/tools/r8/graph/K2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fb0;->a:Lcom/android/tools/r8/graph/K2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fb0;->a:Lcom/android/tools/r8/graph/K2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Fb0;->a:Lcom/android/tools/r8/graph/K2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/K2;->b()C

    move-result v2
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v4, 0xe000

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v0

    :cond_1
    :goto_1
    if-ge v2, v3, :cond_2

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    return v0

    :cond_2
    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0xd

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fb0;->a:Lcom/android/tools/r8/graph/K2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/K2;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v0

    :catch_0
    new-instance v0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
