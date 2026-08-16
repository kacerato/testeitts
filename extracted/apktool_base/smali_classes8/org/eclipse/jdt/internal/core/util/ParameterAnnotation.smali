.class public Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IParameterAnnotation;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotation;


# instance fields
.field private annotations:[Lorg/eclipse/jdt/core/util/IAnnotation;

.field private annotationsNumber:I

.field private readOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IAnnotation;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotation;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->readOffset:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->annotationsNumber:I

    if-eqz v1, :cond_1

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IAnnotation;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->annotations:[Lorg/eclipse/jdt/core/util/IAnnotation;

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/Annotation;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/Annotation;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->annotations:[Lorg/eclipse/jdt/core/util/IAnnotation;

    aput-object v2, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->readOffset:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/Annotation;->sizeInBytes()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IAnnotation;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->annotations:[Lorg/eclipse/jdt/core/util/IAnnotation;

    :goto_1
    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/util/IAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->annotations:[Lorg/eclipse/jdt/core/util/IAnnotation;

    return-object v0
.end method

.method public getAnnotationsNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->annotationsNumber:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->readOffset:I

    return v0
.end method
