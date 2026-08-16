.class public Lorg/eclipse/jdt/internal/core/nd/indexer/GenericSignatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_CHAR_ARRAY_ARRAY:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [[C

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/GenericSignatures;->EMPTY_CHAR_ARRAY_ARRAY:[[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGenericSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v0

    .line 3
    :cond_0
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    return-object p0
.end method

.method public static getGenericSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/indexer/GenericSignatures;->EMPTY_CHAR_ARRAY_ARRAY:[[C

    .line 6
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v4

    if-nez v4, :cond_4

    .line 7
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v4

    if-eqz v4, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v1

    .line 8
    :goto_0
    array-length v4, v3

    mul-int/2addr v4, v0

    add-int/2addr v4, v5

    new-array v6, v4, [[C

    .line 9
    new-array v7, v2, [C

    const/16 v4, 0x4c

    aput-char v4, v7, v1

    .line 10
    new-array v8, v2, [C

    const/16 v4, 0x3b

    aput-char v4, v8, v1

    .line 11
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v4

    const/4 v9, 0x2

    if-eqz v4, :cond_2

    .line 12
    aput-object v7, v6, v1

    .line 13
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object p0

    aput-object p0, v6, v2

    .line 14
    aput-object v8, v6, v9

    .line 15
    :cond_2
    :goto_1
    array-length p0, v3

    if-lt v1, p0, :cond_3

    .line 16
    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([[C)[C

    move-result-object v4

    goto :goto_2

    :cond_3
    mul-int/lit8 p0, v1, 0x3

    add-int/2addr p0, v5

    .line 17
    aput-object v7, v6, p0

    add-int/lit8 v4, p0, 0x1

    .line 18
    aget-object v10, v3, v1

    aput-object v10, v6, v4

    add-int/2addr p0, v9

    .line 19
    aput-object v8, v6, p0

    add-int/2addr v1, v2

    goto :goto_1

    .line 20
    :cond_4
    :goto_2
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    return-object p0
.end method

.method public static getGenericSignatureFor(Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getGenericSignature()[C

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object v0

    :cond_0
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    return-object p0
.end method
