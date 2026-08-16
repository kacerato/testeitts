.class public Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IMethodParametersAttribute;


# static fields
.field private static final NO_ACCES_FLAGS:[S

.field private static final NO_NAMES:[[C


# instance fields
.field private final accessFlags:[S

.field private final names:[[C

.field private final numberOfEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [[C

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->NO_NAMES:[[C

    new-array v0, v0, [S

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->NO_ACCES_FLAGS:[S

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->numberOfEntries:I

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, 0x7

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->names:[[C

    new-array v1, v0, [S

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->accessFlags:[S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v4

    add-int/lit8 p3, p3, 0x4

    if-eqz v3, :cond_2

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->names:[[C

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v3

    aput-object v3, v5, v2

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->names:[[C

    const/4 v5, 0x0

    aput-object v5, v3, v2

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->accessFlags:[S

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->NO_NAMES:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->names:[[C

    sget-object p1, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->NO_ACCES_FLAGS:[S

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->accessFlags:[S

    :goto_2
    return-void
.end method


# virtual methods
.method public getAccessFlags(I)S
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->accessFlags:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public getMethodParameterLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->numberOfEntries:I

    return v0
.end method

.method public getParameterName(I)[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;->names:[[C

    aget-object p1, v0, p1

    return-object p1
.end method
