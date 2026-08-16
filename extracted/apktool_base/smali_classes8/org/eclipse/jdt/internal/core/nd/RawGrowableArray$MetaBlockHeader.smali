.class final Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;
.super Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaBlockHeader"
.end annotation


# static fields
.field public static final METABLOCK_NUM_PAGES:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

.field public static final META_BLOCK_HEADER_BYTES:I

.field private static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->access$0()Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->METABLOCK_NUM_PAGES:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->META_BLOCK_HEADER_BYTES:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;-><init>(Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;)V

    return-void
.end method
