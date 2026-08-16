.class public Lorg/eclipse/jdt/internal/core/util/Annotation;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IAnnotation;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;


# instance fields
.field private components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

.field private componentsNumber:I

.field private readOffset:I

.field private typeIndex:I

.field private typeName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/Annotation;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->typeIndex:I

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->typeName:[C

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->componentsNumber:I

    const/4 v2, 0x4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->readOffset:I

    if-eqz v1, :cond_1

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    aput-object v2, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->readOffset:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->sizeInBytes()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/Annotation;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getComponents()[Lorg/eclipse/jdt/core/util/IAnnotationComponent;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->components:[Lorg/eclipse/jdt/core/util/IAnnotationComponent;

    return-object v0
.end method

.method public getComponentsNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->componentsNumber:I

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->typeIndex:I

    return v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->typeName:[C

    return-object v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/Annotation;->readOffset:I

    return v0
.end method
