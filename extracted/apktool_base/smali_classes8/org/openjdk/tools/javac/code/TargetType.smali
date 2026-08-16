.class public final enum Lorg/openjdk/tools/javac/code/TargetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CAST:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CLASS_EXTENDS:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CLASS_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CLASS_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CONSTRUCTOR_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum EXCEPTION_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum FIELD:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum INSTANCEOF:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum LOCAL_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

.field private static final MAXIMUM_TARGET_TYPE_VALUE:I = 0x4b

.field public static final enum METHOD_FORMAL_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_RECEIVER:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_RETURN:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum METHOD_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum NEW:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum RESOURCE_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum THROWS:Lorg/openjdk/tools/javac/code/TargetType;

.field public static final enum UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

.field private static final targets:[Lorg/openjdk/tools/javac/code/TargetType;


# instance fields
.field private final isLocal:Z

.field private final targetTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v1, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v0, v1

    const-string v2, "CLASS_TYPE_PARAMETER"

    const/4 v15, 0x0

    invoke-direct {v1, v2, v15, v15}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v2, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v1, v2

    const-string v3, "METHOD_TYPE_PARAMETER"

    const/4 v14, 0x1

    invoke-direct {v2, v3, v14, v14}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v3, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v2, v3

    const-string v4, "CLASS_EXTENDS"

    const/4 v5, 0x2

    const/16 v13, 0x10

    invoke-direct {v3, v4, v5, v13}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_EXTENDS:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v4, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v3, v4

    const-string v5, "CLASS_TYPE_PARAMETER_BOUND"

    const/4 v6, 0x3

    const/16 v12, 0x11

    invoke-direct {v4, v5, v6, v12}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v5, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v4, v5

    const-string v6, "METHOD_TYPE_PARAMETER_BOUND"

    const/4 v7, 0x4

    const/16 v11, 0x12

    invoke-direct {v5, v6, v7, v11}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v6, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v5, v6

    const-string v7, "FIELD"

    const/4 v8, 0x5

    const/16 v10, 0x13

    invoke-direct {v6, v7, v8, v10}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/openjdk/tools/javac/code/TargetType;->FIELD:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v7, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v6, v7

    const-string v8, "METHOD_RETURN"

    const/4 v9, 0x6

    const/16 v14, 0x14

    invoke-direct {v7, v8, v9, v14}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_RETURN:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v8, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v7, v8

    const-string v9, "METHOD_RECEIVER"

    const/4 v10, 0x7

    move-object/from16 v23, v0

    const/16 v0, 0x15

    invoke-direct {v8, v9, v10, v0}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_RECEIVER:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v9, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v8, v9

    const-string v10, "METHOD_FORMAL_PARAMETER"

    const/16 v11, 0x8

    const/16 v0, 0x16

    invoke-direct {v9, v10, v11, v0}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v10, Lorg/openjdk/tools/javac/code/TargetType;

    move-object v9, v10

    const/16 v11, 0x9

    const/16 v12, 0x17

    const-string v13, "THROWS"

    invoke-direct {v10, v13, v11, v12}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/openjdk/tools/javac/code/TargetType;->THROWS:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v11, Lorg/openjdk/tools/javac/code/TargetType;

    const/16 v13, 0x13

    move-object v10, v11

    const/16 v12, 0xa

    const/16 v13, 0x40

    const-string v14, "LOCAL_VARIABLE"

    const/4 v15, 0x1

    invoke-direct {v11, v14, v12, v13, v15}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v11, Lorg/openjdk/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v12, Lorg/openjdk/tools/javac/code/TargetType;

    const/16 v14, 0x12

    move-object v11, v12

    const/16 v13, 0xb

    const/16 v14, 0x41

    const-string v0, "RESOURCE_VARIABLE"

    invoke-direct {v12, v0, v13, v14, v15}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v12, Lorg/openjdk/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    const/16 v14, 0x11

    move-object v12, v0

    const/16 v13, 0xc

    const/16 v14, 0x42

    move-object/from16 v25, v1

    const-string v1, "EXCEPTION_PARAMETER"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    const/16 v1, 0x10

    const/16 v14, 0x13

    move-object v13, v0

    const/16 v14, 0xd

    const/16 v1, 0x43

    move-object/from16 v26, v2

    const-string v2, "INSTANCEOF"

    invoke-direct {v0, v2, v14, v1, v15}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->INSTANCEOF:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move v1, v15

    const/16 v2, 0x11

    const/16 v15, 0x12

    move-object v14, v0

    const/16 v15, 0xe

    const/16 v2, 0x44

    move-object/from16 v27, v3

    const-string v3, "NEW"

    invoke-direct {v0, v3, v15, v2, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->NEW:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    const/16 v2, 0x12

    const/16 v24, 0x0

    move-object v15, v0

    const/16 v3, 0xf

    const/16 v2, 0x45

    move-object/from16 v28, v4

    const-string v4, "CONSTRUCTOR_REFERENCE"

    invoke-direct {v0, v4, v3, v2, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v16, v0

    const-string v2, "METHOD_REFERENCE"

    const/16 v3, 0x46

    const/16 v4, 0x10

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v17, v0

    const-string v2, "CAST"

    const/16 v3, 0x47

    const/16 v4, 0x11

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->CAST:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v18, v0

    const-string v2, "CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT"

    const/16 v3, 0x48

    const/16 v4, 0x12

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v19, v0

    const-string v2, "METHOD_INVOCATION_TYPE_ARGUMENT"

    const/16 v3, 0x49

    const/16 v4, 0x13

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v20, v0

    const-string v2, "CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT"

    const/16 v3, 0x4a

    const/16 v4, 0x14

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v21, v0

    const-string v2, "METHOD_REFERENCE_TYPE_ARGUMENT"

    const/16 v3, 0x4b

    const/16 v4, 0x15

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    new-instance v0, Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v22, v0

    const-string v1, "UNKNOWN"

    const/16 v2, 0xff

    const/16 v4, 0x16

    invoke-direct {v0, v1, v4, v2}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    filled-new-array/range {v0 .. v22}, [Lorg/openjdk/tools/javac/code/TargetType;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->$VALUES:[Lorg/openjdk/tools/javac/code/TargetType;

    const/16 v0, 0x4c

    new-array v0, v0, [Lorg/openjdk/tools/javac/code/TargetType;

    sput-object v0, Lorg/openjdk/tools/javac/code/TargetType;->targets:[Lorg/openjdk/tools/javac/code/TargetType;

    invoke-static {}, Lorg/openjdk/tools/javac/code/TargetType;->values()[Lorg/openjdk/tools/javac/code/TargetType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v24

    :goto_0
    if-ge v15, v1, :cond_1

    aget-object v2, v0, v15

    iget v3, v2, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue:I

    sget-object v4, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    iget v4, v4, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue:I

    if-eq v3, v4, :cond_0

    sget-object v4, Lorg/openjdk/tools/javac/code/TargetType;->targets:[Lorg/openjdk/tools/javac/code/TargetType;

    aput-object v2, v4, v3

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    move/from16 v15, v24

    const/16 v0, 0x4b

    :goto_1
    if-gt v15, v0, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->targets:[Lorg/openjdk/tools/javac/code/TargetType;

    aget-object v2, v1, v15

    if-nez v2, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    aput-object v2, v1, v15

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/code/TargetType;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-le p3, p1, :cond_1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attribute type value needs to be an unsigned byte: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "0x%02X"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 4
    :cond_1
    iput p3, p0, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue:I

    .line 5
    iput-boolean p4, p0, Lorg/openjdk/tools/javac/code/TargetType;->isLocal:Z

    return-void
.end method

.method public static fromTargetTypeValue(I)Lorg/openjdk/tools/javac/code/TargetType;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    iget v1, v0, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue:I

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    if-ltz p0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TargetType;->targets:[Lorg/openjdk/tools/javac/code/TargetType;

    array-length v0, v0

    if-lt p0, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TargetType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/TargetType;->targets:[Lorg/openjdk/tools/javac/code/TargetType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static isValidTargetTypeValue(I)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    iget v0, v0, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-ltz p0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TargetType;->targets:[Lorg/openjdk/tools/javac/code/TargetType;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/TargetType;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/TargetType;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/TargetType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TargetType;->$VALUES:[Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/TargetType;

    return-object v0
.end method


# virtual methods
.method public isLocal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TargetType;->isLocal:Z

    return v0
.end method

.method public targetTypeValue()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/TargetType;->targetTypeValue:I

    return v0
.end method
