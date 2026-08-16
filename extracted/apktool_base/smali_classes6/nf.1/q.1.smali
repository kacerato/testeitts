.class public final enum Lnf/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnf/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lnf/q;

.field public static final enum ERROR:Lnf/q;

.field public static final enum HIDDEN:Lnf/q;

.field public static final enum WARNING:Lnf/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnf/q;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/q;->WARNING:Lnf/q;

    new-instance v0, Lnf/q;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/q;->ERROR:Lnf/q;

    new-instance v0, Lnf/q;

    const-string v1, "HIDDEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/q;->HIDDEN:Lnf/q;

    invoke-static {}, Lnf/q;->a()[Lnf/q;

    move-result-object v0

    sput-object v0, Lnf/q;->$VALUES:[Lnf/q;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lnf/q;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lnf/q;
    .locals 3

    sget-object v0, Lnf/q;->WARNING:Lnf/q;

    sget-object v1, Lnf/q;->ERROR:Lnf/q;

    sget-object v2, Lnf/q;->HIDDEN:Lnf/q;

    filled-new-array {v0, v1, v2}, [Lnf/q;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lnf/q;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lnf/q;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnf/q;
    .locals 1

    const-class v0, Lnf/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnf/q;

    return-object p0
.end method

.method public static values()[Lnf/q;
    .locals 1

    sget-object v0, Lnf/q;->$VALUES:[Lnf/q;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnf/q;

    return-object v0
.end method
