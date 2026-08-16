.class public final enum Lcom/tonyodev/fetch2/Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/Status;

.field public static final enum ADDED:Lcom/tonyodev/fetch2/Status;

.field public static final enum CANCELLED:Lcom/tonyodev/fetch2/Status;

.field public static final enum COMPLETED:Lcom/tonyodev/fetch2/Status;

.field public static final Companion:Lcom/tonyodev/fetch2/Status$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DELETED:Lcom/tonyodev/fetch2/Status;

.field public static final enum DOWNLOADING:Lcom/tonyodev/fetch2/Status;

.field public static final enum FAILED:Lcom/tonyodev/fetch2/Status;

.field public static final enum NONE:Lcom/tonyodev/fetch2/Status;

.field public static final enum PAUSED:Lcom/tonyodev/fetch2/Status;

.field public static final enum QUEUED:Lcom/tonyodev/fetch2/Status;

.field public static final enum REMOVED:Lcom/tonyodev/fetch2/Status;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/Status;
    .locals 10

    sget-object v0, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    sget-object v1, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    sget-object v2, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    sget-object v3, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    sget-object v4, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    sget-object v5, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    sget-object v6, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    sget-object v7, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    sget-object v8, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    sget-object v9, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    filled-new-array/range {v0 .. v9}, [Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->NONE:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "QUEUED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->QUEUED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->DOWNLOADING:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->PAUSED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "COMPLETED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->COMPLETED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->CANCELLED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->FAILED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "REMOVED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->REMOVED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "DELETED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->DELETED:Lcom/tonyodev/fetch2/Status;

    new-instance v0, Lcom/tonyodev/fetch2/Status;

    const-string v1, "ADDED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/tonyodev/fetch2/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->ADDED:Lcom/tonyodev/fetch2/Status;

    invoke-static {}, Lcom/tonyodev/fetch2/Status;->$values()[Lcom/tonyodev/fetch2/Status;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Status;->$VALUES:[Lcom/tonyodev/fetch2/Status;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Status;->$ENTRIES:LCf/a;

    new-instance v0, Lcom/tonyodev/fetch2/Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/Status$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Status;->Companion:Lcom/tonyodev/fetch2/Status$Companion;

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

    iput p3, p0, Lcom/tonyodev/fetch2/Status;->value:I

    return-void
.end method

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lcom/tonyodev/fetch2/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/Status;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static final valueOf(I)Lcom/tonyodev/fetch2/Status;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/tonyodev/fetch2/Status;->Companion:Lcom/tonyodev/fetch2/Status$Companion;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/Status$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Status;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/Status;
    .locals 1

    .line 2
    const-class v0, Lcom/tonyodev/fetch2/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2/Status;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/Status;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/Status;->$VALUES:[Lcom/tonyodev/fetch2/Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2/Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/Status;->value:I

    return v0
.end method
