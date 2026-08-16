.class public final enum Lcom/android/dx/dex/file/ItemType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dx/dex/file/ItemType;",
        ">;",
        "Lcom/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v1, Lcom/android/dx/dex/file/ItemType;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "header_item"

    const-string v4, "TYPE_HEADER_ITEM"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v2, Lcom/android/dx/dex/file/ItemType;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "string_id_item"

    const-string v5, "TYPE_STRING_ID_ITEM"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v3, Lcom/android/dx/dex/file/ItemType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "type_id_item"

    const-string v6, "TYPE_TYPE_ID_ITEM"

    invoke-direct {v3, v6, v4, v4, v5}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v4, Lcom/android/dx/dex/file/ItemType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "proto_id_item"

    const-string v7, "TYPE_PROTO_ID_ITEM"

    invoke-direct {v4, v7, v5, v5, v6}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v5, Lcom/android/dx/dex/file/ItemType;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "field_id_item"

    const-string v8, "TYPE_FIELD_ID_ITEM"

    invoke-direct {v5, v8, v6, v6, v7}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v6, Lcom/android/dx/dex/file/ItemType;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "method_id_item"

    const-string v9, "TYPE_METHOD_ID_ITEM"

    invoke-direct {v6, v9, v7, v7, v8}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v7, Lcom/android/dx/dex/file/ItemType;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "class_def_item"

    const-string v10, "TYPE_CLASS_DEF_ITEM"

    invoke-direct {v7, v10, v8, v8, v9}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v8, Lcom/android/dx/dex/file/ItemType;

    move-object v7, v8

    const/16 v9, 0x1000

    const-string v10, "map_list"

    const-string v11, "TYPE_MAP_LIST"

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12, v9, v10}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    new-instance v9, Lcom/android/dx/dex/file/ItemType;

    move-object v8, v9

    const/16 v10, 0x1001

    const-string v11, "type_list"

    const-string v12, "TYPE_TYPE_LIST"

    const/16 v13, 0x8

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    new-instance v10, Lcom/android/dx/dex/file/ItemType;

    move-object v9, v10

    const/16 v11, 0x1002

    const-string v12, "annotation_set_ref_list"

    const-string v13, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v11, v12}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/android/dx/dex/file/ItemType;

    new-instance v11, Lcom/android/dx/dex/file/ItemType;

    move-object v10, v11

    const/16 v12, 0x1003

    const-string v13, "annotation_set_item"

    const-string v14, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v12, Lcom/android/dx/dex/file/ItemType;

    move-object v11, v12

    const/16 v13, 0x2000

    const-string v14, "class_data_item"

    const-string v15, "TYPE_CLASS_DATA_ITEM"

    move-object/from16 v22, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v12, v0

    const/16 v13, 0x2001

    const-string v14, "code_item"

    const-string v15, "TYPE_CODE_ITEM"

    move-object/from16 v23, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v13, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v13, v0

    const/16 v1, 0x2002

    const-string v14, "string_data_item"

    const-string v15, "TYPE_STRING_DATA_ITEM"

    move-object/from16 v24, v2

    const/16 v2, 0xd

    invoke-direct {v0, v15, v2, v1, v14}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v14, v0

    const/16 v1, 0x2003

    const-string v2, "debug_info_item"

    const-string v15, "TYPE_DEBUG_INFO_ITEM"

    move-object/from16 v25, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object v15, v0

    const/16 v1, 0x2004

    const-string v2, "annotation_item"

    const-string v3, "TYPE_ANNOTATION_ITEM"

    move-object/from16 v26, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v16, v0

    const/16 v1, 0x2005

    const-string v2, "encoded_array_item"

    const-string v3, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v17, v0

    const/16 v1, 0x2006

    const-string v2, "annotations_directory_item"

    const-string v3, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v18, v0

    const-string v1, "map_item"

    const-string v2, "TYPE_MAP_ITEM"

    const/16 v3, 0x12

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "type_item"

    const-string v3, "TYPE_TYPE_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "exception_handler_item"

    const-string v3, "TYPE_EXCEPTION_HANDLER_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "annotation_set_ref_item"

    const-string v3, "TYPE_ANNOTATION_SET_REF_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    filled-new-array/range {v0 .. v21}, [Lcom/android/dx/dex/file/ItemType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    iput-object p4, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    const-string p1, "_item"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/16 p1, 0x5f

    const/16 p2, 0x20

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/dex/file/ItemType;
    .locals 1

    const-class v0, Lcom/android/dx/dex/file/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/dx/dex/file/ItemType;

    return-object p0
.end method

.method public static values()[Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->$VALUES:[Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, [Lcom/android/dx/dex/file/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method


# virtual methods
.method public getMapValue()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/file/ItemType;->mapValue:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-object v0
.end method
