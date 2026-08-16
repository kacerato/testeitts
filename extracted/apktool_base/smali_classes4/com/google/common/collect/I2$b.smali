.class public abstract enum Lcom/google/common/collect/I2$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/I2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/I2$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/I2$b;

.field public static final enum INVERTED_INSERTION_INDEX:Lcom/google/common/collect/I2$b;

.field public static final enum NEXT_HIGHER:Lcom/google/common/collect/I2$b;

.field public static final enum NEXT_LOWER:Lcom/google/common/collect/I2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/I2$b$a;

    const-string v1, "NEXT_LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/I2$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/I2$b;->NEXT_LOWER:Lcom/google/common/collect/I2$b;

    new-instance v0, Lcom/google/common/collect/I2$b$b;

    const-string v1, "NEXT_HIGHER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/I2$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/I2$b;->NEXT_HIGHER:Lcom/google/common/collect/I2$b;

    new-instance v0, Lcom/google/common/collect/I2$b$c;

    const-string v1, "INVERTED_INSERTION_INDEX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/I2$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/I2$b;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/I2$b;

    invoke-static {}, Lcom/google/common/collect/I2$b;->a()[Lcom/google/common/collect/I2$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/I2$b;->$VALUES:[Lcom/google/common/collect/I2$b;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/I2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/I2$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/collect/I2$b;
    .locals 3

    sget-object v0, Lcom/google/common/collect/I2$b;->NEXT_LOWER:Lcom/google/common/collect/I2$b;

    sget-object v1, Lcom/google/common/collect/I2$b;->NEXT_HIGHER:Lcom/google/common/collect/I2$b;

    sget-object v2, Lcom/google/common/collect/I2$b;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/I2$b;

    filled-new-array {v0, v1, v2}, [Lcom/google/common/collect/I2$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/I2$b;
    .locals 1

    const-class v0, Lcom/google/common/collect/I2$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/I2$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/I2$b;
    .locals 1

    sget-object v0, Lcom/google/common/collect/I2$b;->$VALUES:[Lcom/google/common/collect/I2$b;

    invoke-virtual {v0}, [Lcom/google/common/collect/I2$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/I2$b;

    return-object v0
.end method


# virtual methods
.method public abstract b(I)I
.end method
