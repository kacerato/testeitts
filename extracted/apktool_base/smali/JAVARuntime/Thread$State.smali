.class public final enum LJAVARuntime/Thread$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Thread$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Thread$State;

.field public static final enum BLOCKED:LJAVARuntime/Thread$State;

.field public static final enum NEW:LJAVARuntime/Thread$State;

.field public static final enum RUNNABLE:LJAVARuntime/Thread$State;

.field public static final enum TERMINATED:LJAVARuntime/Thread$State;

.field public static final enum TIMED_WAITING:LJAVARuntime/Thread$State;

.field public static final enum WAITING:LJAVARuntime/Thread$State;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Thread$State;
    .locals 6

    sget-object v0, LJAVARuntime/Thread$State;->NEW:LJAVARuntime/Thread$State;

    sget-object v1, LJAVARuntime/Thread$State;->RUNNABLE:LJAVARuntime/Thread$State;

    sget-object v2, LJAVARuntime/Thread$State;->BLOCKED:LJAVARuntime/Thread$State;

    sget-object v3, LJAVARuntime/Thread$State;->WAITING:LJAVARuntime/Thread$State;

    sget-object v4, LJAVARuntime/Thread$State;->TIMED_WAITING:LJAVARuntime/Thread$State;

    sget-object v5, LJAVARuntime/Thread$State;->TERMINATED:LJAVARuntime/Thread$State;

    filled-new-array/range {v0 .. v5}, [LJAVARuntime/Thread$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Thread$State;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Thread$State;->NEW:LJAVARuntime/Thread$State;

    new-instance v0, LJAVARuntime/Thread$State;

    const-string v1, "RUNNABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Thread$State;->RUNNABLE:LJAVARuntime/Thread$State;

    new-instance v0, LJAVARuntime/Thread$State;

    const-string v1, "BLOCKED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Thread$State;->BLOCKED:LJAVARuntime/Thread$State;

    new-instance v0, LJAVARuntime/Thread$State;

    const-string v1, "WAITING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Thread$State;->WAITING:LJAVARuntime/Thread$State;

    new-instance v0, LJAVARuntime/Thread$State;

    const-string v1, "TIMED_WAITING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Thread$State;->TIMED_WAITING:LJAVARuntime/Thread$State;

    new-instance v0, LJAVARuntime/Thread$State;

    const-string v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/Thread$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Thread$State;->TERMINATED:LJAVARuntime/Thread$State;

    invoke-static {}, LJAVARuntime/Thread$State;->$values()[LJAVARuntime/Thread$State;

    move-result-object v0

    sput-object v0, LJAVARuntime/Thread$State;->$VALUES:[LJAVARuntime/Thread$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Thread$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Thread$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Thread$State;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Thread$State;
    .locals 1

    sget-object v0, LJAVARuntime/Thread$State;->$VALUES:[LJAVARuntime/Thread$State;

    invoke-virtual {v0}, [LJAVARuntime/Thread$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Thread$State;

    return-object v0
.end method
