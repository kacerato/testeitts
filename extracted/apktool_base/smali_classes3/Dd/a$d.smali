.class public final enum LDd/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDd/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDd/a$d;

.field public static final enum BUFFERING:LDd/a$d;

.field public static final enum ENDED:LDd/a$d;

.field public static final enum PAUSED:LDd/a$d;

.field public static final enum PLAYING:LDd/a$d;

.field public static final enum UNKNOWN:LDd/a$d;

.field public static final enum UNSTARTED:LDd/a$d;

.field public static final enum VIDEO_CUED:LDd/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LDd/a$d;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDd/a$d;->UNKNOWN:LDd/a$d;

    new-instance v1, LDd/a$d;

    const-string v2, "UNSTARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDd/a$d;->UNSTARTED:LDd/a$d;

    new-instance v2, LDd/a$d;

    const-string v3, "ENDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v2, LDd/a$d;->ENDED:LDd/a$d;

    new-instance v3, LDd/a$d;

    const-string v4, "PLAYING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, LDd/a$d;->PLAYING:LDd/a$d;

    new-instance v4, LDd/a$d;

    const-string v5, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v4, LDd/a$d;->PAUSED:LDd/a$d;

    new-instance v5, LDd/a$d;

    const-string v6, "BUFFERING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, LDd/a$d;->BUFFERING:LDd/a$d;

    new-instance v6, LDd/a$d;

    const-string v7, "VIDEO_CUED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, LDd/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v6, LDd/a$d;->VIDEO_CUED:LDd/a$d;

    filled-new-array/range {v0 .. v6}, [LDd/a$d;

    move-result-object v0

    sput-object v0, LDd/a$d;->$VALUES:[LDd/a$d;

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

.method public static valueOf(Ljava/lang/String;)LDd/a$d;
    .locals 1

    const-class v0, LDd/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDd/a$d;

    return-object p0
.end method

.method public static values()[LDd/a$d;
    .locals 1

    sget-object v0, LDd/a$d;->$VALUES:[LDd/a$d;

    invoke-virtual {v0}, [LDd/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDd/a$d;

    return-object v0
.end method
