.class public final enum Lcom/google/protobuf/G0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/G0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/G0;

.field public static final enum BOOLEAN:Lcom/google/protobuf/G0;

.field public static final enum BYTE_STRING:Lcom/google/protobuf/G0;

.field public static final enum DOUBLE:Lcom/google/protobuf/G0;

.field public static final enum ENUM:Lcom/google/protobuf/G0;

.field public static final enum FLOAT:Lcom/google/protobuf/G0;

.field public static final enum INT:Lcom/google/protobuf/G0;

.field public static final enum LONG:Lcom/google/protobuf/G0;

.field public static final enum MESSAGE:Lcom/google/protobuf/G0;

.field public static final enum STRING:Lcom/google/protobuf/G0;

.field public static final enum VOID:Lcom/google/protobuf/G0;


# instance fields
.field private final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v6, Lcom/google/protobuf/G0;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/protobuf/G0;->VOID:Lcom/google/protobuf/G0;

    new-instance v1, Lcom/google/protobuf/G0;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "INT"

    const/4 v9, 0x1

    const-class v11, Ljava/lang/Integer;

    move-object v7, v1

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Lcom/google/protobuf/G0;->INT:Lcom/google/protobuf/G0;

    new-instance v2, Lcom/google/protobuf/G0;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v14, "LONG"

    const/4 v15, 0x2

    const-class v17, Ljava/lang/Long;

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/google/protobuf/G0;->LONG:Lcom/google/protobuf/G0;

    new-instance v3, Lcom/google/protobuf/G0;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    const-class v11, Ljava/lang/Float;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/protobuf/G0;->FLOAT:Lcom/google/protobuf/G0;

    new-instance v4, Lcom/google/protobuf/G0;

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const-string v14, "DOUBLE"

    const/4 v15, 0x4

    const-class v17, Ljava/lang/Double;

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Lcom/google/protobuf/G0;->DOUBLE:Lcom/google/protobuf/G0;

    new-instance v5, Lcom/google/protobuf/G0;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x5

    const-class v11, Ljava/lang/Boolean;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/google/protobuf/G0;->BOOLEAN:Lcom/google/protobuf/G0;

    new-instance v19, Lcom/google/protobuf/G0;

    const-class v17, Ljava/lang/String;

    const-string v18, ""

    const-string v14, "STRING"

    const/4 v15, 0x6

    const-class v16, Ljava/lang/String;

    move-object/from16 v13, v19

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v19, Lcom/google/protobuf/G0;->STRING:Lcom/google/protobuf/G0;

    new-instance v13, Lcom/google/protobuf/G0;

    const-class v11, Lcom/google/protobuf/x;

    sget-object v12, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    const-class v10, Lcom/google/protobuf/x;

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v13, Lcom/google/protobuf/G0;->BYTE_STRING:Lcom/google/protobuf/G0;

    new-instance v14, Lcom/google/protobuf/G0;

    const-class v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    const-string v8, "ENUM"

    const/16 v9, 0x8

    move-object v7, v14

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v14, Lcom/google/protobuf/G0;->ENUM:Lcom/google/protobuf/G0;

    new-instance v9, Lcom/google/protobuf/G0;

    const-class v24, Ljava/lang/Object;

    const/16 v25, 0x0

    const-string v21, "MESSAGE"

    const/16 v22, 0x9

    const-class v23, Ljava/lang/Object;

    move-object/from16 v20, v9

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/G0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/google/protobuf/G0;->MESSAGE:Lcom/google/protobuf/G0;

    move-object v0, v6

    move-object/from16 v6, v19

    move-object v7, v13

    move-object v8, v14

    filled-new-array/range {v0 .. v9}, [Lcom/google/protobuf/G0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/G0;->$VALUES:[Lcom/google/protobuf/G0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
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
            "type",
            "boxedType",
            "defaultDefault"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/G0;->type:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/protobuf/G0;->boxedType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/protobuf/G0;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/G0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/G0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/G0;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/G0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/G0;->$VALUES:[Lcom/google/protobuf/G0;

    invoke-virtual {v0}, [Lcom/google/protobuf/G0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/G0;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/G0;->boxedType:Ljava/lang/Class;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/G0;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/G0;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public d(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/G0;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
