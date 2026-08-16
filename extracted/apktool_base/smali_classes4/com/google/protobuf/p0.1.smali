.class public final enum Lcom/google/protobuf/p0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/p0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/p0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/p0;

.field public static final enum BOOL:Lcom/google/protobuf/p0;

.field public static final enum BOOL_LIST:Lcom/google/protobuf/p0;

.field public static final enum BOOL_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum BYTES:Lcom/google/protobuf/p0;

.field public static final enum BYTES_LIST:Lcom/google/protobuf/p0;

.field public static final enum DOUBLE:Lcom/google/protobuf/p0;

.field public static final enum DOUBLE_LIST:Lcom/google/protobuf/p0;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/google/protobuf/p0;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/google/protobuf/p0;

.field public static final enum ENUM_LIST:Lcom/google/protobuf/p0;

.field public static final enum ENUM_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum FIXED32:Lcom/google/protobuf/p0;

.field public static final enum FIXED32_LIST:Lcom/google/protobuf/p0;

.field public static final enum FIXED32_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum FIXED64:Lcom/google/protobuf/p0;

.field public static final enum FIXED64_LIST:Lcom/google/protobuf/p0;

.field public static final enum FIXED64_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum FLOAT:Lcom/google/protobuf/p0;

.field public static final enum FLOAT_LIST:Lcom/google/protobuf/p0;

.field public static final enum FLOAT_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum GROUP:Lcom/google/protobuf/p0;

.field public static final enum GROUP_LIST:Lcom/google/protobuf/p0;

.field public static final enum INT32:Lcom/google/protobuf/p0;

.field public static final enum INT32_LIST:Lcom/google/protobuf/p0;

.field public static final enum INT32_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum INT64:Lcom/google/protobuf/p0;

.field public static final enum INT64_LIST:Lcom/google/protobuf/p0;

.field public static final enum INT64_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum MAP:Lcom/google/protobuf/p0;

.field public static final enum MESSAGE:Lcom/google/protobuf/p0;

.field public static final enum MESSAGE_LIST:Lcom/google/protobuf/p0;

.field public static final enum SFIXED32:Lcom/google/protobuf/p0;

.field public static final enum SFIXED32_LIST:Lcom/google/protobuf/p0;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum SFIXED64:Lcom/google/protobuf/p0;

.field public static final enum SFIXED64_LIST:Lcom/google/protobuf/p0;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum SINT32:Lcom/google/protobuf/p0;

.field public static final enum SINT32_LIST:Lcom/google/protobuf/p0;

.field public static final enum SINT32_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum SINT64:Lcom/google/protobuf/p0;

.field public static final enum SINT64_LIST:Lcom/google/protobuf/p0;

.field public static final enum SINT64_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum STRING:Lcom/google/protobuf/p0;

.field public static final enum STRING_LIST:Lcom/google/protobuf/p0;

.field public static final enum UINT32:Lcom/google/protobuf/p0;

.field public static final enum UINT32_LIST:Lcom/google/protobuf/p0;

.field public static final enum UINT32_LIST_PACKED:Lcom/google/protobuf/p0;

.field public static final enum UINT64:Lcom/google/protobuf/p0;

.field public static final enum UINT64_LIST:Lcom/google/protobuf/p0;

.field public static final enum UINT64_LIST_PACKED:Lcom/google/protobuf/p0;

.field private static final VALUES:[Lcom/google/protobuf/p0;


# instance fields
.field private final collection:Lcom/google/protobuf/p0$b;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/google/protobuf/G0;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 65

    new-instance v7, Lcom/google/protobuf/p0;

    move-object v6, v7

    sget-object v24, Lcom/google/protobuf/p0$b;->SCALAR:Lcom/google/protobuf/p0$b;

    sget-object v42, Lcom/google/protobuf/G0;->DOUBLE:Lcom/google/protobuf/G0;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object/from16 v4, v24

    move-object/from16 v5, v42

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v7, Lcom/google/protobuf/p0;->DOUBLE:Lcom/google/protobuf/p0;

    new-instance v8, Lcom/google/protobuf/p0;

    move-object v7, v8

    sget-object v43, Lcom/google/protobuf/G0;->FLOAT:Lcom/google/protobuf/G0;

    const-string v1, "FLOAT"

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v8, Lcom/google/protobuf/p0;->FLOAT:Lcom/google/protobuf/p0;

    new-instance v9, Lcom/google/protobuf/p0;

    move-object v8, v9

    sget-object v55, Lcom/google/protobuf/G0;->LONG:Lcom/google/protobuf/G0;

    const-string v1, "INT64"

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v9

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v9, Lcom/google/protobuf/p0;->INT64:Lcom/google/protobuf/p0;

    new-instance v10, Lcom/google/protobuf/p0;

    move-object v9, v10

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-string v1, "UINT64"

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v10, Lcom/google/protobuf/p0;->UINT64:Lcom/google/protobuf/p0;

    new-instance v11, Lcom/google/protobuf/p0;

    move-object v10, v11

    sget-object v54, Lcom/google/protobuf/G0;->INT:Lcom/google/protobuf/G0;

    const-string v1, "INT32"

    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object v0, v11

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v11, Lcom/google/protobuf/p0;->INT32:Lcom/google/protobuf/p0;

    new-instance v12, Lcom/google/protobuf/p0;

    move-object v11, v12

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v1, "FIXED64"

    move-object v0, v12

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v12, Lcom/google/protobuf/p0;->FIXED64:Lcom/google/protobuf/p0;

    new-instance v13, Lcom/google/protobuf/p0;

    move-object v12, v13

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v1, "FIXED32"

    move-object v0, v13

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v13, Lcom/google/protobuf/p0;->FIXED32:Lcom/google/protobuf/p0;

    new-instance v14, Lcom/google/protobuf/p0;

    move-object v13, v14

    sget-object v49, Lcom/google/protobuf/G0;->BOOLEAN:Lcom/google/protobuf/G0;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    move-object v0, v14

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v14, Lcom/google/protobuf/p0;->BOOL:Lcom/google/protobuf/p0;

    new-instance v15, Lcom/google/protobuf/p0;

    move-object v14, v15

    sget-object v33, Lcom/google/protobuf/G0;->STRING:Lcom/google/protobuf/G0;

    const-string v1, "STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, v15

    move-object/from16 v5, v33

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v15, Lcom/google/protobuf/p0;->STRING:Lcom/google/protobuf/p0;

    new-instance v16, Lcom/google/protobuf/p0;

    move-object/from16 v15, v16

    sget-object v56, Lcom/google/protobuf/G0;->MESSAGE:Lcom/google/protobuf/G0;

    const-string v1, "MESSAGE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    move-object/from16 v0, v16

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v16, Lcom/google/protobuf/p0;->MESSAGE:Lcom/google/protobuf/p0;

    new-instance v17, Lcom/google/protobuf/p0;

    move-object/from16 v16, v17

    sget-object v35, Lcom/google/protobuf/G0;->BYTE_STRING:Lcom/google/protobuf/G0;

    const-string v1, "BYTES"

    const/16 v2, 0xa

    const/16 v3, 0xa

    move-object/from16 v0, v17

    move-object/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v17, Lcom/google/protobuf/p0;->BYTES:Lcom/google/protobuf/p0;

    new-instance v18, Lcom/google/protobuf/p0;

    move-object/from16 v17, v18

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string v1, "UINT32"

    move-object/from16 v0, v18

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v18, Lcom/google/protobuf/p0;->UINT32:Lcom/google/protobuf/p0;

    new-instance v19, Lcom/google/protobuf/p0;

    move-object/from16 v18, v19

    sget-object v51, Lcom/google/protobuf/G0;->ENUM:Lcom/google/protobuf/G0;

    const-string v1, "ENUM"

    const/16 v2, 0xc

    const/16 v3, 0xc

    move-object/from16 v0, v19

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v19, Lcom/google/protobuf/p0;->ENUM:Lcom/google/protobuf/p0;

    new-instance v20, Lcom/google/protobuf/p0;

    move-object/from16 v19, v20

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string v1, "SFIXED32"

    move-object/from16 v0, v20

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v20, Lcom/google/protobuf/p0;->SFIXED32:Lcom/google/protobuf/p0;

    new-instance v21, Lcom/google/protobuf/p0;

    move-object/from16 v20, v21

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string v1, "SFIXED64"

    move-object/from16 v0, v21

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v21, Lcom/google/protobuf/p0;->SFIXED64:Lcom/google/protobuf/p0;

    new-instance v22, Lcom/google/protobuf/p0;

    move-object/from16 v21, v22

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string v1, "SINT32"

    move-object/from16 v0, v22

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v22, Lcom/google/protobuf/p0;->SINT32:Lcom/google/protobuf/p0;

    new-instance v23, Lcom/google/protobuf/p0;

    move-object/from16 v22, v23

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string v1, "SINT64"

    move-object/from16 v0, v23

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v23, Lcom/google/protobuf/p0;->SINT64:Lcom/google/protobuf/p0;

    new-instance v25, Lcom/google/protobuf/p0;

    move-object/from16 v23, v25

    const/16 v2, 0x11

    const/16 v3, 0x11

    const-string v1, "GROUP"

    move-object/from16 v0, v25

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v25, Lcom/google/protobuf/p0;->GROUP:Lcom/google/protobuf/p0;

    new-instance v25, Lcom/google/protobuf/p0;

    move-object/from16 v24, v25

    sget-object v57, Lcom/google/protobuf/p0$b;->VECTOR:Lcom/google/protobuf/p0$b;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    move-object/from16 v0, v25

    move-object/from16 v4, v57

    move-object/from16 v5, v42

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v25, Lcom/google/protobuf/p0;->DOUBLE_LIST:Lcom/google/protobuf/p0;

    new-instance v26, Lcom/google/protobuf/p0;

    move-object/from16 v25, v26

    const/16 v2, 0x13

    const/16 v3, 0x13

    const-string v1, "FLOAT_LIST"

    move-object/from16 v0, v26

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v26, Lcom/google/protobuf/p0;->FLOAT_LIST:Lcom/google/protobuf/p0;

    new-instance v27, Lcom/google/protobuf/p0;

    move-object/from16 v26, v27

    const/16 v2, 0x14

    const/16 v3, 0x14

    const-string v1, "INT64_LIST"

    move-object/from16 v0, v27

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v27, Lcom/google/protobuf/p0;->INT64_LIST:Lcom/google/protobuf/p0;

    new-instance v28, Lcom/google/protobuf/p0;

    move-object/from16 v27, v28

    const/16 v2, 0x15

    const/16 v3, 0x15

    const-string v1, "UINT64_LIST"

    move-object/from16 v0, v28

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v28, Lcom/google/protobuf/p0;->UINT64_LIST:Lcom/google/protobuf/p0;

    new-instance v29, Lcom/google/protobuf/p0;

    move-object/from16 v28, v29

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v1, "INT32_LIST"

    move-object/from16 v0, v29

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v29, Lcom/google/protobuf/p0;->INT32_LIST:Lcom/google/protobuf/p0;

    new-instance v30, Lcom/google/protobuf/p0;

    move-object/from16 v29, v30

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v1, "FIXED64_LIST"

    move-object/from16 v0, v30

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v30, Lcom/google/protobuf/p0;->FIXED64_LIST:Lcom/google/protobuf/p0;

    new-instance v31, Lcom/google/protobuf/p0;

    move-object/from16 v30, v31

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v1, "FIXED32_LIST"

    move-object/from16 v0, v31

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v31, Lcom/google/protobuf/p0;->FIXED32_LIST:Lcom/google/protobuf/p0;

    new-instance v32, Lcom/google/protobuf/p0;

    move-object/from16 v31, v32

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v1, "BOOL_LIST"

    move-object/from16 v0, v32

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v32, Lcom/google/protobuf/p0;->BOOL_LIST:Lcom/google/protobuf/p0;

    new-instance v34, Lcom/google/protobuf/p0;

    move-object/from16 v32, v34

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v1, "STRING_LIST"

    move-object/from16 v0, v34

    move-object/from16 v5, v33

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v34, Lcom/google/protobuf/p0;->STRING_LIST:Lcom/google/protobuf/p0;

    new-instance v34, Lcom/google/protobuf/p0;

    move-object/from16 v33, v34

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const-string v1, "MESSAGE_LIST"

    move-object/from16 v0, v34

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v34, Lcom/google/protobuf/p0;->MESSAGE_LIST:Lcom/google/protobuf/p0;

    new-instance v36, Lcom/google/protobuf/p0;

    move-object/from16 v34, v36

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const-string v1, "BYTES_LIST"

    move-object/from16 v0, v36

    move-object/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v36, Lcom/google/protobuf/p0;->BYTES_LIST:Lcom/google/protobuf/p0;

    new-instance v36, Lcom/google/protobuf/p0;

    move-object/from16 v35, v36

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const-string v1, "UINT32_LIST"

    move-object/from16 v0, v36

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v36, Lcom/google/protobuf/p0;->UINT32_LIST:Lcom/google/protobuf/p0;

    new-instance v37, Lcom/google/protobuf/p0;

    move-object/from16 v36, v37

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const-string v1, "ENUM_LIST"

    move-object/from16 v0, v37

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v37, Lcom/google/protobuf/p0;->ENUM_LIST:Lcom/google/protobuf/p0;

    new-instance v38, Lcom/google/protobuf/p0;

    move-object/from16 v37, v38

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const-string v1, "SFIXED32_LIST"

    move-object/from16 v0, v38

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v38, Lcom/google/protobuf/p0;->SFIXED32_LIST:Lcom/google/protobuf/p0;

    new-instance v39, Lcom/google/protobuf/p0;

    move-object/from16 v38, v39

    const/16 v2, 0x20

    const/16 v3, 0x20

    const-string v1, "SFIXED64_LIST"

    move-object/from16 v0, v39

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v39, Lcom/google/protobuf/p0;->SFIXED64_LIST:Lcom/google/protobuf/p0;

    new-instance v40, Lcom/google/protobuf/p0;

    move-object/from16 v39, v40

    const/16 v2, 0x21

    const/16 v3, 0x21

    const-string v1, "SINT32_LIST"

    move-object/from16 v0, v40

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v40, Lcom/google/protobuf/p0;->SINT32_LIST:Lcom/google/protobuf/p0;

    new-instance v41, Lcom/google/protobuf/p0;

    move-object/from16 v40, v41

    const/16 v2, 0x22

    const/16 v3, 0x22

    const-string v1, "SINT64_LIST"

    move-object/from16 v0, v41

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v41, Lcom/google/protobuf/p0;->SINT64_LIST:Lcom/google/protobuf/p0;

    new-instance v44, Lcom/google/protobuf/p0;

    move-object/from16 v41, v44

    sget-object v58, Lcom/google/protobuf/p0$b;->PACKED_VECTOR:Lcom/google/protobuf/p0$b;

    const-string v1, "DOUBLE_LIST_PACKED"

    const/16 v2, 0x23

    const/16 v3, 0x23

    move-object/from16 v0, v44

    move-object/from16 v4, v58

    move-object/from16 v5, v42

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v44, Lcom/google/protobuf/p0;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v44, Lcom/google/protobuf/p0;

    move-object/from16 v42, v44

    const/16 v2, 0x24

    const/16 v3, 0x24

    const-string v1, "FLOAT_LIST_PACKED"

    move-object/from16 v0, v44

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v44, Lcom/google/protobuf/p0;->FLOAT_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v44, Lcom/google/protobuf/p0;

    move-object/from16 v43, v44

    const/16 v2, 0x25

    const/16 v3, 0x25

    const-string v1, "INT64_LIST_PACKED"

    move-object/from16 v0, v44

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v44, Lcom/google/protobuf/p0;->INT64_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v45, Lcom/google/protobuf/p0;

    move-object/from16 v44, v45

    const/16 v2, 0x26

    const/16 v3, 0x26

    const-string v1, "UINT64_LIST_PACKED"

    move-object/from16 v0, v45

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v45, Lcom/google/protobuf/p0;->UINT64_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v46, Lcom/google/protobuf/p0;

    move-object/from16 v45, v46

    const/16 v2, 0x27

    const/16 v3, 0x27

    const-string v1, "INT32_LIST_PACKED"

    move-object/from16 v0, v46

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v46, Lcom/google/protobuf/p0;->INT32_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v47, Lcom/google/protobuf/p0;

    move-object/from16 v46, v47

    const/16 v2, 0x28

    const/16 v3, 0x28

    const-string v1, "FIXED64_LIST_PACKED"

    move-object/from16 v0, v47

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v47, Lcom/google/protobuf/p0;->FIXED64_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v48, Lcom/google/protobuf/p0;

    move-object/from16 v47, v48

    const/16 v2, 0x29

    const/16 v3, 0x29

    const-string v1, "FIXED32_LIST_PACKED"

    move-object/from16 v0, v48

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v48, Lcom/google/protobuf/p0;->FIXED32_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v50, Lcom/google/protobuf/p0;

    move-object/from16 v48, v50

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const-string v1, "BOOL_LIST_PACKED"

    move-object/from16 v0, v50

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v50, Lcom/google/protobuf/p0;->BOOL_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v50, Lcom/google/protobuf/p0;

    move-object/from16 v49, v50

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    const-string v1, "UINT32_LIST_PACKED"

    move-object/from16 v0, v50

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v50, Lcom/google/protobuf/p0;->UINT32_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v52, Lcom/google/protobuf/p0;

    move-object/from16 v50, v52

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const-string v1, "ENUM_LIST_PACKED"

    move-object/from16 v0, v52

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v52, Lcom/google/protobuf/p0;->ENUM_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v52, Lcom/google/protobuf/p0;

    move-object/from16 v51, v52

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const-string v1, "SFIXED32_LIST_PACKED"

    move-object/from16 v0, v52

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v52, Lcom/google/protobuf/p0;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v53, Lcom/google/protobuf/p0;

    move-object/from16 v52, v53

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const-string v1, "SFIXED64_LIST_PACKED"

    move-object/from16 v0, v53

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v53, Lcom/google/protobuf/p0;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v59, Lcom/google/protobuf/p0;

    move-object/from16 v53, v59

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const-string v1, "SINT32_LIST_PACKED"

    move-object/from16 v0, v59

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v59, Lcom/google/protobuf/p0;->SINT32_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v59, Lcom/google/protobuf/p0;

    move-object/from16 v54, v59

    const/16 v2, 0x30

    const/16 v3, 0x30

    const-string v1, "SINT64_LIST_PACKED"

    move-object/from16 v0, v59

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v59, Lcom/google/protobuf/p0;->SINT64_LIST_PACKED:Lcom/google/protobuf/p0;

    new-instance v58, Lcom/google/protobuf/p0;

    move-object/from16 v55, v58

    const/16 v2, 0x31

    const/16 v3, 0x31

    const-string v1, "GROUP_LIST"

    move-object/from16 v0, v58

    move-object/from16 v4, v57

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v58, Lcom/google/protobuf/p0;->GROUP_LIST:Lcom/google/protobuf/p0;

    new-instance v0, Lcom/google/protobuf/p0;

    move-object/from16 v56, v0

    sget-object v63, Lcom/google/protobuf/p0$b;->MAP:Lcom/google/protobuf/p0$b;

    sget-object v64, Lcom/google/protobuf/G0;->VOID:Lcom/google/protobuf/G0;

    const-string v60, "MAP"

    const/16 v61, 0x32

    const/16 v62, 0x32

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Lcom/google/protobuf/p0;-><init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V

    sput-object v0, Lcom/google/protobuf/p0;->MAP:Lcom/google/protobuf/p0;

    filled-new-array/range {v6 .. v56}, [Lcom/google/protobuf/p0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p0;->$VALUES:[Lcom/google/protobuf/p0;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Lcom/google/protobuf/p0;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/google/protobuf/p0;->values()[Lcom/google/protobuf/p0;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lcom/google/protobuf/p0;

    sput-object v2, Lcom/google/protobuf/p0;->VALUES:[Lcom/google/protobuf/p0;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/google/protobuf/p0;->VALUES:[Lcom/google/protobuf/p0;

    iget v5, v3, Lcom/google/protobuf/p0;->id:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/google/protobuf/p0$b;Lcom/google/protobuf/G0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id",
            "collection",
            "javaType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/p0$b;",
            "Lcom/google/protobuf/G0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/p0;->id:I

    iput-object p4, p0, Lcom/google/protobuf/p0;->collection:Lcom/google/protobuf/p0$b;

    iput-object p5, p0, Lcom/google/protobuf/p0;->javaType:Lcom/google/protobuf/G0;

    sget-object p1, Lcom/google/protobuf/p0$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/p0;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcom/google/protobuf/G0;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/p0;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Lcom/google/protobuf/G0;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/p0;->elementType:Ljava/lang/Class;

    :goto_0
    sget-object p1, Lcom/google/protobuf/p0$b;->SCALAR:Lcom/google/protobuf/p0$b;

    if-ne p4, p1, :cond_2

    sget-object p1, Lcom/google/protobuf/p0$a;->b:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lcom/google/protobuf/p0;->primitiveScalar:Z

    return-void
.end method

.method public static a(I)Lcom/google/protobuf/p0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    if-ltz p0, :cond_1

    sget-object v0, Lcom/google/protobuf/p0;->VALUES:[Lcom/google/protobuf/p0;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-class v3, Ljava/util/List;

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "realTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    :goto_0
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_8

    invoke-static {p0}, Lcom/google/protobuf/p0;->b(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    move v3, v1

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget-object v4, v0, v3

    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v6, p1

    array-length v7, v5

    if-ne v6, v7, :cond_2

    move v6, v1

    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_1

    aget-object v7, v5, v6

    if-ne v4, v7, :cond_0

    aget-object v4, p1, v6

    aput-object v4, v0, v3

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find replacement for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Type array mismatch"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object p1, v0

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/google/protobuf/p0;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object p0, v4

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_8
    array-length p0, p1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    aget-object p0, p1, v1

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to identify parameter type for List<T>"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/p0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/p0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/p0;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/p0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/p0;->$VALUES:[Lcom/google/protobuf/p0;

    invoke-virtual {v0}, [Lcom/google/protobuf/p0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/p0;

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/protobuf/G0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/p0;->javaType:Lcom/google/protobuf/G0;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/p0;->id:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/p0;->collection:Lcom/google/protobuf/p0$b;

    invoke-virtual {v0}, Lcom/google/protobuf/p0$b;->a()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/p0;->collection:Lcom/google/protobuf/p0$b;

    sget-object v1, Lcom/google/protobuf/p0$b;->MAP:Lcom/google/protobuf/p0$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/p0;->primitiveScalar:Z

    return v0
.end method

.method public i2()Z
    .locals 2

    sget-object v0, Lcom/google/protobuf/p0$b;->PACKED_VECTOR:Lcom/google/protobuf/p0$b;

    iget-object v1, p0, Lcom/google/protobuf/p0;->collection:Lcom/google/protobuf/p0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/p0;->collection:Lcom/google/protobuf/p0$b;

    sget-object v1, Lcom/google/protobuf/p0$b;->SCALAR:Lcom/google/protobuf/p0$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Ljava/lang/reflect/Field;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/p0$b;->VECTOR:Lcom/google/protobuf/p0$b;

    iget-object v1, p0, Lcom/google/protobuf/p0;->collection:Lcom/google/protobuf/p0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/p0;->m(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/p0;->javaType:Lcom/google/protobuf/G0;

    invoke-virtual {v0}, Lcom/google/protobuf/G0;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/reflect/Field;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/p0;->javaType:Lcom/google/protobuf/G0;

    invoke-virtual {v1}, Lcom/google/protobuf/G0;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v1, Lcom/google/protobuf/p0;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/p0;->d(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/p0;->elementType:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
