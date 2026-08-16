.class public enum Lcom/google/protobuf/A2$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/A2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/A2$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/A2$b;

.field public static final enum BOOL:Lcom/google/protobuf/A2$b;

.field public static final enum BYTES:Lcom/google/protobuf/A2$b;

.field public static final enum DOUBLE:Lcom/google/protobuf/A2$b;

.field public static final enum ENUM:Lcom/google/protobuf/A2$b;

.field public static final enum FIXED32:Lcom/google/protobuf/A2$b;

.field public static final enum FIXED64:Lcom/google/protobuf/A2$b;

.field public static final enum FLOAT:Lcom/google/protobuf/A2$b;

.field public static final enum GROUP:Lcom/google/protobuf/A2$b;

.field public static final enum INT32:Lcom/google/protobuf/A2$b;

.field public static final enum INT64:Lcom/google/protobuf/A2$b;

.field public static final enum MESSAGE:Lcom/google/protobuf/A2$b;

.field public static final enum SFIXED32:Lcom/google/protobuf/A2$b;

.field public static final enum SFIXED64:Lcom/google/protobuf/A2$b;

.field public static final enum SINT32:Lcom/google/protobuf/A2$b;

.field public static final enum SINT64:Lcom/google/protobuf/A2$b;

.field public static final enum STRING:Lcom/google/protobuf/A2$b;

.field public static final enum UINT32:Lcom/google/protobuf/A2$b;

.field public static final enum UINT64:Lcom/google/protobuf/A2$b;


# instance fields
.field private final javaType:Lcom/google/protobuf/A2$c;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/google/protobuf/A2$b;

    sget-object v1, Lcom/google/protobuf/A2$c;->DOUBLE:Lcom/google/protobuf/A2$c;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v0, Lcom/google/protobuf/A2$b;->DOUBLE:Lcom/google/protobuf/A2$b;

    new-instance v1, Lcom/google/protobuf/A2$b;

    sget-object v2, Lcom/google/protobuf/A2$c;->FLOAT:Lcom/google/protobuf/A2$c;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v1, Lcom/google/protobuf/A2$b;->FLOAT:Lcom/google/protobuf/A2$b;

    new-instance v2, Lcom/google/protobuf/A2$b;

    sget-object v5, Lcom/google/protobuf/A2$c;->LONG:Lcom/google/protobuf/A2$c;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v2, Lcom/google/protobuf/A2$b;->INT64:Lcom/google/protobuf/A2$b;

    new-instance v7, Lcom/google/protobuf/A2$b;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v7, Lcom/google/protobuf/A2$b;->UINT64:Lcom/google/protobuf/A2$b;

    new-instance v9, Lcom/google/protobuf/A2$b;

    sget-object v11, Lcom/google/protobuf/A2$c;->INT:Lcom/google/protobuf/A2$c;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v9, Lcom/google/protobuf/A2$b;->INT32:Lcom/google/protobuf/A2$b;

    new-instance v12, Lcom/google/protobuf/A2$b;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v12, Lcom/google/protobuf/A2$b;->FIXED64:Lcom/google/protobuf/A2$b;

    new-instance v14, Lcom/google/protobuf/A2$b;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v14, Lcom/google/protobuf/A2$b;->FIXED32:Lcom/google/protobuf/A2$b;

    new-instance v15, Lcom/google/protobuf/A2$b;

    const/4 v13, 0x7

    sget-object v4, Lcom/google/protobuf/A2$c;->BOOLEAN:Lcom/google/protobuf/A2$c;

    const-string v6, "BOOL"

    invoke-direct {v15, v6, v13, v4, v3}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v15, Lcom/google/protobuf/A2$b;->BOOL:Lcom/google/protobuf/A2$b;

    new-instance v4, Lcom/google/protobuf/A2$b$a;

    const/16 v6, 0x8

    sget-object v13, Lcom/google/protobuf/A2$c;->STRING:Lcom/google/protobuf/A2$c;

    const-string v3, "STRING"

    invoke-direct {v4, v3, v6, v13, v8}, Lcom/google/protobuf/A2$b$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v4, Lcom/google/protobuf/A2$b;->STRING:Lcom/google/protobuf/A2$b;

    new-instance v3, Lcom/google/protobuf/A2$b$b;

    sget-object v13, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    const-string v6, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v3, v6, v8, v13, v10}, Lcom/google/protobuf/A2$b$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v3, Lcom/google/protobuf/A2$b;->GROUP:Lcom/google/protobuf/A2$b;

    new-instance v6, Lcom/google/protobuf/A2$b$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v3

    const/4 v3, 0x2

    invoke-direct {v6, v8, v10, v13, v3}, Lcom/google/protobuf/A2$b$c;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v6, Lcom/google/protobuf/A2$b;->MESSAGE:Lcom/google/protobuf/A2$b;

    new-instance v8, Lcom/google/protobuf/A2$b$d;

    const/16 v13, 0xb

    sget-object v10, Lcom/google/protobuf/A2$c;->BYTE_STRING:Lcom/google/protobuf/A2$c;

    move-object/from16 v17, v6

    const-string v6, "BYTES"

    invoke-direct {v8, v6, v13, v10, v3}, Lcom/google/protobuf/A2$b$d;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v8, Lcom/google/protobuf/A2$b;->BYTES:Lcom/google/protobuf/A2$b;

    new-instance v3, Lcom/google/protobuf/A2$b;

    const-string v6, "UINT32"

    const/16 v10, 0xc

    const/4 v13, 0x0

    invoke-direct {v3, v6, v10, v11, v13}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v3, Lcom/google/protobuf/A2$b;->UINT32:Lcom/google/protobuf/A2$b;

    new-instance v6, Lcom/google/protobuf/A2$b;

    const/16 v10, 0xd

    move-object/from16 v18, v3

    sget-object v3, Lcom/google/protobuf/A2$c;->ENUM:Lcom/google/protobuf/A2$c;

    move-object/from16 v19, v8

    const-string v8, "ENUM"

    invoke-direct {v6, v8, v10, v3, v13}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v6, Lcom/google/protobuf/A2$b;->ENUM:Lcom/google/protobuf/A2$b;

    new-instance v3, Lcom/google/protobuf/A2$b;

    const-string v8, "SFIXED32"

    const/16 v13, 0xe

    const/4 v10, 0x5

    invoke-direct {v3, v8, v13, v11, v10}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v3, Lcom/google/protobuf/A2$b;->SFIXED32:Lcom/google/protobuf/A2$b;

    new-instance v8, Lcom/google/protobuf/A2$b;

    const-string v10, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v8, v10, v13, v5, v3}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v8, Lcom/google/protobuf/A2$b;->SFIXED64:Lcom/google/protobuf/A2$b;

    new-instance v3, Lcom/google/protobuf/A2$b;

    const-string v10, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v8

    const/4 v8, 0x0

    invoke-direct {v3, v10, v13, v11, v8}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v3, Lcom/google/protobuf/A2$b;->SINT32:Lcom/google/protobuf/A2$b;

    new-instance v10, Lcom/google/protobuf/A2$b;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v10, v11, v13, v5, v8}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    sput-object v10, Lcom/google/protobuf/A2$b;->SINT64:Lcom/google/protobuf/A2$b;

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/google/protobuf/A2$b;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v6, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v10, v5, v13

    sput-object v5, Lcom/google/protobuf/A2$b;->$VALUES:[Lcom/google/protobuf/A2$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType",
            "wireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/A2$c;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/protobuf/A2$b;->javaType:Lcom/google/protobuf/A2$c;

    .line 4
    iput p4, p0, Lcom/google/protobuf/A2$b;->wireType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;ILcom/google/protobuf/A2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/A2$b;-><init>(Ljava/lang/String;ILcom/google/protobuf/A2$c;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/A2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/A2$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/A2$b;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/A2$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/A2$b;->$VALUES:[Lcom/google/protobuf/A2$b;

    invoke-virtual {v0}, [Lcom/google/protobuf/A2$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/A2$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/protobuf/A2$c;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/A2$b;->javaType:Lcom/google/protobuf/A2$c;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/A2$b;->wireType:I

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
