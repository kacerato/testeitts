.class public final enum Lcom/google/protobuf/Descriptors$f$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$f$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum BOOL:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum BYTES:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum DOUBLE:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum ENUM:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum FIXED32:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum FIXED64:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum FLOAT:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum GROUP:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum INT32:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum INT64:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum SFIXED32:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum SFIXED64:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum SINT32:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum SINT64:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum STRING:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum UINT32:Lcom/google/protobuf/Descriptors$f$c;

.field public static final enum UINT64:Lcom/google/protobuf/Descriptors$f$c;

.field private static final types:[Lcom/google/protobuf/Descriptors$f$c;


# instance fields
.field private final javaType:Lcom/google/protobuf/Descriptors$f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lcom/google/protobuf/Descriptors$f$c;

    move-object v0, v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/protobuf/Descriptors$f$b;->DOUBLE:Lcom/google/protobuf/Descriptors$f$b;

    const-string v4, "DOUBLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v1, Lcom/google/protobuf/Descriptors$f$c;->DOUBLE:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v2, Lcom/google/protobuf/Descriptors$f$c;

    move-object v1, v2

    const/4 v3, 0x1

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->FLOAT:Lcom/google/protobuf/Descriptors$f$b;

    const-string v5, "FLOAT"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v2, Lcom/google/protobuf/Descriptors$f$c;->FLOAT:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v3, Lcom/google/protobuf/Descriptors$f$c;

    move-object v2, v3

    sget-object v15, Lcom/google/protobuf/Descriptors$f$b;->LONG:Lcom/google/protobuf/Descriptors$f$b;

    const-string v4, "INT64"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v15}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v3, Lcom/google/protobuf/Descriptors$f$c;->INT64:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v4, Lcom/google/protobuf/Descriptors$f$c;

    move-object v3, v4

    const-string v5, "UINT64"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v15}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v4, Lcom/google/protobuf/Descriptors$f$c;->UINT64:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v5, Lcom/google/protobuf/Descriptors$f$c;

    move-object v4, v5

    sget-object v14, Lcom/google/protobuf/Descriptors$f$b;->INT:Lcom/google/protobuf/Descriptors$f$b;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v14}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v5, Lcom/google/protobuf/Descriptors$f$c;->INT32:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v6, Lcom/google/protobuf/Descriptors$f$c;

    move-object v5, v6

    const-string v7, "FIXED64"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v15}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v6, Lcom/google/protobuf/Descriptors$f$c;->FIXED64:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v7, Lcom/google/protobuf/Descriptors$f$c;

    move-object v6, v7

    const-string v8, "FIXED32"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v14}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v7, Lcom/google/protobuf/Descriptors$f$c;->FIXED32:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v8, Lcom/google/protobuf/Descriptors$f$c;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v10, Lcom/google/protobuf/Descriptors$f$b;->BOOLEAN:Lcom/google/protobuf/Descriptors$f$b;

    const-string v11, "BOOL"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v8, Lcom/google/protobuf/Descriptors$f$c;->BOOL:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v9, Lcom/google/protobuf/Descriptors$f$c;

    move-object v8, v9

    const/16 v10, 0x8

    sget-object v11, Lcom/google/protobuf/Descriptors$f$b;->STRING:Lcom/google/protobuf/Descriptors$f$b;

    const-string v12, "STRING"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v9, Lcom/google/protobuf/Descriptors$f$c;->STRING:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v10, Lcom/google/protobuf/Descriptors$f$c;

    move-object v9, v10

    sget-object v11, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    const-string v12, "GROUP"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v10, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v12, Lcom/google/protobuf/Descriptors$f$c;

    move-object v10, v12

    const-string v13, "MESSAGE"

    move-object/from16 v16, v15

    const/16 v15, 0xa

    invoke-direct {v12, v13, v15, v11}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v12, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v12, Lcom/google/protobuf/Descriptors$f$c;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v15, Lcom/google/protobuf/Descriptors$f$b;->BYTE_STRING:Lcom/google/protobuf/Descriptors$f$b;

    move-object/from16 v18, v0

    const-string v0, "BYTES"

    invoke-direct {v12, v0, v13, v15}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v12, Lcom/google/protobuf/Descriptors$f$c;->BYTES:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$f$c;

    move-object v12, v0

    const-string v13, "UINT32"

    const/16 v15, 0xc

    invoke-direct {v0, v13, v15, v14}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->UINT32:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$f$c;

    move-object v13, v0

    const/16 v15, 0xd

    move-object/from16 v17, v14

    sget-object v14, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    move-object/from16 v19, v1

    const-string v1, "ENUM"

    invoke-direct {v0, v1, v15, v14}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->ENUM:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$f$c;

    move-object/from16 v1, v17

    move-object v14, v0

    const-string v15, "SFIXED32"

    move-object/from16 v20, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->SFIXED32:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$f$c;

    move-object/from16 v2, v16

    move-object v15, v0

    move-object/from16 v21, v3

    const-string v3, "SFIXED64"

    move-object/from16 v22, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v2}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->SFIXED64:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$f$c;

    move-object/from16 v16, v0

    const-string v3, "SINT32"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->SINT32:Lcom/google/protobuf/Descriptors$f$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$f$c;

    move-object/from16 v17, v0

    const-string v1, "SINT64"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/google/protobuf/Descriptors$f$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->SINT64:Lcom/google/protobuf/Descriptors$f$c;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    filled-new-array/range {v0 .. v17}, [Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->$VALUES:[Lcom/google/protobuf/Descriptors$f$c;

    invoke-static {}, Lcom/google/protobuf/Descriptors$f$c;->values()[Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$f$c;->types:[Lcom/google/protobuf/Descriptors$f$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/protobuf/Descriptors$f$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$f$c;->javaType:Lcom/google/protobuf/Descriptors$f$b;

    return-void
.end method

.method public static synthetic a()[Lcom/google/protobuf/Descriptors$f$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$f$c;->types:[Lcom/google/protobuf/Descriptors$f$c;

    return-object v0
.end method

.method public static d(Lcom/google/protobuf/H$n$d;)Lcom/google/protobuf/Descriptors$f$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/Descriptors$f$c;->types:[Lcom/google/protobuf/Descriptors$f$c;

    invoke-virtual {p0}, Lcom/google/protobuf/H$n$d;->getNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/Descriptors$f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$f$c;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$f$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$f$c;->$VALUES:[Lcom/google/protobuf/Descriptors$f$c;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$f$c;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/protobuf/Descriptors$f$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$f$c;->javaType:Lcom/google/protobuf/Descriptors$f$b;

    return-object v0
.end method

.method public c()Lcom/google/protobuf/H$n$d;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/H$n$d;->a(I)Lcom/google/protobuf/H$n$d;

    move-result-object v0

    return-object v0
.end method
