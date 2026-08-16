.class public Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHILD_TABLE_OFFSET:I

.field public static final ENTRIES_IN_CHILD_TABLE:I = 0x20

.field public static final FOOTER_SIZE:I

.field public static final HEADER_SIZE:I

.field public static final NEXT_BLOCK_OFFSET:I

.field public static final PARENT_OFFSET:I

.field public static final PREV_BLOCK_OFFSET:I

.field public static final SIZE_OFFSET:I = 0x0

.field public static final SIZE_OF_SIZE_FIELD:I = 0x4

.field public static final UNALLOCATED_HEADER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    add-int/lit16 v1, v0, 0x80

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PARENT_OFFSET:I

    add-int/lit16 v1, v0, 0x84

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PREV_BLOCK_OFFSET:I

    add-int/lit16 v1, v0, 0x88

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->NEXT_BLOCK_OFFSET:I

    add-int/lit16 v1, v0, 0x8c

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->UNALLOCATED_HEADER_SIZE:I

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
