.class public final enum Lpg/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpg/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpg/r;

.field public static final enum ALREADY_SELECTED:Lpg/r;

.field public static final enum CANCELLED:Lpg/r;

.field public static final enum REREGISTER:Lpg/r;

.field public static final enum SUCCESSFUL:Lpg/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lpg/r;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpg/r;->SUCCESSFUL:Lpg/r;

    new-instance v0, Lpg/r;

    const-string v1, "REREGISTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpg/r;->REREGISTER:Lpg/r;

    new-instance v0, Lpg/r;

    const-string v1, "CANCELLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpg/r;->CANCELLED:Lpg/r;

    new-instance v0, Lpg/r;

    const-string v1, "ALREADY_SELECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpg/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpg/r;->ALREADY_SELECTED:Lpg/r;

    invoke-static {}, Lpg/r;->a()[Lpg/r;

    move-result-object v0

    sput-object v0, Lpg/r;->$VALUES:[Lpg/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lpg/r;
    .locals 4

    sget-object v0, Lpg/r;->SUCCESSFUL:Lpg/r;

    sget-object v1, Lpg/r;->REREGISTER:Lpg/r;

    sget-object v2, Lpg/r;->CANCELLED:Lpg/r;

    sget-object v3, Lpg/r;->ALREADY_SELECTED:Lpg/r;

    filled-new-array {v0, v1, v2, v3}, [Lpg/r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lpg/r;
    .locals 1

    const-class v0, Lpg/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpg/r;

    return-object p0
.end method

.method public static values()[Lpg/r;
    .locals 1

    sget-object v0, Lpg/r;->$VALUES:[Lpg/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpg/r;

    return-object v0
.end method
