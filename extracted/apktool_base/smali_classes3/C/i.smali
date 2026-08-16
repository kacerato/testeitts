.class public final enum LC/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LC/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LC/i;

.field public static final enum DISPLAY_P3:LC/i;

.field public static final enum SRGB:LC/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LC/i;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/i;->SRGB:LC/i;

    new-instance v1, LC/i;

    const-string v2, "DISPLAY_P3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LC/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, LC/i;->DISPLAY_P3:LC/i;

    filled-new-array {v0, v1}, [LC/i;

    move-result-object v0

    sput-object v0, LC/i;->$VALUES:[LC/i;

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

.method public static valueOf(Ljava/lang/String;)LC/i;
    .locals 1

    const-class v0, LC/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LC/i;

    return-object p0
.end method

.method public static values()[LC/i;
    .locals 1

    sget-object v0, LC/i;->$VALUES:[LC/i;

    invoke-virtual {v0}, [LC/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/i;

    return-object v0
.end method
