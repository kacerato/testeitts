.class public final enum Lorg/openjdk/javax/lang/model/type/TypeKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/lang/model/type/TypeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum BOOLEAN:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum BYTE:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum CHAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum DECLARED:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum ERROR:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum EXECUTABLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum FLOAT:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum INT:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum INTERSECTION:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum MODULE:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum NULL:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum OTHER:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum PACKAGE:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum SHORT:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum TYPEVAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum UNION:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

.field public static final enum WILDCARD:Lorg/openjdk/javax/lang/model/type/TypeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v1, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v0, v1

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->BOOLEAN:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v2, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v1, v2

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/lang/model/type/TypeKind;->BYTE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v3, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v2, v3

    const-string v4, "SHORT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->SHORT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v4, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v3, v4

    const-string v5, "INT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->INT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v5, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v4, v5

    const-string v6, "LONG"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/javax/lang/model/type/TypeKind;->LONG:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v6, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v5, v6

    const-string v7, "CHAR"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/javax/lang/model/type/TypeKind;->CHAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v7, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v6, v7

    const-string v8, "FLOAT"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/openjdk/javax/lang/model/type/TypeKind;->FLOAT:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v8, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v7, v8

    const-string v9, "DOUBLE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/openjdk/javax/lang/model/type/TypeKind;->DOUBLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v9, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v8, v9

    const-string v10, "VOID"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v10, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v9, v10

    const-string v11, "NONE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/openjdk/javax/lang/model/type/TypeKind;->NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v11, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v10, v11

    const-string v12, "NULL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/openjdk/javax/lang/model/type/TypeKind;->NULL:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v12, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v11, v12

    const-string v13, "ARRAY"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v13, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v12, v13

    const-string v14, "DECLARED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/openjdk/javax/lang/model/type/TypeKind;->DECLARED:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v14, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v13, v14

    const-string v15, "ERROR"

    move-object/from16 v22, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/openjdk/javax/lang/model/type/TypeKind;->ERROR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v14, v0

    const-string v15, "TYPEVAR"

    move-object/from16 v23, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->TYPEVAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object v15, v0

    const-string v1, "WILDCARD"

    move-object/from16 v24, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->WILDCARD:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v16, v0

    const-string v1, "PACKAGE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->PACKAGE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v17, v0

    const-string v1, "EXECUTABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->EXECUTABLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v18, v0

    const-string v1, "OTHER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->OTHER:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v19, v0

    const-string v1, "UNION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->UNION:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v20, v0

    const-string v1, "INTERSECTION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->INTERSECTION:Lorg/openjdk/javax/lang/model/type/TypeKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v21, v0

    const-string v1, "MODULE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/type/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->MODULE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    filled-new-array/range {v0 .. v21}, [Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->$VALUES:[Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    const-class v0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->$VALUES:[Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v0}, [Lorg/openjdk/javax/lang/model/type/TypeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0
.end method


# virtual methods
.method public isPrimitive()Z
    .locals 2

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
