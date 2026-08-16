.class public final enum Lkn/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkn/f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_REQUESTING:Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_VALID:Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:Lkn/f$b;

.field public static final enum DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:Lkn/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_FAILED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_VALID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_VALID:Lkn/f$b;

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_REQUESTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:Lkn/f$b;

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:Lkn/f$b;

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_WAITING_FOR_PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:Lkn/f$b;

    new-instance v0, Lkn/f$b;

    const-string v1, "DT_CROWDAGENT_TARGET_VELOCITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkn/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    invoke-static {}, Lkn/f$b;->a()[Lkn/f$b;

    move-result-object v0

    sput-object v0, Lkn/f$b;->$VALUES:[Lkn/f$b;

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

.method public static synthetic a()[Lkn/f$b;
    .locals 7

    sget-object v0, Lkn/f$b;->DT_CROWDAGENT_TARGET_NONE:Lkn/f$b;

    sget-object v1, Lkn/f$b;->DT_CROWDAGENT_TARGET_FAILED:Lkn/f$b;

    sget-object v2, Lkn/f$b;->DT_CROWDAGENT_TARGET_VALID:Lkn/f$b;

    sget-object v3, Lkn/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:Lkn/f$b;

    sget-object v4, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:Lkn/f$b;

    sget-object v5, Lkn/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:Lkn/f$b;

    sget-object v6, Lkn/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:Lkn/f$b;

    filled-new-array/range {v0 .. v6}, [Lkn/f$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkn/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lkn/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkn/f$b;

    return-object p0
.end method

.method public static values()[Lkn/f$b;
    .locals 1

    sget-object v0, Lkn/f$b;->$VALUES:[Lkn/f$b;

    invoke-virtual {v0}, [Lkn/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkn/f$b;

    return-object v0
.end method
