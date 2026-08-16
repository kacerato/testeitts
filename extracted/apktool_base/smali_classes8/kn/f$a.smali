.class public final enum Lkn/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkn/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkn/f$a;

.field public static final enum DT_CROWDAGENT_STATE_INVALID:Lkn/f$a;

.field public static final enum DT_CROWDAGENT_STATE_OFFMESH:Lkn/f$a;

.field public static final enum DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkn/f$a;

    const-string v1, "DT_CROWDAGENT_STATE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkn/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$a;->DT_CROWDAGENT_STATE_INVALID:Lkn/f$a;

    new-instance v0, Lkn/f$a;

    const-string v1, "DT_CROWDAGENT_STATE_WALKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkn/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    new-instance v0, Lkn/f$a;

    const-string v1, "DT_CROWDAGENT_STATE_OFFMESH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkn/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkn/f$a;->DT_CROWDAGENT_STATE_OFFMESH:Lkn/f$a;

    invoke-static {}, Lkn/f$a;->a()[Lkn/f$a;

    move-result-object v0

    sput-object v0, Lkn/f$a;->$VALUES:[Lkn/f$a;

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

.method public static synthetic a()[Lkn/f$a;
    .locals 3

    sget-object v0, Lkn/f$a;->DT_CROWDAGENT_STATE_INVALID:Lkn/f$a;

    sget-object v1, Lkn/f$a;->DT_CROWDAGENT_STATE_WALKING:Lkn/f$a;

    sget-object v2, Lkn/f$a;->DT_CROWDAGENT_STATE_OFFMESH:Lkn/f$a;

    filled-new-array {v0, v1, v2}, [Lkn/f$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkn/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lkn/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkn/f$a;

    return-object p0
.end method

.method public static values()[Lkn/f$a;
    .locals 1

    sget-object v0, Lkn/f$a;->$VALUES:[Lkn/f$a;

    invoke-virtual {v0}, [Lkn/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkn/f$a;

    return-object v0
.end method
