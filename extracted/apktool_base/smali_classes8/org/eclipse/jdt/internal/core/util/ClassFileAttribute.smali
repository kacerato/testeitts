.class public Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IClassFileAttribute;


# static fields
.field public static final NO_ATTRIBUTES:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;


# instance fields
.field private attributeLength:J

.field private attributeName:[C

.field private attributeNameIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->NO_ATTRIBUTES:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeNameIndex:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeLength:J

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeNameIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeName:[C

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getAttributeLength()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeLength:J

    return-wide v0
.end method

.method public getAttributeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeName:[C

    return-object v0
.end method

.method public getAttributeNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->attributeNameIndex:I

    return v0
.end method
