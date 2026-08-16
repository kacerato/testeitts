.class public Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IRuntimeVisibleParameterAnnotationsAttribute;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;


# instance fields
.field private parameterAnnotations:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

.field private parametersNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->parametersNumber:I

    if-eqz v0, :cond_1

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->parameterAnnotations:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    const/4 v1, 0x7

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;

    add-int v4, p3, v1

    invoke-direct {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->parameterAnnotations:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    aput-object v3, v4, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ParameterAnnotation;->sizeInBytes()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->parameterAnnotations:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    :goto_1
    return-void
.end method


# virtual methods
.method public getParameterAnnotations()[Lorg/eclipse/jdt/core/util/IParameterAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->parameterAnnotations:[Lorg/eclipse/jdt/core/util/IParameterAnnotation;

    return-object v0
.end method

.method public getParametersNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;->parametersNumber:I

    return v0
.end method
