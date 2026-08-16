.class public final enum Lp5/c$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp5/c$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lp5/c$f;

.field public static final enum AAB:Lp5/c$f;

.field public static final enum APK:Lp5/c$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp5/c$f;

    const-string v1, "APK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp5/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp5/c$f;->APK:Lp5/c$f;

    new-instance v0, Lp5/c$f;

    const-string v1, "AAB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lp5/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp5/c$f;->AAB:Lp5/c$f;

    invoke-static {}, Lp5/c$f;->a()[Lp5/c$f;

    move-result-object v0

    sput-object v0, Lp5/c$f;->$VALUES:[Lp5/c$f;

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

.method public static synthetic a()[Lp5/c$f;
    .locals 2

    sget-object v0, Lp5/c$f;->APK:Lp5/c$f;

    sget-object v1, Lp5/c$f;->AAB:Lp5/c$f;

    filled-new-array {v0, v1}, [Lp5/c$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lp5/c$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lp5/c$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp5/c$f;

    return-object p0
.end method

.method public static values()[Lp5/c$f;
    .locals 1

    sget-object v0, Lp5/c$f;->$VALUES:[Lp5/c$f;

    invoke-virtual {v0}, [Lp5/c$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp5/c$f;

    return-object v0
.end method
