.class public final enum LEf/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LEf/r;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.2"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LEf/r;

.field public static final enum API_VERSION:LEf/r;

.field public static final enum COMPILER_VERSION:LEf/r;

.field public static final enum LANGUAGE_VERSION:LEf/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LEf/r;

    const-string v1, "LANGUAGE_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LEf/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEf/r;->LANGUAGE_VERSION:LEf/r;

    new-instance v0, LEf/r;

    const-string v1, "COMPILER_VERSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LEf/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEf/r;->COMPILER_VERSION:LEf/r;

    new-instance v0, LEf/r;

    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LEf/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEf/r;->API_VERSION:LEf/r;

    invoke-static {}, LEf/r;->a()[LEf/r;

    move-result-object v0

    sput-object v0, LEf/r;->$VALUES:[LEf/r;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LEf/r;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[LEf/r;
    .locals 3

    sget-object v0, LEf/r;->LANGUAGE_VERSION:LEf/r;

    sget-object v1, LEf/r;->COMPILER_VERSION:LEf/r;

    sget-object v2, LEf/r;->API_VERSION:LEf/r;

    filled-new-array {v0, v1, v2}, [LEf/r;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LEf/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LEf/r;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LEf/r;
    .locals 1

    const-class v0, LEf/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LEf/r;

    return-object p0
.end method

.method public static values()[LEf/r;
    .locals 1

    sget-object v0, LEf/r;->$VALUES:[LEf/r;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEf/r;

    return-object v0
.end method
