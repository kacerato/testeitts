.class public final enum Lcom/google/protobuf/Descriptors$g$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$g$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Descriptors$g$b;

.field public static final enum PROTO2:Lcom/google/protobuf/Descriptors$g$b;

.field public static final enum PROTO3:Lcom/google/protobuf/Descriptors$g$b;

.field public static final enum UNKNOWN:Lcom/google/protobuf/Descriptors$g$b;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/protobuf/Descriptors$g$b;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/Descriptors$g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$g$b;->UNKNOWN:Lcom/google/protobuf/Descriptors$g$b;

    new-instance v1, Lcom/google/protobuf/Descriptors$g$b;

    const/4 v2, 0x1

    const-string v3, "proto2"

    const-string v4, "PROTO2"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/protobuf/Descriptors$g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/Descriptors$g$b;->PROTO2:Lcom/google/protobuf/Descriptors$g$b;

    new-instance v2, Lcom/google/protobuf/Descriptors$g$b;

    const/4 v3, 0x2

    const-string v4, "proto3"

    const-string v5, "PROTO3"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/protobuf/Descriptors$g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/Descriptors$g$b;->PROTO3:Lcom/google/protobuf/Descriptors$g$b;

    filled-new-array {v0, v1, v2}, [Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$g$b;->$VALUES:[Lcom/google/protobuf/Descriptors$g$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$g$b;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/Descriptors$g$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$g$b;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$g$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/Descriptors$g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$g$b;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$g$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$g$b;->$VALUES:[Lcom/google/protobuf/Descriptors$g$b;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$g$b;

    return-object v0
.end method
