.class public final enum Lorg/openjdk/tools/javac/code/TypeTag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/TypeTag$NumericClasses;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/TypeTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum BOT:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum INT:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum LONG:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum MODULE:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum NONE:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum PACKAGE:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum UNINITIALIZED_OBJECT:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum UNINITIALIZED_THIS:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum UNKNOWN:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum VOID:Lorg/openjdk/tools/javac/code/TypeTag;

.field public static final enum WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;


# instance fields
.field final isPrimitive:Z

.field final numericClass:I

.field final superClasses:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v7, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v6, v7

    const/16 v4, 0x7d

    const/4 v5, 0x1

    const-string v1, "BYTE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lorg/openjdk/tools/javac/code/TypeTag;->BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v7, v0

    const/16 v12, 0x7a

    const/4 v13, 0x1

    const-string v9, "CHAR"

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v8, v0

    const/16 v18, 0x7c

    const/16 v19, 0x1

    const-string v15, "SHORT"

    const/16 v16, 0x2

    const/16 v17, 0x4

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v9, v0

    const/16 v24, 0x70

    const/16 v25, 0x1

    const-string v21, "LONG"

    const/16 v22, 0x3

    const/16 v23, 0x10

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v10, v0

    const/16 v15, 0x60

    const/16 v16, 0x1

    const-string v12, "FLOAT"

    const/4 v13, 0x4

    const/16 v14, 0x20

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v11, v0

    const/16 v21, 0x78

    const/16 v22, 0x1

    const-string v18, "INT"

    const/16 v19, 0x5

    const/16 v20, 0x8

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v12, v0

    const/16 v27, 0x40

    const/16 v28, 0x1

    const-string v24, "DOUBLE"

    const/16 v25, 0x6

    const/16 v26, 0x40

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v13, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v15, "BOOLEAN"

    const/16 v16, 0x7

    const/16 v17, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v14, v0

    const-string v1, "VOID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object v15, v0

    const-string v1, "CLASS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v16, v0

    const-string v1, "ARRAY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v17, v0

    const-string v1, "METHOD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v18, v0

    const-string v1, "PACKAGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->PACKAGE:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v19, v0

    const-string v1, "MODULE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->MODULE:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v20, v0

    const-string v1, "TYPEVAR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v21, v0

    const-string v1, "WILDCARD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v22, v0

    const-string v1, "FORALL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v23, v0

    const-string v1, "DEFERRED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v24, v0

    const-string v1, "BOT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v25, v0

    const-string v1, "NONE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v26, v0

    const-string v1, "ERROR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v27, v0

    const-string v1, "UNKNOWN"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNKNOWN:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v28, v0

    const-string v1, "UNDETVAR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v29, v0

    const-string v1, "UNINITIALIZED_THIS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_THIS:Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeTag;

    move-object/from16 v30, v0

    const-string v1, "UNINITIALIZED_OBJECT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNINITIALIZED_OBJECT:Lorg/openjdk/tools/javac/code/TypeTag;

    filled-new-array/range {v6 .. v30}, [Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/TypeTag;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p4, p0, Lorg/openjdk/tools/javac/code/TypeTag;->superClasses:I

    .line 4
    iput p3, p0, Lorg/openjdk/tools/javac/code/TypeTag;->numericClass:I

    .line 5
    iput-boolean p5, p0, Lorg/openjdk/tools/javac/code/TypeTag;->isPrimitive:Z

    return-void
.end method

.method public static getTypeTagCount()I
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/TypeTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method


# virtual methods
.method public checkRange(I)Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/16 v0, -0x8000

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    const/16 v0, -0x80

    if-gt v0, p1, :cond_3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    if-ltz p1, :cond_5

    const v0, 0xffff

    if-gt p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1

    :cond_6
    if-ltz p1, :cond_7

    if-gt p1, v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :cond_8
    :goto_3
    return v1
.end method

.method public getKindLiteral()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown literal kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->NULL_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->STRING_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->CHAR_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->DOUBLE_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->FLOAT_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->LONG_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->INT_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrimitiveTypeKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown primitive type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->SHORT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->BYTE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->CHAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->BOOLEAN:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->FLOAT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_8
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    :pswitch_9
    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->INT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isStrictSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeTag;->superClasses:I

    iget v1, p1, Lorg/openjdk/tools/javac/code/TypeTag;->numericClass:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeTag;->superClasses:I

    iget p1, p1, Lorg/openjdk/tools/javac/code/TypeTag;->numericClass:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
