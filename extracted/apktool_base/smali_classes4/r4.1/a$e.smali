.class public final enum Lr4/a$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/a$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lr4/a$e;

.field public static final enum Above:Lr4/a$e;

.field public static final enum Below:Lr4/a$e;

.field public static final enum Left:Lr4/a$e;

.field public static final enum Right:Lr4/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/a$e;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v0, Lr4/a$e;

    const-string v1, "Above"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/a$e;->Above:Lr4/a$e;

    new-instance v0, Lr4/a$e;

    const-string v1, "Below"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v0, Lr4/a$e;

    const-string v1, "Right"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lr4/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {}, Lr4/a$e;->a()[Lr4/a$e;

    move-result-object v0

    sput-object v0, Lr4/a$e;->$VALUES:[Lr4/a$e;

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

.method public static synthetic a()[Lr4/a$e;
    .locals 4

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    sget-object v1, Lr4/a$e;->Above:Lr4/a$e;

    sget-object v2, Lr4/a$e;->Below:Lr4/a$e;

    sget-object v3, Lr4/a$e;->Right:Lr4/a$e;

    filled-new-array {v0, v1, v2, v3}, [Lr4/a$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr4/a$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lr4/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr4/a$e;

    return-object p0
.end method

.method public static values()[Lr4/a$e;
    .locals 1

    sget-object v0, Lr4/a$e;->$VALUES:[Lr4/a$e;

    invoke-virtual {v0}, [Lr4/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/a$e;

    return-object v0
.end method
