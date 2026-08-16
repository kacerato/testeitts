.class public Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARRAY_FIELD_DESCRIPTOR_PREFIX:[C

.field private static final CLASS_FILE_SUFFIX:[C

.field public static final FIELD_DESCRIPTOR_PREFIX:[C

.field private static final FIELD_DESCRIPTOR_SUFFIX:[C

.field private static final JAR_FILE_ENTRY_SEPARATOR:[C

.field private static final METHOD_ID_SEPARATOR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ".class"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->CLASS_FILE_SUFFIX:[C

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x4c

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    new-array v1, v0, [C

    const/16 v2, 0x3b

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_SUFFIX:[C

    new-array v1, v0, [C

    const/16 v2, 0x23

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->METHOD_ID_SEPARATOR:[C

    const-string v1, "|"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->JAR_FILE_ENTRY_SEPARATOR:[C

    new-array v0, v0, [C

    const/16 v1, 0x5b

    aput-char v1, v0, v3

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->ARRAY_FIELD_DESCRIPTOR_PREFIX:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryNameToFieldDescriptor([C)[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_SUFFIX:[C

    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static binaryNameToFullyQualifiedName([C)[C
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    return-object p0
.end method

.method public static binaryNameToResourceRelativePath([C)[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->CLASS_FILE_SUFFIX:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static binaryNameToSimpleName([C)[C
    .locals 2

    const/16 v0, 0x24

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/16 v1, 0x2e

    invoke-static {v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2f

    invoke-static {v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CI)[C

    move-result-object p0

    return-object p0
.end method

.method public static classFilePathToBinaryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static fieldDescriptorToBinaryName([C)[C
    .locals 2

    const/16 v0, 0x4c

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->startsWith([CC)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0
.end method

.method public static fieldDescriptorToJavaName([CZ)[C
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->notNull([C)[C

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "[]"

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_1
    aget-char v3, p0, v1

    const/16 v4, 0x46

    if-eq v3, v4, :cond_9

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_7

    const/16 v4, 0x53

    if-eq v3, v4, :cond_6

    const/16 v4, 0x49

    if-eq v3, v4, :cond_5

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v3, "double"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :pswitch_1
    const-string v3, "char"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :pswitch_2
    const-string v3, "byte"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-string v3, "boolean"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :cond_4
    const-string v3, "long"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :cond_5
    const-string v3, "int"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :cond_6
    const-string v3, "short"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_3

    :cond_7
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v4, v3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object v3

    if-eqz p1, :cond_8

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-static {v3, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_2

    :cond_8
    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToSimpleName([C)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_2
    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_3

    :cond_9
    const-string v3, "float"

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fieldDescriptorToSimpleName([C)[C
    .locals 2

    const/16 v0, 0x4c

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->startsWith([CC)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->endsWith([CC)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x2f

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->lastIndexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static fullyQualifiedNameToBinaryName([C)[C
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    return-object p0
.end method

.method public static fullyQualifiedNameToFieldDescriptor([C)[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_SUFFIX:[C

    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    return-object p0
.end method

.method public static getIndexPathFor(Lorg/eclipse/jdt/internal/core/nd/java/NdType;Lorg/eclipse/core/resources/IWorkspaceRoot;)[C
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getAnyOpenWorkspaceLocation(Lorg/eclipse/core/resources/IWorkspaceRoot;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p1

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->JAR_FILE_ENTRY_SEPARATOR:[C

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToResourceRelativePath([C)[C

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static getMethodId([C[C)[C
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->METHOD_ID_SEPARATOR:[C

    invoke-static {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static getMethodId([C[C[C)[C
    .locals 2

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->FIELD_DESCRIPTOR_PREFIX:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->METHOD_ID_SEPARATOR:[C

    .line 3
    filled-new-array {v0, p0, v1, p1, p2}, [[C

    move-result-object p0

    .line 4
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static simpleNameToSourceName([C)[C
    .locals 3

    const/16 v0, 0x2f

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v1, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/16 v2, 0x2e

    invoke-static {v2, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CI)[C

    move-result-object p0

    return-object p0
.end method
