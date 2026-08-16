.class public final Lcom/android/tools/r8/internal/J4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Lcom/android/tools/r8/internal/K4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/tools/r8/internal/K4;

    iput-object v0, p0, Lcom/android/tools/r8/internal/J4;->b:[Lcom/android/tools/r8/internal/K4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 4

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v2, p0, Lcom/android/tools/r8/internal/J4;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/J4;->b:[Lcom/android/tools/r8/internal/K4;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/J4;->b:[Lcom/android/tools/r8/internal/K4;

    array-length v3, v1

    if-lt v2, v3, :cond_2

    array-length v3, v1

    add-int/lit8 v3, v3, 0x6

    new-array v3, v3, [Lcom/android/tools/r8/internal/K4;

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/J4;->b:[Lcom/android/tools/r8/internal/K4;

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/J4;->b:[Lcom/android/tools/r8/internal/K4;

    iget v1, p0, Lcom/android/tools/r8/internal/J4;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/J4;->a:I

    aput-object p1, v0, v1

    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_0

    :cond_3
    return-void
.end method
