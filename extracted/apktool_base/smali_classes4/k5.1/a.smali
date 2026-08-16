.class public final enum Lk5/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk5/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lk5/a;

.field public static final enum Bottom:Lk5/a;

.field public static final enum Left:Lk5/a;

.field public static final enum Right:Lk5/a;

.field public static final enum Top:Lk5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk5/a;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk5/a;->Left:Lk5/a;

    new-instance v0, Lk5/a;

    const-string v1, "Top"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lk5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk5/a;->Top:Lk5/a;

    new-instance v0, Lk5/a;

    const-string v1, "Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lk5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk5/a;->Right:Lk5/a;

    new-instance v0, Lk5/a;

    const-string v1, "Bottom"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lk5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk5/a;->Bottom:Lk5/a;

    invoke-static {}, Lk5/a;->a()[Lk5/a;

    move-result-object v0

    sput-object v0, Lk5/a;->$VALUES:[Lk5/a;

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

.method public static synthetic a()[Lk5/a;
    .locals 4

    sget-object v0, Lk5/a;->Left:Lk5/a;

    sget-object v1, Lk5/a;->Top:Lk5/a;

    sget-object v2, Lk5/a;->Right:Lk5/a;

    sget-object v3, Lk5/a;->Bottom:Lk5/a;

    filled-new-array {v0, v1, v2, v3}, [Lk5/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk5/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lk5/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk5/a;

    return-object p0
.end method

.method public static values()[Lk5/a;
    .locals 1

    sget-object v0, Lk5/a;->$VALUES:[Lk5/a;

    invoke-virtual {v0}, [Lk5/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk5/a;

    return-object v0
.end method
