.class public final enum Lcom/google/protobuf/S0$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/S0$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/S0$d;

.field public static final enum BOTH:Lcom/google/protobuf/S0$d;

.field public static final enum LIST:Lcom/google/protobuf/S0$d;

.field public static final enum MAP:Lcom/google/protobuf/S0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/protobuf/S0$d;

    const-string v1, "MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/S0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/S0$d;->MAP:Lcom/google/protobuf/S0$d;

    new-instance v1, Lcom/google/protobuf/S0$d;

    const-string v2, "LIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/S0$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/S0$d;->LIST:Lcom/google/protobuf/S0$d;

    new-instance v2, Lcom/google/protobuf/S0$d;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/S0$d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/protobuf/S0$d;->BOTH:Lcom/google/protobuf/S0$d;

    filled-new-array {v0, v1, v2}, [Lcom/google/protobuf/S0$d;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/S0$d;->$VALUES:[Lcom/google/protobuf/S0$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/S0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/S0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/S0$d;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/S0$d;
    .locals 1

    sget-object v0, Lcom/google/protobuf/S0$d;->$VALUES:[Lcom/google/protobuf/S0$d;

    invoke-virtual {v0}, [Lcom/google/protobuf/S0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/S0$d;

    return-object v0
.end method
