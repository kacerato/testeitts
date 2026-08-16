.class public Lorg/eclipse/jdt/internal/core/util/AnnotationDefaultAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IAnnotationDefaultAttribute;


# instance fields
.field private memberValue:Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;

    add-int/lit8 p3, p3, 0x6

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationDefaultAttribute;->memberValue:Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    return-void
.end method


# virtual methods
.method public getMemberValue()Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationDefaultAttribute;->memberValue:Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    return-object v0
.end method
