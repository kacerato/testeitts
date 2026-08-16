.class public final enum Lcc/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcc/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcc/a;

.field public static final enum ENVIRONMENT:Lcc/a;

.field public static final enum SSR:Lcc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcc/a;

    const-string v1, "ENVIRONMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc/a;->ENVIRONMENT:Lcc/a;

    new-instance v0, Lcc/a;

    const-string v1, "SSR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc/a;->SSR:Lcc/a;

    invoke-static {}, Lcc/a;->a()[Lcc/a;

    move-result-object v0

    sput-object v0, Lcc/a;->$VALUES:[Lcc/a;

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

.method public static synthetic a()[Lcc/a;
    .locals 2

    sget-object v0, Lcc/a;->ENVIRONMENT:Lcc/a;

    sget-object v1, Lcc/a;->SSR:Lcc/a;

    filled-new-array {v0, v1}, [Lcc/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/a;

    return-object p0
.end method

.method public static values()[Lcc/a;
    .locals 1

    sget-object v0, Lcc/a;->$VALUES:[Lcc/a;

    invoke-virtual {v0}, [Lcc/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/a;

    return-object v0
.end method
