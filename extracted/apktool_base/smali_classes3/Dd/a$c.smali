.class public final enum LDd/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDd/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDd/a$c;

.field public static final enum HTML_5_PLAYER:LDd/a$c;

.field public static final enum INVALID_PARAMETER_IN_REQUEST:LDd/a$c;

.field public static final enum UNKNOWN:LDd/a$c;

.field public static final enum VIDEO_NOT_FOUND:LDd/a$c;

.field public static final enum VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LDd/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LDd/a$c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDd/a$c;->UNKNOWN:LDd/a$c;

    new-instance v1, LDd/a$c;

    const-string v2, "INVALID_PARAMETER_IN_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LDd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDd/a$c;->INVALID_PARAMETER_IN_REQUEST:LDd/a$c;

    new-instance v2, LDd/a$c;

    const-string v3, "HTML_5_PLAYER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LDd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, LDd/a$c;->HTML_5_PLAYER:LDd/a$c;

    new-instance v3, LDd/a$c;

    const-string v4, "VIDEO_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LDd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, LDd/a$c;->VIDEO_NOT_FOUND:LDd/a$c;

    new-instance v4, LDd/a$c;

    const-string v5, "VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LDd/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, LDd/a$c;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:LDd/a$c;

    filled-new-array {v0, v1, v2, v3, v4}, [LDd/a$c;

    move-result-object v0

    sput-object v0, LDd/a$c;->$VALUES:[LDd/a$c;

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

.method public static valueOf(Ljava/lang/String;)LDd/a$c;
    .locals 1

    const-class v0, LDd/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDd/a$c;

    return-object p0
.end method

.method public static values()[LDd/a$c;
    .locals 1

    sget-object v0, LDd/a$c;->$VALUES:[LDd/a$c;

    invoke-virtual {v0}, [LDd/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDd/a$c;

    return-object v0
.end method
