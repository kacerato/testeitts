.class public final enum LU2/N;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LU2/N;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LU2/N;

.field private static final HANDLER:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation
.end field

.field public static final enum INSTANCE:LU2/N;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU2/N;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU2/N;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU2/N;->INSTANCE:LU2/N;

    invoke-static {}, LU2/N;->a()[LU2/N;

    move-result-object v0

    sput-object v0, LU2/N;->$VALUES:[LU2/N;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, LU2/N;->HANDLER:Landroid/os/Handler;

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

.method public static synthetic a()[LU2/N;
    .locals 1

    sget-object v0, LU2/N;->INSTANCE:LU2/N;

    filled-new-array {v0}, [LU2/N;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LU2/N;
    .locals 1

    const-class v0, LU2/N;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU2/N;

    return-object p0
.end method

.method public static values()[LU2/N;
    .locals 1

    sget-object v0, LU2/N;->$VALUES:[LU2/N;

    invoke-virtual {v0}, [LU2/N;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU2/N;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, LU2/N;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
