.class public Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IModuleMainClassAttribute;


# instance fields
.field private final mainClassIndex:I

.field private final mainClassName:[C


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;->mainClassIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;->mainClassName:[C

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getMainClassIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;->mainClassIndex:I

    return v0
.end method

.method public getMainClassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;->mainClassName:[C

    return-object v0
.end method
