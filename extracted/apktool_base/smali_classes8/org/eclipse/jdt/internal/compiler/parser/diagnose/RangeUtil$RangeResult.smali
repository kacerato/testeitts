.class Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeResult"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0xa


# instance fields
.field intervalEnds:[I

.field intervalFlags:[I

.field intervalStarts:[I

.field pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalStarts:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalEnds:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalFlags:[I

    return-void
.end method

.method private compare(II)I
    .locals 0

    sub-int/2addr p1, p2

    return p1
.end method

.method private quickSort([I[I[III)V
    .locals 9

    sub-int v0, p5, p4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    aget v0, p1, v0

    move v1, p4

    move v2, p5

    :goto_0
    aget v3, p1, v1

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->compare(II)I

    move-result v3

    if-ltz v3, :cond_5

    :goto_1
    aget v3, p1, v2

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->compare(II)I

    move-result v3

    if-ltz v3, :cond_4

    if-gt v1, v2, :cond_0

    aget v3, p1, v1

    aget v4, p1, v2

    aput v4, p1, v1

    aput v3, p1, v2

    aget v3, p2, v1

    aget v4, p2, v2

    aput v4, p2, v1

    aput v3, p2, v2

    aget v3, p3, v1

    aget v4, p3, v2

    aput v4, p3, v1

    aput v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    move v7, v1

    move v6, v2

    if-le v7, v6, :cond_3

    if-ge p4, v6, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->quickSort([I[I[III)V

    :cond_1
    if-ge v7, p5, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->quickSort([I[I[III)V

    :cond_2
    return-void

    :cond_3
    move v2, v6

    move v1, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addInterval(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->addInterval(III)V

    return-void
.end method

.method public addInterval(III)V
    .locals 4

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalStarts:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 3
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalStarts:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalEnds:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalEnds:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalFlags:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalFlags:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalStarts:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    aput p1, v0, v1

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalEnds:[I

    aput p2, p1, v1

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalFlags:[I

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    return-void
.end method

.method public getRanges()[[I
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    new-array v7, v0, [I

    new-array v8, v0, [I

    new-array v9, v0, [I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalStarts:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v7, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalEnds:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    invoke-static {v1, v2, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->intervalFlags:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->pos:I

    invoke-static {v1, v2, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v5, 0x0

    add-int/lit8 v6, v0, -0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/parser/diagnose/RangeUtil$RangeResult;->quickSort([I[I[III)V

    :cond_0
    filled-new-array {v7, v8, v9}, [[I

    move-result-object v0

    return-object v0
.end method
