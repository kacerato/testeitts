.class public final enum Lbh/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbh/b$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lbh/b$c;

.field public static final enum BottomIndicator:Lbh/b$c;

.field public static final enum CenterIndicator:Lbh/b$c;

.field public static final enum CenterSpeedometer:Lbh/b$c;

.field public static final enum QuarterSpeedometer:Lbh/b$c;

.field public static final enum TopIndicator:Lbh/b$c;

.field public static final enum TopSpeedometer:Lbh/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbh/b$c;

    const-string v1, "TopIndicator"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbh/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$c;->TopIndicator:Lbh/b$c;

    new-instance v0, Lbh/b$c;

    const-string v1, "CenterIndicator"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbh/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$c;->CenterIndicator:Lbh/b$c;

    new-instance v0, Lbh/b$c;

    const-string v1, "BottomIndicator"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbh/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$c;->BottomIndicator:Lbh/b$c;

    new-instance v0, Lbh/b$c;

    const-string v1, "TopSpeedometer"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbh/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$c;->TopSpeedometer:Lbh/b$c;

    new-instance v0, Lbh/b$c;

    const-string v1, "CenterSpeedometer"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lbh/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$c;->CenterSpeedometer:Lbh/b$c;

    new-instance v0, Lbh/b$c;

    const-string v1, "QuarterSpeedometer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbh/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$c;->QuarterSpeedometer:Lbh/b$c;

    invoke-static {}, Lbh/b$c;->a()[Lbh/b$c;

    move-result-object v0

    sput-object v0, Lbh/b$c;->$VALUES:[Lbh/b$c;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lbh/b$c;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lbh/b$c;
    .locals 6

    sget-object v0, Lbh/b$c;->TopIndicator:Lbh/b$c;

    sget-object v1, Lbh/b$c;->CenterIndicator:Lbh/b$c;

    sget-object v2, Lbh/b$c;->BottomIndicator:Lbh/b$c;

    sget-object v3, Lbh/b$c;->TopSpeedometer:Lbh/b$c;

    sget-object v4, Lbh/b$c;->CenterSpeedometer:Lbh/b$c;

    sget-object v5, Lbh/b$c;->QuarterSpeedometer:Lbh/b$c;

    filled-new-array/range {v0 .. v5}, [Lbh/b$c;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lbh/b$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lbh/b$c;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbh/b$c;
    .locals 1

    const-class v0, Lbh/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbh/b$c;

    return-object p0
.end method

.method public static values()[Lbh/b$c;
    .locals 1

    sget-object v0, Lbh/b$c;->$VALUES:[Lbh/b$c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbh/b$c;

    return-object v0
.end method
