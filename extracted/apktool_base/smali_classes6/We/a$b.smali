.class public abstract enum LWe/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LWe/a$b;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LWe/a$b;

.field public static final enum SLEEP_1000MS:LWe/a$b;

.field public static final enum SLEEP_100MS:LWe/a$b;

.field public static final enum SLEEP_10MS:LWe/a$b;

.field public static final enum SLEEP_1MS:LWe/a$b;

.field public static final enum SPIN:LWe/a$b;

.field public static final enum YIELD:LWe/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, LWe/a$b$a;

    const-string v1, "SPIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LWe/a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWe/a$b;->SPIN:LWe/a$b;

    new-instance v1, LWe/a$b$b;

    const-string v3, "YIELD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, LWe/a$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, LWe/a$b;->YIELD:LWe/a$b;

    new-instance v3, LWe/a$b$c;

    const-string v5, "SLEEP_1MS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, LWe/a$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, LWe/a$b;->SLEEP_1MS:LWe/a$b;

    new-instance v5, LWe/a$b$d;

    const-string v7, "SLEEP_10MS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, LWe/a$b$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, LWe/a$b;->SLEEP_10MS:LWe/a$b;

    new-instance v7, LWe/a$b$e;

    const-string v9, "SLEEP_100MS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, LWe/a$b$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, LWe/a$b;->SLEEP_100MS:LWe/a$b;

    new-instance v9, LWe/a$b$f;

    const-string v11, "SLEEP_1000MS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, LWe/a$b$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, LWe/a$b;->SLEEP_1000MS:LWe/a$b;

    const/4 v11, 0x6

    new-array v11, v11, [LWe/a$b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, LWe/a$b;->$VALUES:[LWe/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILWe/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LWe/a$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)V
    .locals 2

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)LWe/a$b;
    .locals 1

    const-class v0, LWe/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LWe/a$b;

    return-object p0
.end method

.method public static values()[LWe/a$b;
    .locals 1

    sget-object v0, LWe/a$b;->$VALUES:[LWe/a$b;

    invoke-virtual {v0}, [LWe/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWe/a$b;

    return-object v0
.end method


# virtual methods
.method public abstract run()V
.end method
