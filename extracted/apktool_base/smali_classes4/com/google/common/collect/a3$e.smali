.class public abstract enum Lcom/google/common/collect/a3$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/a3$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/a3$e;

.field public static final enum DISTINCT:Lcom/google/common/collect/a3$e;

.field public static final enum SIZE:Lcom/google/common/collect/a3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/a3$e$a;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/a3$e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/a3$e;->SIZE:Lcom/google/common/collect/a3$e;

    new-instance v0, Lcom/google/common/collect/a3$e$b;

    const-string v1, "DISTINCT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/a3$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/a3$e;->DISTINCT:Lcom/google/common/collect/a3$e;

    invoke-static {}, Lcom/google/common/collect/a3$e;->a()[Lcom/google/common/collect/a3$e;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/a3$e;->$VALUES:[Lcom/google/common/collect/a3$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/a3$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a3$e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/collect/a3$e;
    .locals 2

    sget-object v0, Lcom/google/common/collect/a3$e;->SIZE:Lcom/google/common/collect/a3$e;

    sget-object v1, Lcom/google/common/collect/a3$e;->DISTINCT:Lcom/google/common/collect/a3$e;

    filled-new-array {v0, v1}, [Lcom/google/common/collect/a3$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/a3$e;
    .locals 1

    const-class v0, Lcom/google/common/collect/a3$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/a3$e;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/a3$e;
    .locals 1

    sget-object v0, Lcom/google/common/collect/a3$e;->$VALUES:[Lcom/google/common/collect/a3$e;

    invoke-virtual {v0}, [Lcom/google/common/collect/a3$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/a3$e;

    return-object v0
.end method


# virtual methods
.method public abstract b(Lcom/google/common/collect/a3$f;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$f<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/common/collect/a3$f;)J
    .param p1    # Lcom/google/common/collect/a3$f;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a3$f<",
            "*>;)J"
        }
    .end annotation
.end method
