.class public Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IRuntimeVisibleTypeAnnotationsAttribute;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;


# instance fields
.field private extendedAnnotations:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

.field private extendedAnnotationsNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

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

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->extendedAnnotationsNumber:I

    if-eqz v0, :cond_1

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->extendedAnnotations:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;

    add-int v4, p3, v1

    invoke-direct {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->extendedAnnotations:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    aput-object v3, v4, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ExtendedAnnotation;->sizeInBytes()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->extendedAnnotations:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    :goto_1
    return-void
.end method


# virtual methods
.method public getExtendedAnnotations()[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->extendedAnnotations:[Lorg/eclipse/jdt/core/util/IExtendedAnnotation;

    return-object v0
.end method

.method public getExtendedAnnotationsNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;->extendedAnnotationsNumber:I

    return v0
.end method
