.class public final enum Lo4/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo4/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo4/d$a;

.field public static final enum Global:Lo4/d$a;

.field public static final enum Local:Lo4/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo4/d$a;

    const-string v1, "Global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo4/d$a;->Global:Lo4/d$a;

    new-instance v0, Lo4/d$a;

    const-string v1, "Local"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo4/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo4/d$a;->Local:Lo4/d$a;

    invoke-static {}, Lo4/d$a;->a()[Lo4/d$a;

    move-result-object v0

    sput-object v0, Lo4/d$a;->$VALUES:[Lo4/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[Lo4/d$a;
    .locals 2

    sget-object v0, Lo4/d$a;->Global:Lo4/d$a;

    sget-object v1, Lo4/d$a;->Local:Lo4/d$a;

    filled-new-array {v0, v1}, [Lo4/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo4/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lo4/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo4/d$a;

    return-object p0
.end method

.method public static values()[Lo4/d$a;
    .locals 1

    sget-object v0, Lo4/d$a;->$VALUES:[Lo4/d$a;

    invoke-virtual {v0}, [Lo4/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo4/d$a;

    return-object v0
.end method
