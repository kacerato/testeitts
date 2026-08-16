.class public Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CURRENT_VERSION:I

.field public static final FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDEX_FILENAME:Ljava/lang/String; = "index.db"

.field static final MAX_SUPPORTED_VERSION:I

.field static final MIN_SUPPORTED_VERSION:I

.field public static final SIMPLE_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;"
        }
    .end annotation
.end field

.field private static final bestResourceFile:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;

.field private static globalNd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private static final ndMutex:Ljava/lang/Object;

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final address:J

.field private anyResult:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

.field private nd:Lorg/eclipse/jdt/internal/core/nd/Nd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->version(II)I

    move-result v2

    sput v2, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->CURRENT_VERSION:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->version(II)I

    move-result v2

    sput v2, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->MAX_SUPPORTED_VERSION:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->version(II)I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->MIN_SUPPORTED_VERSION:I

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->FILENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->SIMPLE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->SIMPLE_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->FIELD_DESCRIPTOR:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->bestResourceFile:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->ndMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->anyResult:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    return-void
.end method

.method public static createNd(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;)Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 8

    new-instance v7, Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->createTypeRegistry()Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    move-result-object v3

    sget v4, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->MIN_SUPPORTED_VERSION:I

    sget v5, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->MAX_SUPPORTED_VERSION:I

    sget v6, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->CURRENT_VERSION:I

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/Nd;-><init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;III)V

    return-object v7
.end method

.method public static createTypeRegistry()Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantBoolean;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantChar;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x90

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantFloat;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantInt;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0xd0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantLong;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0xe0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantShort;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0xf0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantString;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x110

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x118

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x170

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x1a0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x1c0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x1d0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x1e0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x1f0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->register(ILorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    return-object v0
.end method

.method public static getCurrentVersion()I
    .locals 1

    sget v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->CURRENT_VERSION:I

    return v0
.end method

.method public static getDBFile()Ljava/io/File;
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const-string v1, "index.db"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->ndMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->globalNd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getDBFile()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->getSharedInstance()Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->createNd(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;)Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    monitor-enter v0

    :try_start_1
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->globalNd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    if-nez v2, :cond_1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->globalNd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->globalNd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;
    .locals 1

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getGlobalNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    return-object v0
.end method

.method public static getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;
    .locals 3

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    sget v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DATA_AREA_OFFSET:I

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-object v0
.end method

.method public static getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static getLocationForPath(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;
    .locals 1

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createTypeId([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->findType([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aget-char v0, p1, v0

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-char v0, p1, v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not a valid field descriptor"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;[C)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Field descriptor didn\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dirty(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->getCache(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->clear()V

    return-void
.end method

.method public findResourcesWithPath(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findType([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 6

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object v4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->anyResult:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findBest(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    return-object p1
.end method

.method public findTypesBySimpleName([C)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->prefix(Z)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->SIMPLE_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findTypesBySimpleName([CI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->prefix(Z)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object v5

    .line 4
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->SIMPLE_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllResourceFiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    return-object v0
.end method

.method public getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->FILES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->bestResourceFile:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex$BestResourceFile;

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findBest(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    return-object p1
.end method

.method public isUpToDate(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isDoneIndexing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->getCache(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->isUpToDate(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v2, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getFingerprint()Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint;->test(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/FileFingerprint$FingerprintTestResult;->matches()Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/FileStateCache;->put(Ljava/lang/String;Z)V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visitFieldDescriptorsStartingWith([CLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->create([C)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;->prefix(Z)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;

    move-result-object v5

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->address:J

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->visitAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;)Z

    move-result p1

    return p1
.end method
