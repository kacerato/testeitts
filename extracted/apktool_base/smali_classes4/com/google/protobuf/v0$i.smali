.class public final enum Lcom/google/protobuf/v0$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/v0$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/v0$i;

.field public static final enum BUILD_MESSAGE_INFO:Lcom/google/protobuf/v0$i;

.field public static final enum GET_DEFAULT_INSTANCE:Lcom/google/protobuf/v0$i;

.field public static final enum GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/v0$i;

.field public static final enum GET_PARSER:Lcom/google/protobuf/v0$i;

.field public static final enum NEW_BUILDER:Lcom/google/protobuf/v0$i;

.field public static final enum NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/v0$i;

.field public static final enum SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/v0$i;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/protobuf/v0$i;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/v0$i;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/v0$i;

    new-instance v1, Lcom/google/protobuf/v0$i;

    const-string v2, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/v0$i;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/v0$i;

    new-instance v2, Lcom/google/protobuf/v0$i;

    const-string v3, "BUILD_MESSAGE_INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/protobuf/v0$i;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/v0$i;

    new-instance v3, Lcom/google/protobuf/v0$i;

    const-string v4, "NEW_MUTABLE_INSTANCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/v0$i;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/v0$i;

    new-instance v4, Lcom/google/protobuf/v0$i;

    const-string v5, "NEW_BUILDER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/protobuf/v0$i;->NEW_BUILDER:Lcom/google/protobuf/v0$i;

    new-instance v5, Lcom/google/protobuf/v0$i;

    const-string v6, "GET_DEFAULT_INSTANCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/protobuf/v0$i;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/v0$i;

    new-instance v6, Lcom/google/protobuf/v0$i;

    const-string v7, "GET_PARSER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/protobuf/v0$i;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/protobuf/v0$i;->GET_PARSER:Lcom/google/protobuf/v0$i;

    filled-new-array/range {v0 .. v6}, [Lcom/google/protobuf/v0$i;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/v0$i;->$VALUES:[Lcom/google/protobuf/v0$i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/v0$i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/v0$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/v0$i;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/v0$i;
    .locals 1

    sget-object v0, Lcom/google/protobuf/v0$i;->$VALUES:[Lcom/google/protobuf/v0$i;

    invoke-virtual {v0}, [Lcom/google/protobuf/v0$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/v0$i;

    return-object v0
.end method
