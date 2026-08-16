.class public interface abstract Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AND_PATTERN:I = 0x800

.field public static final ANNOTATION_REF:[C

.field public static final ANNOTATION_TYPE_SUFFIX:C = 'A'

.field public static final ANNOT_REF_PATTERN:I = 0x1000

.field public static final CLASS_AND_ENUM_SUFFIX:C = '\t'

.field public static final CLASS_AND_INTERFACE_SUFFIX:C = '\n'

.field public static final CLASS_SUFFIX:C = 'C'

.field public static final CONSTRUCTOR_DECL:[C

.field public static final CONSTRUCTOR_PATTERN:I = 0x20

.field public static final CONSTRUCTOR_REF:[C

.field public static final COUNTS:[[C

.field public static final DEFAULT_CONSTRUCTOR:[C

.field public static final ENUM_SUFFIX:C = 'E'

.field public static final FIELD_DECL:[C

.field public static final FIELD_PATTERN:I = 0x40

.field public static final INTERFACE_AND_ANNOTATION_SUFFIX:C = '\u000b'

.field public static final INTERFACE_SUFFIX:C = 'I'

.field public static final LOCAL_VAR_PATTERN:I = 0x200

.field public static final METHOD_DECL:[C

.field public static final METHOD_DECL_PLUS:[C

.field public static final METHOD_PATTERN:I = 0x80

.field public static final METHOD_REF:[C

.field public static final MODULE_DECL:[C

.field public static final MODULE_INFO:[C

.field public static final MODULE_PATTERN:I = 0x2000

.field public static final MODULE_REF:[C

.field public static final OBJECT:[C

.field public static final ONE_STAR:[C

.field public static final ONE_STAR_CHAR:[[C

.field public static final ONE_ZERO:[C

.field public static final ONE_ZERO_CHAR:[[C

.field public static final OR_PATTERN:I = 0x100

.field public static final PARAMETER_SEPARATOR:C = ','

.field public static final PKG_DECL_PATTERN:I = 0x2

.field public static final PKG_REF_PATTERN:I = 0x1

.field public static final REF:[C

.field public static final SECONDARY_SUFFIX:C = 'S'

.field public static final SEPARATOR:C = '/'

.field public static final SUPER_REF:[C

.field public static final SUPER_REF_PATTERN:I = 0x10

.field public static final TYPE_DECL:[C

.field public static final TYPE_DECL_PATTERN:I = 0x8

.field public static final TYPE_PARAM_PATTERN:I = 0x400

.field public static final TYPE_REF_PATTERN:I = 0x4

.field public static final TYPE_SUFFIX:C = '\u0000'

.field public static final ZERO_CHAR:C = '0'


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "ref"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->REF:[C

    const-string v0, "annotationRef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ANNOTATION_REF:[C

    const-string v0, "methodRef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_REF:[C

    const-string v0, "constructorRef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_REF:[C

    const-string v0, "superRef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->SUPER_REF:[C

    const-string v0, "typeDecl"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->TYPE_DECL:[C

    const-string v0, "methodDecl"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL:[C

    const-string v0, "methodDeclPlus"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL_PLUS:[C

    const-string v0, "constructorDecl"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->CONSTRUCTOR_DECL:[C

    const-string v0, "fieldDecl"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->FIELD_DECL:[C

    const-string v0, "moduleDecl"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_DECL:[C

    const-string v0, "moduleRef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_REF:[C

    const-string v0, "Object"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->OBJECT:[C

    const-string v0, "module-info"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_INFO:[C

    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    new-array v2, v0, [C

    fill-array-data v2, :array_1

    new-array v3, v0, [C

    fill-array-data v3, :array_2

    new-array v4, v0, [C

    fill-array-data v4, :array_3

    new-array v5, v0, [C

    fill-array-data v5, :array_4

    new-array v6, v0, [C

    fill-array-data v6, :array_5

    new-array v7, v0, [C

    fill-array-data v7, :array_6

    new-array v8, v0, [C

    fill-array-data v8, :array_7

    new-array v9, v0, [C

    fill-array-data v9, :array_8

    new-array v10, v0, [C

    fill-array-data v10, :array_9

    filled-new-array/range {v1 .. v10}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->COUNTS:[[C

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->DEFAULT_CONSTRUCTOR:[C

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2a

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    filled-new-array {v1}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR_CHAR:[[C

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v3

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2fs
        0x30s
    .end array-data

    :array_1
    .array-data 2
        0x2fs
        0x31s
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x32s
    .end array-data

    :array_3
    .array-data 2
        0x2fs
        0x33s
    .end array-data

    :array_4
    .array-data 2
        0x2fs
        0x34s
    .end array-data

    :array_5
    .array-data 2
        0x2fs
        0x35s
    .end array-data

    :array_6
    .array-data 2
        0x2fs
        0x36s
    .end array-data

    :array_7
    .array-data 2
        0x2fs
        0x37s
    .end array-data

    :array_8
    .array-data 2
        0x2fs
        0x38s
    .end array-data

    :array_9
    .array-data 2
        0x2fs
        0x39s
    .end array-data

    :array_a
    .array-data 2
        0x2fs
        0x23s
    .end array-data
.end method
