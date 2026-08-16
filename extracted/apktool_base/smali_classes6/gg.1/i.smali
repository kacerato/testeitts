.class public final enum Lgg/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgg/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgg/i;

.field public static final enum DROP_LATEST:Lgg/i;

.field public static final enum DROP_OLDEST:Lgg/i;

.field public static final enum SUSPEND:Lgg/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgg/i;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgg/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgg/i;->SUSPEND:Lgg/i;

    new-instance v0, Lgg/i;

    const-string v1, "DROP_OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgg/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgg/i;->DROP_OLDEST:Lgg/i;

    new-instance v0, Lgg/i;

    const-string v1, "DROP_LATEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgg/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgg/i;->DROP_LATEST:Lgg/i;

    invoke-static {}, Lgg/i;->a()[Lgg/i;

    move-result-object v0

    sput-object v0, Lgg/i;->$VALUES:[Lgg/i;

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

.method public static final synthetic a()[Lgg/i;
    .locals 3

    sget-object v0, Lgg/i;->SUSPEND:Lgg/i;

    sget-object v1, Lgg/i;->DROP_OLDEST:Lgg/i;

    sget-object v2, Lgg/i;->DROP_LATEST:Lgg/i;

    filled-new-array {v0, v1, v2}, [Lgg/i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgg/i;
    .locals 1

    const-class v0, Lgg/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgg/i;

    return-object p0
.end method

.method public static values()[Lgg/i;
    .locals 1

    sget-object v0, Lgg/i;->$VALUES:[Lgg/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgg/i;

    return-object v0
.end method
