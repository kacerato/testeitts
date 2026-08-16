.class public final enum Lah/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lah/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lah/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lah/b$b;

.field public static final enum HalfLineIndicator:Lah/b$b;

.field public static final enum KiteIndicator:Lah/b$b;

.field public static final enum LineIndicator:Lah/b$b;

.field public static final enum NeedleIndicator:Lah/b$b;

.field public static final enum NoIndicator:Lah/b$b;

.field public static final enum NormalIndicator:Lah/b$b;

.field public static final enum NormalSmallIndicator:Lah/b$b;

.field public static final enum QuarterLineIndicator:Lah/b$b;

.field public static final enum SpindleIndicator:Lah/b$b;

.field public static final enum TriangleIndicator:Lah/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lah/b$b;

    const-string v1, "NoIndicator"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->NoIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "NormalIndicator"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->NormalIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "NormalSmallIndicator"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->NormalSmallIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "TriangleIndicator"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->TriangleIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "SpindleIndicator"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->SpindleIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "LineIndicator"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->LineIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "HalfLineIndicator"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->HalfLineIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "QuarterLineIndicator"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->QuarterLineIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "KiteIndicator"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->KiteIndicator:Lah/b$b;

    new-instance v0, Lah/b$b;

    const-string v1, "NeedleIndicator"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lah/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lah/b$b;->NeedleIndicator:Lah/b$b;

    invoke-static {}, Lah/b$b;->a()[Lah/b$b;

    move-result-object v0

    sput-object v0, Lah/b$b;->$VALUES:[Lah/b$b;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lah/b$b;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lah/b$b;
    .locals 10

    sget-object v0, Lah/b$b;->NoIndicator:Lah/b$b;

    sget-object v1, Lah/b$b;->NormalIndicator:Lah/b$b;

    sget-object v2, Lah/b$b;->NormalSmallIndicator:Lah/b$b;

    sget-object v3, Lah/b$b;->TriangleIndicator:Lah/b$b;

    sget-object v4, Lah/b$b;->SpindleIndicator:Lah/b$b;

    sget-object v5, Lah/b$b;->LineIndicator:Lah/b$b;

    sget-object v6, Lah/b$b;->HalfLineIndicator:Lah/b$b;

    sget-object v7, Lah/b$b;->QuarterLineIndicator:Lah/b$b;

    sget-object v8, Lah/b$b;->KiteIndicator:Lah/b$b;

    sget-object v9, Lah/b$b;->NeedleIndicator:Lah/b$b;

    filled-new-array/range {v0 .. v9}, [Lah/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lah/b$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lah/b$b;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lah/b$b;
    .locals 1

    const-class v0, Lah/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lah/b$b;

    return-object p0
.end method

.method public static values()[Lah/b$b;
    .locals 1

    sget-object v0, Lah/b$b;->$VALUES:[Lah/b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lah/b$b;

    return-object v0
.end method
