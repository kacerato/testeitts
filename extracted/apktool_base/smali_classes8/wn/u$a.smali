.class public final enum Lwn/u$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwn/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwn/u$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwn/u$a;

.field public static final enum LAYERS:Lwn/u$a;

.field public static final enum MONOTONE:Lwn/u$a;

.field public static final enum WATERSHED:Lwn/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lwn/u$a;

    const-string v1, "WATERSHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwn/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwn/u$a;->WATERSHED:Lwn/u$a;

    new-instance v0, Lwn/u$a;

    const-string v1, "MONOTONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwn/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwn/u$a;->MONOTONE:Lwn/u$a;

    new-instance v0, Lwn/u$a;

    const-string v1, "LAYERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lwn/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwn/u$a;->LAYERS:Lwn/u$a;

    invoke-static {}, Lwn/u$a;->a()[Lwn/u$a;

    move-result-object v0

    sput-object v0, Lwn/u$a;->$VALUES:[Lwn/u$a;

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

.method public static synthetic a()[Lwn/u$a;
    .locals 3

    sget-object v0, Lwn/u$a;->WATERSHED:Lwn/u$a;

    sget-object v1, Lwn/u$a;->MONOTONE:Lwn/u$a;

    sget-object v2, Lwn/u$a;->LAYERS:Lwn/u$a;

    filled-new-array {v0, v1, v2}, [Lwn/u$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lwn/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lwn/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwn/u$a;

    return-object p0
.end method

.method public static values()[Lwn/u$a;
    .locals 1

    sget-object v0, Lwn/u$a;->$VALUES:[Lwn/u$a;

    invoke-virtual {v0}, [Lwn/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwn/u$a;

    return-object v0
.end method
