.class public final enum Lkotlin/time/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/time/k;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.6"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lkotlin/time/k;

.field public static final enum DAYS:Lkotlin/time/k;

.field public static final enum HOURS:Lkotlin/time/k;

.field public static final enum MICROSECONDS:Lkotlin/time/k;

.field public static final enum MILLISECONDS:Lkotlin/time/k;

.field public static final enum MINUTES:Lkotlin/time/k;

.field public static final enum NANOSECONDS:Lkotlin/time/k;

.field public static final enum SECONDS:Lkotlin/time/k;


# instance fields
.field private final timeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "NANOSECONDS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "MICROSECONDS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->MICROSECONDS:Lkotlin/time/k;

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "MILLISECONDS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "SECONDS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v3, "MINUTES"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->MINUTES:Lkotlin/time/k;

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "HOURS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->HOURS:Lkotlin/time/k;

    new-instance v0, Lkotlin/time/k;

    const/4 v1, 0x6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "DAYS"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/time/k;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkotlin/time/k;->DAYS:Lkotlin/time/k;

    invoke-static {}, Lkotlin/time/k;->a()[Lkotlin/time/k;

    move-result-object v0

    sput-object v0, Lkotlin/time/k;->$VALUES:[Lkotlin/time/k;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lkotlin/time/k;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/time/k;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static final synthetic a()[Lkotlin/time/k;
    .locals 7

    sget-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    sget-object v1, Lkotlin/time/k;->MICROSECONDS:Lkotlin/time/k;

    sget-object v2, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    sget-object v3, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    sget-object v4, Lkotlin/time/k;->MINUTES:Lkotlin/time/k;

    sget-object v5, Lkotlin/time/k;->HOURS:Lkotlin/time/k;

    sget-object v6, Lkotlin/time/k;->DAYS:Lkotlin/time/k;

    filled-new-array/range {v0 .. v6}, [Lkotlin/time/k;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lkotlin/time/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/time/k;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/time/k;
    .locals 1

    const-class v0, Lkotlin/time/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/time/k;

    return-object p0
.end method

.method public static values()[Lkotlin/time/k;
    .locals 1

    sget-object v0, Lkotlin/time/k;->$VALUES:[Lkotlin/time/k;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/time/k;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/util/concurrent/TimeUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/time/k;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
