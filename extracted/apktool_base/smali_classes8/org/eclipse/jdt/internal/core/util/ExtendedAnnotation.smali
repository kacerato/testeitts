.class public Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IExtendedAnnotation;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

.field private static final NO_LOCAL_VARIABLE_TABLE_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

.field private static final NO_TYPEPATH:[[I


# instance fields
.field private annotationTypeIndex:I

.field private components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

.field private componentsNumber:I

.field private exceptionTableIndex:I

.field private localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

.field private offset:I

.field private parameterIndex:I

.field private readOffset:I

.field private targetType:I

.field private typeIndex:I

.field private typeName:[C

.field private typeParameterBoundIndex:I

.field private typeParameterIndex:I

.field private typePath:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    aput v0, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->NO_TYPEPATH:[[I

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->NO_LOCAL_VARIABLE_TABLE_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->NO_LOCAL_VARIABLE_TABLE_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->targetType:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readTargetInfo(I[BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    const/4 v3, 0x2

    if-nez v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->NO_TYPEPATH:[[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typePath:[[I

    goto :goto_1

    :cond_0
    new-array v4, v1, [[I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typePath:[[I

    move v4, v0

    :goto_0
    if-lt v4, v1, :cond_6

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeIndex:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    const/4 v4, 0x3

    if-eqz v1, :cond_5

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeName:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->componentsNumber:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    if-eqz v1, :cond_2

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    :goto_2
    if-lt v0, v1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    aput-object v2, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->sizeInBytes()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    const p2, 0xffff

    if-ne p1, p2, :cond_3

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typePath:[[I

    new-array v6, v3, [I

    aput-object v6, v5, v4

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p1, v5, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v5

    aput v5, v6, v0

    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p1, v5, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v5

    aput v5, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private readTargetInfo(I[BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    const/16 v1, 0x16

    if-eq p1, v1, :cond_2

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->offset:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto/16 :goto_1

    :pswitch_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->offset:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto/16 :goto_1

    :pswitch_2
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->offset:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto/16 :goto_1

    :pswitch_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->exceptionTableIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto/16 :goto_1

    :pswitch_4
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    new-array v0, p1, [Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    new-instance v2, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr v3, p4

    invoke-direct {v2, p2, p3, v3}, Lorg/eclipse/jdt/internal/core/util/LocalVariableReferenceInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v2, v1, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_5
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeParameterIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeParameterBoundIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto :goto_1

    :pswitch_6
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->parameterIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    invoke-virtual {p0, p2, p1, p4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeParameterIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAnnotationTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->annotationTypeIndex:I

    return v0
.end method

.method public getComponents()[Lorg/eclipse/jdt/core/util/IAnnotationComponent;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    return-object v0
.end method

.method public getComponentsNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->componentsNumber:I

    return v0
.end method

.method public getExceptionTableIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->exceptionTableIndex:I

    return v0
.end method

.method public getLocalVariableRefenceInfoLength()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    array-length v0, v0

    return v0
.end method

.method public getLocalVariableTable()[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableReferenceInfo;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->offset:I

    return v0
.end method

.method public getParameterIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->parameterIndex:I

    return v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->targetType:I

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeIndex:I

    return v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeName:[C

    return-object v0
.end method

.method public getTypeParameterBoundIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeParameterBoundIndex:I

    return v0
.end method

.method public getTypeParameterIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typeParameterIndex:I

    return v0
.end method

.method public getTypePath()[[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->typePath:[[I

    return-object v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->readOffset:I

    return v0
.end method
