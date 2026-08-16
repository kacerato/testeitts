.class public final enum LDj/p$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDj/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDj/p$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDj/p$b;

.field public static final enum hours:LDj/p$b;

.field public static final enum microseconds:LDj/p$b;

.field public static final enum milliseconds:LDj/p$b;

.field public static final enum minutes:LDj/p$b;

.field public static final enum seconds:LDj/p$b;

.field public static final enum sixtyHours:LDj/p$b;

.field public static final enum years:LDj/p$b;


# instance fields
.field private final unitTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LDj/p$b;

    const-string v1, "microseconds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->microseconds:LDj/p$b;

    new-instance v0, LDj/p$b;

    const-string v1, "milliseconds"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->milliseconds:LDj/p$b;

    new-instance v0, LDj/p$b;

    const-string v1, "seconds"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->seconds:LDj/p$b;

    new-instance v0, LDj/p$b;

    const-string v1, "minutes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->minutes:LDj/p$b;

    new-instance v0, LDj/p$b;

    const-string v1, "hours"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->hours:LDj/p$b;

    new-instance v0, LDj/p$b;

    const-string v1, "sixtyHours"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->sixtyHours:LDj/p$b;

    new-instance v0, LDj/p$b;

    const-string v1, "years"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, LDj/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/p$b;->years:LDj/p$b;

    invoke-static {}, LDj/p$b;->a()[LDj/p$b;

    move-result-object v0

    sput-object v0, LDj/p$b;->$VALUES:[LDj/p$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LDj/p$b;->unitTag:I

    return-void
.end method

.method public static synthetic a()[LDj/p$b;
    .locals 7

    sget-object v0, LDj/p$b;->microseconds:LDj/p$b;

    sget-object v1, LDj/p$b;->milliseconds:LDj/p$b;

    sget-object v2, LDj/p$b;->seconds:LDj/p$b;

    sget-object v3, LDj/p$b;->minutes:LDj/p$b;

    sget-object v4, LDj/p$b;->hours:LDj/p$b;

    sget-object v5, LDj/p$b;->sixtyHours:LDj/p$b;

    sget-object v6, LDj/p$b;->years:LDj/p$b;

    filled-new-array/range {v0 .. v6}, [LDj/p$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(LDj/p$b;)I
    .locals 0

    iget p0, p0, LDj/p$b;->unitTag:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)LDj/p$b;
    .locals 1

    const-class v0, LDj/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDj/p$b;

    return-object p0
.end method

.method public static values()[LDj/p$b;
    .locals 1

    sget-object v0, LDj/p$b;->$VALUES:[LDj/p$b;

    invoke-virtual {v0}, [LDj/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDj/p$b;

    return-object v0
.end method
