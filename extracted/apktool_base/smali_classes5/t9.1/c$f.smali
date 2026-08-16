.class public final enum Lt9/c$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt9/c$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lt9/c$f;

.field public static final enum Assets:Lt9/c$f;

.field public static final enum Path:Lt9/c$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt9/c$f;

    const-string v1, "Assets"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt9/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt9/c$f;->Assets:Lt9/c$f;

    new-instance v0, Lt9/c$f;

    const-string v1, "Path"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lt9/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt9/c$f;->Path:Lt9/c$f;

    invoke-static {}, Lt9/c$f;->a()[Lt9/c$f;

    move-result-object v0

    sput-object v0, Lt9/c$f;->$VALUES:[Lt9/c$f;

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

.method public static synthetic a()[Lt9/c$f;
    .locals 2

    sget-object v0, Lt9/c$f;->Assets:Lt9/c$f;

    sget-object v1, Lt9/c$f;->Path:Lt9/c$f;

    filled-new-array {v0, v1}, [Lt9/c$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lt9/c$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lt9/c$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt9/c$f;

    return-object p0
.end method

.method public static values()[Lt9/c$f;
    .locals 1

    sget-object v0, Lt9/c$f;->$VALUES:[Lt9/c$f;

    invoke-virtual {v0}, [Lt9/c$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt9/c$f;

    return-object v0
.end method
