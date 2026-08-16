.class public final enum LD2/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime LD2/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LD2/r;",
        ">;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field private static final synthetic $VALUES:[LD2/r;

.field public static final enum APPEND:LD2/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LD2/r;

    const-string v1, "APPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LD2/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LD2/r;->APPEND:LD2/r;

    invoke-static {}, LD2/r;->a()[LD2/r;

    move-result-object v0

    sput-object v0, LD2/r;->$VALUES:[LD2/r;

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

.method public static synthetic a()[LD2/r;
    .locals 1

    sget-object v0, LD2/r;->APPEND:LD2/r;

    filled-new-array {v0}, [LD2/r;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LD2/r;
    .locals 1

    const-class v0, LD2/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LD2/r;

    return-object p0
.end method

.method public static values()[LD2/r;
    .locals 1

    sget-object v0, LD2/r;->$VALUES:[LD2/r;

    invoke-virtual {v0}, [LD2/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LD2/r;

    return-object v0
.end method
