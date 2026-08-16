.class public final enum Lq4/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq4/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lq4/c$a;

.field public static final enum Path:Lq4/c$a;

.field public static final enum Resource:Lq4/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq4/c$a;

    const-string v1, "Resource"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq4/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/c$a;->Resource:Lq4/c$a;

    new-instance v0, Lq4/c$a;

    const-string v1, "Path"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq4/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/c$a;->Path:Lq4/c$a;

    invoke-static {}, Lq4/c$a;->a()[Lq4/c$a;

    move-result-object v0

    sput-object v0, Lq4/c$a;->$VALUES:[Lq4/c$a;

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

.method public static synthetic a()[Lq4/c$a;
    .locals 2

    sget-object v0, Lq4/c$a;->Resource:Lq4/c$a;

    sget-object v1, Lq4/c$a;->Path:Lq4/c$a;

    filled-new-array {v0, v1}, [Lq4/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lq4/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/c$a;

    return-object p0
.end method

.method public static values()[Lq4/c$a;
    .locals 1

    sget-object v0, Lq4/c$a;->$VALUES:[Lq4/c$a;

    invoke-virtual {v0}, [Lq4/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/c$a;

    return-object v0
.end method
