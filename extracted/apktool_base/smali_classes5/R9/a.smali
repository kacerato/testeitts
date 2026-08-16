.class public final enum LR9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LR9/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LR9/a;

.field public static final enum Horizontal:LR9/a;

.field public static final enum Vertical:LR9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR9/a;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR9/a;->Vertical:LR9/a;

    new-instance v0, LR9/a;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LR9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR9/a;->Horizontal:LR9/a;

    invoke-static {}, LR9/a;->a()[LR9/a;

    move-result-object v0

    sput-object v0, LR9/a;->$VALUES:[LR9/a;

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

.method public static synthetic a()[LR9/a;
    .locals 2

    sget-object v0, LR9/a;->Vertical:LR9/a;

    sget-object v1, LR9/a;->Horizontal:LR9/a;

    filled-new-array {v0, v1}, [LR9/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LR9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LR9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR9/a;

    return-object p0
.end method

.method public static values()[LR9/a;
    .locals 1

    sget-object v0, LR9/a;->$VALUES:[LR9/a;

    invoke-virtual {v0}, [LR9/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR9/a;

    return-object v0
.end method
