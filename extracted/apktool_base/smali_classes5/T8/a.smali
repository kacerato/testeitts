.class public final enum LT8/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LT8/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LT8/a;

.field public static final enum None:LT8/a;

.field public static final enum Off:LT8/a;

.field public static final enum Play:LT8/a;

.field public static final enum PlayInLoop:LT8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LT8/a;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LT8/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT8/a;->None:LT8/a;

    new-instance v0, LT8/a;

    const-string v1, "Off"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LT8/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT8/a;->Off:LT8/a;

    new-instance v0, LT8/a;

    const-string v1, "Play"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LT8/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT8/a;->Play:LT8/a;

    new-instance v0, LT8/a;

    const-string v1, "PlayInLoop"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LT8/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT8/a;->PlayInLoop:LT8/a;

    invoke-static {}, LT8/a;->a()[LT8/a;

    move-result-object v0

    sput-object v0, LT8/a;->$VALUES:[LT8/a;

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

.method public static synthetic a()[LT8/a;
    .locals 4

    sget-object v0, LT8/a;->None:LT8/a;

    sget-object v1, LT8/a;->Off:LT8/a;

    sget-object v2, LT8/a;->Play:LT8/a;

    sget-object v3, LT8/a;->PlayInLoop:LT8/a;

    filled-new-array {v0, v1, v2, v3}, [LT8/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LT8/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LT8/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LT8/a;

    return-object p0
.end method

.method public static values()[LT8/a;
    .locals 1

    sget-object v0, LT8/a;->$VALUES:[LT8/a;

    invoke-virtual {v0}, [LT8/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT8/a;

    return-object v0
.end method
