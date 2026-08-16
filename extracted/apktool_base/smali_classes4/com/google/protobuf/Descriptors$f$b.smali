.class public final enum Lcom/google/protobuf/Descriptors$f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum BOOLEAN:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum BYTE_STRING:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum DOUBLE:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum ENUM:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum FLOAT:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum INT:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum LONG:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

.field public static final enum STRING:Lcom/google/protobuf/Descriptors$f$b;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/protobuf/Descriptors$f$b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$f$b;->INT:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v1, Lcom/google/protobuf/Descriptors$f$b;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lcom/google/protobuf/Descriptors$f$b;->LONG:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v2, Lcom/google/protobuf/Descriptors$f$b;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lcom/google/protobuf/Descriptors$f$b;->FLOAT:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v3, Lcom/google/protobuf/Descriptors$f$b;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lcom/google/protobuf/Descriptors$f$b;->DOUBLE:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v4, Lcom/google/protobuf/Descriptors$f$b;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lcom/google/protobuf/Descriptors$f$b;->BOOLEAN:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v5, Lcom/google/protobuf/Descriptors$f$b;

    const/4 v6, 0x5

    const-string v7, ""

    const-string v8, "STRING"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lcom/google/protobuf/Descriptors$f$b;->STRING:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v6, Lcom/google/protobuf/Descriptors$f$b;

    const/4 v7, 0x6

    sget-object v8, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    const-string v9, "BYTE_STRING"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lcom/google/protobuf/Descriptors$f$b;->BYTE_STRING:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v7, Lcom/google/protobuf/Descriptors$f$b;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    new-instance v8, Lcom/google/protobuf/Descriptors$f$b;

    const-string v9, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lcom/google/protobuf/Descriptors$f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    filled-new-array/range {v0 .. v8}, [Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$f$b;->$VALUES:[Lcom/google/protobuf/Descriptors$f$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "defaultDefault"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$f$b;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/Descriptors$f$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$f$b;->defaultDefault:Ljava/lang/Object;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/Descriptors$f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$f$b;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$f$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$f$b;->$VALUES:[Lcom/google/protobuf/Descriptors$f$b;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$f$b;

    return-object v0
.end method
