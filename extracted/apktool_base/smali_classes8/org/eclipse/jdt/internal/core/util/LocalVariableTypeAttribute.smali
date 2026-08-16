.class public Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableAttribute;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;


# instance fields
.field private localVariableTypeTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

.field private localVariableTypeTableLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->localVariableTypeTableLength:I

    if-eqz v0, :cond_1

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->localVariableTypeTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->localVariableTypeTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    new-instance v4, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;

    add-int v5, p3, v1

    invoke-direct {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->localVariableTypeTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    :goto_1
    return-void
.end method


# virtual methods
.method public getLocalVariableTypeTable()[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->localVariableTypeTableEntries:[Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;

    return-object v0
.end method

.method public getLocalVariableTypeTableLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeAttribute;->localVariableTypeTableLength:I

    return v0
.end method
