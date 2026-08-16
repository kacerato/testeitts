.class public final enum Lcom/google/protobuf/C2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/C2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/C2$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/C2$a;

.field public static final enum ASCENDING:Lcom/google/protobuf/C2$a;

.field public static final enum DESCENDING:Lcom/google/protobuf/C2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/protobuf/C2$a;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/C2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/C2$a;->ASCENDING:Lcom/google/protobuf/C2$a;

    new-instance v1, Lcom/google/protobuf/C2$a;

    const-string v2, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/C2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/C2$a;->DESCENDING:Lcom/google/protobuf/C2$a;

    filled-new-array {v0, v1}, [Lcom/google/protobuf/C2$a;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/C2$a;->$VALUES:[Lcom/google/protobuf/C2$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/C2$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/C2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/C2$a;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/C2$a;
    .locals 1

    sget-object v0, Lcom/google/protobuf/C2$a;->$VALUES:[Lcom/google/protobuf/C2$a;

    invoke-virtual {v0}, [Lcom/google/protobuf/C2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/C2$a;

    return-object v0
.end method
