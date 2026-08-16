.class public final enum Lqn/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqn/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqn/f;

.field public static final enum DT_OBSTACLE_EMPTY:Lqn/f;

.field public static final enum DT_OBSTACLE_PROCESSED:Lqn/f;

.field public static final enum DT_OBSTACLE_PROCESSING:Lqn/f;

.field public static final enum DT_OBSTACLE_REMOVING:Lqn/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqn/f;

    const-string v1, "DT_OBSTACLE_EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqn/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/f;->DT_OBSTACLE_EMPTY:Lqn/f;

    new-instance v0, Lqn/f;

    const-string v1, "DT_OBSTACLE_PROCESSING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lqn/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/f;->DT_OBSTACLE_PROCESSING:Lqn/f;

    new-instance v0, Lqn/f;

    const-string v1, "DT_OBSTACLE_PROCESSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lqn/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/f;->DT_OBSTACLE_PROCESSED:Lqn/f;

    new-instance v0, Lqn/f;

    const-string v1, "DT_OBSTACLE_REMOVING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lqn/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/f;->DT_OBSTACLE_REMOVING:Lqn/f;

    invoke-static {}, Lqn/f;->a()[Lqn/f;

    move-result-object v0

    sput-object v0, Lqn/f;->$VALUES:[Lqn/f;

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

.method public static synthetic a()[Lqn/f;
    .locals 4

    sget-object v0, Lqn/f;->DT_OBSTACLE_EMPTY:Lqn/f;

    sget-object v1, Lqn/f;->DT_OBSTACLE_PROCESSING:Lqn/f;

    sget-object v2, Lqn/f;->DT_OBSTACLE_PROCESSED:Lqn/f;

    sget-object v3, Lqn/f;->DT_OBSTACLE_REMOVING:Lqn/f;

    filled-new-array {v0, v1, v2, v3}, [Lqn/f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqn/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lqn/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqn/f;

    return-object p0
.end method

.method public static values()[Lqn/f;
    .locals 1

    sget-object v0, Lqn/f;->$VALUES:[Lqn/f;

    invoke-virtual {v0}, [Lqn/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn/f;

    return-object v0
.end method
