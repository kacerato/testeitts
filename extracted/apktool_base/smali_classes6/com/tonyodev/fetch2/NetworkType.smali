.class public final enum Lcom/tonyodev/fetch2/NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/NetworkType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/NetworkType;

.field public static final enum ALL:Lcom/tonyodev/fetch2/NetworkType;

.field public static final Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

.field public static final enum UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

.field public static final enum WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/NetworkType;
    .locals 4

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    sget-object v1, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    sget-object v2, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    sget-object v3, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const/4 v1, -0x1

    const-string v2, "GLOBAL_OFF"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->GLOBAL_OFF:Lcom/tonyodev/fetch2/NetworkType;

    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->ALL:Lcom/tonyodev/fetch2/NetworkType;

    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const-string v1, "WIFI_ONLY"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->WIFI_ONLY:Lcom/tonyodev/fetch2/NetworkType;

    new-instance v0, Lcom/tonyodev/fetch2/NetworkType;

    const-string v1, "UNMETERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/tonyodev/fetch2/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->UNMETERED:Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {}, Lcom/tonyodev/fetch2/NetworkType;->$values()[Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->$VALUES:[Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->$ENTRIES:LCf/a;

    new-instance v0, Lcom/tonyodev/fetch2/NetworkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/NetworkType$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/NetworkType;->Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tonyodev/fetch2/NetworkType;->value:I

    return-void
.end method

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lcom/tonyodev/fetch2/NetworkType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static final valueOf(I)Lcom/tonyodev/fetch2/NetworkType;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/NetworkType$Companion;->valueOf(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 2
    const-class v0, Lcom/tonyodev/fetch2/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/NetworkType;->$VALUES:[Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/NetworkType;->value:I

    return v0
.end method
