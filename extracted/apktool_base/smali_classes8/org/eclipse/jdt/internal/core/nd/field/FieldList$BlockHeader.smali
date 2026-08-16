.class Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockHeader"
.end annotation


# static fields
.field public static final BLOCK_HEADER_BYTES:I

.field public static final BLOCK_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

.field public static final ELEMENTS_IN_USE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

.field public static final NEXT_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

.field private static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->NEXT_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->ELEMENTS_IN_USE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/MathUtils;->roundUpToNearestMultipleOfPowerOfTwo(II)I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_HEADER_BYTES:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
