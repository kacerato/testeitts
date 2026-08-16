.class public final enum Lqn/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqn/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqn/o$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqn/o$a;

.field public static final enum BOX:Lqn/o$a;

.field public static final enum CYLINDER:Lqn/o$a;

.field public static final enum ORIENTED_BOX:Lqn/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqn/o$a;

    const-string v1, "CYLINDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqn/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/o$a;->CYLINDER:Lqn/o$a;

    new-instance v0, Lqn/o$a;

    const-string v1, "BOX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lqn/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/o$a;->BOX:Lqn/o$a;

    new-instance v0, Lqn/o$a;

    const-string v1, "ORIENTED_BOX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lqn/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqn/o$a;->ORIENTED_BOX:Lqn/o$a;

    invoke-static {}, Lqn/o$a;->a()[Lqn/o$a;

    move-result-object v0

    sput-object v0, Lqn/o$a;->$VALUES:[Lqn/o$a;

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

.method public static synthetic a()[Lqn/o$a;
    .locals 3

    sget-object v0, Lqn/o$a;->CYLINDER:Lqn/o$a;

    sget-object v1, Lqn/o$a;->BOX:Lqn/o$a;

    sget-object v2, Lqn/o$a;->ORIENTED_BOX:Lqn/o$a;

    filled-new-array {v0, v1, v2}, [Lqn/o$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqn/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lqn/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqn/o$a;

    return-object p0
.end method

.method public static values()[Lqn/o$a;
    .locals 1

    sget-object v0, Lqn/o$a;->$VALUES:[Lqn/o$a;

    invoke-virtual {v0}, [Lqn/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn/o$a;

    return-object v0
.end method
