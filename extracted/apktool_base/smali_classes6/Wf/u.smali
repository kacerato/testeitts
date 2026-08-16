.class public final enum LWf/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LWf/u;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.1"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LWf/u;

.field public static final enum IN:LWf/u;

.field public static final enum INVARIANT:LWf/u;

.field public static final enum OUT:LWf/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LWf/u;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LWf/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/u;->INVARIANT:LWf/u;

    new-instance v0, LWf/u;

    const-string v1, "IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LWf/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/u;->IN:LWf/u;

    new-instance v0, LWf/u;

    const-string v1, "OUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LWf/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, LWf/u;->OUT:LWf/u;

    invoke-static {}, LWf/u;->a()[LWf/u;

    move-result-object v0

    sput-object v0, LWf/u;->$VALUES:[LWf/u;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LWf/u;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LWf/u;
    .locals 3

    sget-object v0, LWf/u;->INVARIANT:LWf/u;

    sget-object v1, LWf/u;->IN:LWf/u;

    sget-object v2, LWf/u;->OUT:LWf/u;

    filled-new-array {v0, v1, v2}, [LWf/u;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LWf/u;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LWf/u;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LWf/u;
    .locals 1

    const-class v0, LWf/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LWf/u;

    return-object p0
.end method

.method public static values()[LWf/u;
    .locals 1

    sget-object v0, LWf/u;->$VALUES:[LWf/u;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWf/u;

    return-object v0
.end method
