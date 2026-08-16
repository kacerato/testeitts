.class public final enum Lgg/G;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgg/G;",
        ">;"
    }
.end annotation

.annotation build Leg/a1;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgg/G;

.field public static final enum FIXED_DELAY:Lgg/G;

.field public static final enum FIXED_PERIOD:Lgg/G;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgg/G;

    const-string v1, "FIXED_PERIOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgg/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgg/G;->FIXED_PERIOD:Lgg/G;

    new-instance v0, Lgg/G;

    const-string v1, "FIXED_DELAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgg/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgg/G;->FIXED_DELAY:Lgg/G;

    invoke-static {}, Lgg/G;->a()[Lgg/G;

    move-result-object v0

    sput-object v0, Lgg/G;->$VALUES:[Lgg/G;

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

.method public static final synthetic a()[Lgg/G;
    .locals 2

    sget-object v0, Lgg/G;->FIXED_PERIOD:Lgg/G;

    sget-object v1, Lgg/G;->FIXED_DELAY:Lgg/G;

    filled-new-array {v0, v1}, [Lgg/G;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgg/G;
    .locals 1

    const-class v0, Lgg/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgg/G;

    return-object p0
.end method

.method public static values()[Lgg/G;
    .locals 1

    sget-object v0, Lgg/G;->$VALUES:[Lgg/G;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgg/G;

    return-object v0
.end method
