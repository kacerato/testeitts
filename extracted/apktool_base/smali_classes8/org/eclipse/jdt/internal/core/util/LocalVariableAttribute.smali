.class public Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/ILocalVariableAttribute;


# static fields
.field private static final NO_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;


# instance fields
.field private localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

.field private localVariableTableLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

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

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->localVariableTableLength:I

    if-eqz v0, :cond_1

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    new-instance v4, Lorg/eclipse/jdt/internal/core/util/LocalVariableTableEntry;

    add-int v5, p3, v1

    invoke-direct {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/core/util/LocalVariableTableEntry;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->NO_ENTRIES:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    :goto_1
    return-void
.end method


# virtual methods
.method public getLocalVariableTable()[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->localVariableTable:[Lorg/eclipse/jdt/core/util/ILocalVariableTableEntry;

    return-object v0
.end method

.method public getLocalVariableTableLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableAttribute;->localVariableTableLength:I

    return v0
.end method
