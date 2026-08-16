.class public final enum Lm9/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm9/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm9/d$a;

.field public static final enum HIDDEN:Lm9/d$a;

.field public static final enum IMPOSTOR_VISIBLE:Lm9/d$a;

.field public static final enum NORMAL_VISIBLE:Lm9/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm9/d$a;

    const-string v1, "NORMAL_VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm9/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm9/d$a;->NORMAL_VISIBLE:Lm9/d$a;

    new-instance v0, Lm9/d$a;

    const-string v1, "IMPOSTOR_VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm9/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm9/d$a;->IMPOSTOR_VISIBLE:Lm9/d$a;

    new-instance v0, Lm9/d$a;

    const-string v1, "HIDDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lm9/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm9/d$a;->HIDDEN:Lm9/d$a;

    invoke-static {}, Lm9/d$a;->a()[Lm9/d$a;

    move-result-object v0

    sput-object v0, Lm9/d$a;->$VALUES:[Lm9/d$a;

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

.method public static synthetic a()[Lm9/d$a;
    .locals 3

    sget-object v0, Lm9/d$a;->NORMAL_VISIBLE:Lm9/d$a;

    sget-object v1, Lm9/d$a;->IMPOSTOR_VISIBLE:Lm9/d$a;

    sget-object v2, Lm9/d$a;->HIDDEN:Lm9/d$a;

    filled-new-array {v0, v1, v2}, [Lm9/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lm9/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lm9/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm9/d$a;

    return-object p0
.end method

.method public static values()[Lm9/d$a;
    .locals 1

    sget-object v0, Lm9/d$a;->$VALUES:[Lm9/d$a;

    invoke-virtual {v0}, [Lm9/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm9/d$a;

    return-object v0
.end method
