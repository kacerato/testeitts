.class public final enum Lnf/M;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnf/M;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lnf/M;

.field public static final enum NONE:Lnf/M;

.field public static final enum PUBLICATION:Lnf/M;

.field public static final enum SYNCHRONIZED:Lnf/M;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnf/M;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnf/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/M;->SYNCHRONIZED:Lnf/M;

    new-instance v0, Lnf/M;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnf/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/M;->PUBLICATION:Lnf/M;

    new-instance v0, Lnf/M;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnf/M;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnf/M;->NONE:Lnf/M;

    invoke-static {}, Lnf/M;->a()[Lnf/M;

    move-result-object v0

    sput-object v0, Lnf/M;->$VALUES:[Lnf/M;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lnf/M;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lnf/M;
    .locals 3

    sget-object v0, Lnf/M;->SYNCHRONIZED:Lnf/M;

    sget-object v1, Lnf/M;->PUBLICATION:Lnf/M;

    sget-object v2, Lnf/M;->NONE:Lnf/M;

    filled-new-array {v0, v1, v2}, [Lnf/M;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lnf/M;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lnf/M;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnf/M;
    .locals 1

    const-class v0, Lnf/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnf/M;

    return-object p0
.end method

.method public static values()[Lnf/M;
    .locals 1

    sget-object v0, Lnf/M;->$VALUES:[Lnf/M;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnf/M;

    return-object v0
.end method
