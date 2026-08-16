.class public final enum Lcom/tonyodev/fetch2/EnqueueAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/EnqueueAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2/EnqueueAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/EnqueueAction;

.field public static final Companion:Lcom/tonyodev/fetch2/EnqueueAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DO_NOT_ENQUEUE_IF_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

.field public static final enum INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

.field public static final enum REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

.field public static final enum UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 4

    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    sget-object v1, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    sget-object v2, Lcom/tonyodev/fetch2/EnqueueAction;->DO_NOT_ENQUEUE_IF_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    sget-object v3, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tonyodev/fetch2/EnqueueAction;

    const-string v1, "REPLACE_EXISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/EnqueueAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->REPLACE_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    new-instance v0, Lcom/tonyodev/fetch2/EnqueueAction;

    const-string v1, "INCREMENT_FILE_NAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/EnqueueAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->INCREMENT_FILE_NAME:Lcom/tonyodev/fetch2/EnqueueAction;

    new-instance v0, Lcom/tonyodev/fetch2/EnqueueAction;

    const-string v1, "DO_NOT_ENQUEUE_IF_EXISTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/EnqueueAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->DO_NOT_ENQUEUE_IF_EXISTING:Lcom/tonyodev/fetch2/EnqueueAction;

    new-instance v0, Lcom/tonyodev/fetch2/EnqueueAction;

    const-string v1, "UPDATE_ACCORDINGLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/EnqueueAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->UPDATE_ACCORDINGLY:Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-static {}, Lcom/tonyodev/fetch2/EnqueueAction;->$values()[Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->$VALUES:[Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->$ENTRIES:LCf/a;

    new-instance v0, Lcom/tonyodev/fetch2/EnqueueAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/EnqueueAction$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->Companion:Lcom/tonyodev/fetch2/EnqueueAction$Companion;

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

    iput p3, p0, Lcom/tonyodev/fetch2/EnqueueAction;->value:I

    return-void
.end method

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lcom/tonyodev/fetch2/EnqueueAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static final valueOf(I)Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->Companion:Lcom/tonyodev/fetch2/EnqueueAction$Companion;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/EnqueueAction$Companion;->valueOf(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1

    .line 2
    const-class v0, Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2/EnqueueAction;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/EnqueueAction;->$VALUES:[Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2/EnqueueAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/EnqueueAction;->value:I

    return v0
.end method
