.class Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrowableBlockHeader"
.end annotation


# static fields
.field public static final ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

.field public static final ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

.field public static final GROWABLE_BLOCK_HEADER_BYTES:I

.field public static final MAX_GROWABLE_SIZE:I

.field private static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->GROWABLE_BLOCK_HEADER_BYTES:I

    sget v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    sput v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;-><init>()V

    return-void
.end method

.method public static synthetic access$0()Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    return-object v0
.end method
