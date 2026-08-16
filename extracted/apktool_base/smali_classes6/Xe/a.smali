.class public final enum LXe/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LFe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LXe/a;",
        ">;",
        "LFe/c<",
        "Ljava/lang/Long;",
        "Ljava/lang/Throwable;",
        "LXe/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LXe/a;

.field public static final enum ERROR:LXe/a;

.field public static final enum RETRY:LXe/a;

.field public static final enum SKIP:LXe/a;

.field public static final enum STOP:LXe/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LXe/a;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LXe/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXe/a;->STOP:LXe/a;

    new-instance v1, LXe/a;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LXe/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LXe/a;->ERROR:LXe/a;

    new-instance v2, LXe/a;

    const-string v3, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LXe/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LXe/a;->SKIP:LXe/a;

    new-instance v3, LXe/a;

    const-string v4, "RETRY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LXe/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LXe/a;->RETRY:LXe/a;

    filled-new-array {v0, v1, v2, v3}, [LXe/a;

    move-result-object v0

    sput-object v0, LXe/a;->$VALUES:[LXe/a;

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

.method public static valueOf(Ljava/lang/String;)LXe/a;
    .locals 1

    const-class v0, LXe/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LXe/a;

    return-object p0
.end method

.method public static values()[LXe/a;
    .locals 1

    sget-object v0, LXe/a;->$VALUES:[LXe/a;

    invoke-virtual {v0}, [LXe/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LXe/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/Throwable;)LXe/a;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, LXe/a;->a(Ljava/lang/Long;Ljava/lang/Throwable;)LXe/a;

    move-result-object p1

    return-object p1
.end method
