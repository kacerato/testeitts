.class public final enum LKm/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LKm/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LKm/b$a;

.field public static final enum DETERMINISTIC:LKm/b$a;

.field public static final enum SIDE_EFFECT_FREE:LKm/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LKm/b$a;

    const-string v1, "SIDE_EFFECT_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LKm/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LKm/b$a;->SIDE_EFFECT_FREE:LKm/b$a;

    new-instance v1, LKm/b$a;

    const-string v2, "DETERMINISTIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LKm/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LKm/b$a;->DETERMINISTIC:LKm/b$a;

    filled-new-array {v0, v1}, [LKm/b$a;

    move-result-object v0

    sput-object v0, LKm/b$a;->$VALUES:[LKm/b$a;

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

.method public static valueOf(Ljava/lang/String;)LKm/b$a;
    .locals 1

    const-class v0, LKm/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LKm/b$a;

    return-object p0
.end method

.method public static values()[LKm/b$a;
    .locals 1

    sget-object v0, LKm/b$a;->$VALUES:[LKm/b$a;

    invoke-virtual {v0}, [LKm/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKm/b$a;

    return-object v0
.end method
