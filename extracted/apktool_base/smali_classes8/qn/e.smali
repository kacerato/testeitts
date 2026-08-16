.class public final enum Lqn/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqn/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqn/e;

.field public static final enum REQUEST_ADD:Lqn/e;

.field public static final enum REQUEST_REMOVE:Lqn/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqn/e;

    const-string v1, "REQUEST_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqn/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/e;->REQUEST_ADD:Lqn/e;

    new-instance v0, Lqn/e;

    const-string v1, "REQUEST_REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lqn/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/e;->REQUEST_REMOVE:Lqn/e;

    invoke-static {}, Lqn/e;->a()[Lqn/e;

    move-result-object v0

    sput-object v0, Lqn/e;->$VALUES:[Lqn/e;

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

.method public static synthetic a()[Lqn/e;
    .locals 2

    sget-object v0, Lqn/e;->REQUEST_ADD:Lqn/e;

    sget-object v1, Lqn/e;->REQUEST_REMOVE:Lqn/e;

    filled-new-array {v0, v1}, [Lqn/e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqn/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lqn/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqn/e;

    return-object p0
.end method

.method public static values()[Lqn/e;
    .locals 1

    sget-object v0, Lqn/e;->$VALUES:[Lqn/e;

    invoke-virtual {v0}, [Lqn/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn/e;

    return-object v0
.end method
