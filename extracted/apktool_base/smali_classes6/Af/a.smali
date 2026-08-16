.class public final enum LAf/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LAf/a;",
        ">;"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LAf/a;

.field public static final enum COROUTINE_SUSPENDED:LAf/a;

.field public static final enum RESUMED:LAf/a;

.field public static final enum UNDECIDED:LAf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LAf/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LAf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/a;->COROUTINE_SUSPENDED:LAf/a;

    new-instance v0, LAf/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LAf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/a;->UNDECIDED:LAf/a;

    new-instance v0, LAf/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LAf/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/a;->RESUMED:LAf/a;

    invoke-static {}, LAf/a;->a()[LAf/a;

    move-result-object v0

    sput-object v0, LAf/a;->$VALUES:[LAf/a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LAf/a;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LAf/a;
    .locals 3

    sget-object v0, LAf/a;->COROUTINE_SUSPENDED:LAf/a;

    sget-object v1, LAf/a;->UNDECIDED:LAf/a;

    sget-object v2, LAf/a;->RESUMED:LAf/a;

    filled-new-array {v0, v1, v2}, [LAf/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LAf/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LAf/a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LAf/a;
    .locals 1

    const-class v0, LAf/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAf/a;

    return-object p0
.end method

.method public static values()[LAf/a;
    .locals 1

    sget-object v0, LAf/a;->$VALUES:[LAf/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAf/a;

    return-object v0
.end method
