.class public final enum Lk0/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk0/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lk0/m;

.field public static final enum DEBUG:Lk0/m;

.field public static final enum ERROR:Lk0/m;

.field public static final enum FATAL:Lk0/m;

.field public static final enum INFINITY:Lk0/m;

.field public static final enum INFO:Lk0/m;

.field public static final enum VERBOSE:Lk0/m;

.field public static final enum WARNING:Lk0/m;


# instance fields
.field private final severity:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lk0/m;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->VERBOSE:Lk0/m;

    new-instance v0, Lk0/m;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->DEBUG:Lk0/m;

    new-instance v0, Lk0/m;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->INFO:Lk0/m;

    new-instance v0, Lk0/m;

    const-string v1, "WARNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->WARNING:Lk0/m;

    new-instance v0, Lk0/m;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->ERROR:Lk0/m;

    new-instance v0, Lk0/m;

    const-string v1, "FATAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->FATAL:Lk0/m;

    new-instance v0, Lk0/m;

    const/4 v1, 0x6

    const/16 v2, 0x3e8

    const-string v3, "INFINITY"

    invoke-direct {v0, v3, v1, v2}, Lk0/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk0/m;->INFINITY:Lk0/m;

    invoke-static {}, Lk0/m;->a()[Lk0/m;

    move-result-object v0

    sput-object v0, Lk0/m;->$VALUES:[Lk0/m;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lk0/m;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "severity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lk0/m;->severity:I

    return-void
.end method

.method public static final synthetic a()[Lk0/m;
    .locals 7

    sget-object v0, Lk0/m;->VERBOSE:Lk0/m;

    sget-object v1, Lk0/m;->DEBUG:Lk0/m;

    sget-object v2, Lk0/m;->INFO:Lk0/m;

    sget-object v3, Lk0/m;->WARNING:Lk0/m;

    sget-object v4, Lk0/m;->ERROR:Lk0/m;

    sget-object v5, Lk0/m;->FATAL:Lk0/m;

    sget-object v6, Lk0/m;->INFINITY:Lk0/m;

    filled-new-array/range {v0 .. v6}, [Lk0/m;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lk0/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lk0/m;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk0/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-class v0, Lk0/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk0/m;

    return-object p0
.end method

.method public static values()[Lk0/m;
    .locals 1

    sget-object v0, Lk0/m;->$VALUES:[Lk0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk0/m;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lk0/m;->severity:I

    return v0
.end method
