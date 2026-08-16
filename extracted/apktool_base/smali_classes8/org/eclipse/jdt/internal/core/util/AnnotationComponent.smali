.class public Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IAnnotationComponent;


# instance fields
.field private componentName:[C

.field private componentNameIndex:I

.field private componentValue:Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

.field private readOffset:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->componentNameIndex:I

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->componentName:[C

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->readOffset:I

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->readOffset:I

    add-int/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->componentValue:Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->readOffset:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->sizeInBytes()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->readOffset:I

    return-void
.end method


# virtual methods
.method public getComponentName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->componentName:[C

    return-object v0
.end method

.method public getComponentNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->componentNameIndex:I

    return v0
.end method

.method public getComponentValue()Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->componentValue:Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    return-object v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponent;->readOffset:I

    return v0
.end method
