.class public final enum Lcom/android/aapt/Resources$Value$ValueCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$c;
.implements Lcom/google/protobuf/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/Resources$Value$ValueCase;",
        ">;",
        "Lcom/google/protobuf/D0$c;",
        "Lcom/google/protobuf/b$b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/Resources$Value$ValueCase;

.field public static final enum COMPOUND_VALUE:Lcom/android/aapt/Resources$Value$ValueCase;

.field public static final enum ITEM:Lcom/android/aapt/Resources$Value$ValueCase;

.field public static final enum VALUE_NOT_SET:Lcom/android/aapt/Resources$Value$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/Resources$Value$ValueCase;
    .locals 3

    sget-object v0, Lcom/android/aapt/Resources$Value$ValueCase;->ITEM:Lcom/android/aapt/Resources$Value$ValueCase;

    sget-object v1, Lcom/android/aapt/Resources$Value$ValueCase;->COMPOUND_VALUE:Lcom/android/aapt/Resources$Value$ValueCase;

    sget-object v2, Lcom/android/aapt/Resources$Value$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Value$ValueCase;

    filled-new-array {v0, v1, v2}, [Lcom/android/aapt/Resources$Value$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/aapt/Resources$Value$ValueCase;

    const/4 v1, 0x4

    const-string v2, "ITEM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/aapt/Resources$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Value$ValueCase;->ITEM:Lcom/android/aapt/Resources$Value$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Value$ValueCase;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v4, "COMPOUND_VALUE"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/aapt/Resources$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Value$ValueCase;->COMPOUND_VALUE:Lcom/android/aapt/Resources$Value$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Value$ValueCase;

    const-string v1, "VALUE_NOT_SET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/aapt/Resources$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Value$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Value$ValueCase;

    invoke-static {}, Lcom/android/aapt/Resources$Value$ValueCase;->$values()[Lcom/android/aapt/Resources$Value$ValueCase;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$Value$ValueCase;->$VALUES:[Lcom/android/aapt/Resources$Value$ValueCase;

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

    iput p3, p0, Lcom/android/aapt/Resources$Value$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/Resources$Value$ValueCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/aapt/Resources$Value$ValueCase;->COMPOUND_VALUE:Lcom/android/aapt/Resources$Value$ValueCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/aapt/Resources$Value$ValueCase;->ITEM:Lcom/android/aapt/Resources$Value$ValueCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/aapt/Resources$Value$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Value$ValueCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/android/aapt/Resources$Value$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/Resources$Value$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$Value$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/Resources$Value$ValueCase;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/Resources$Value$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Value$ValueCase;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/Resources$Value$ValueCase;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Value$ValueCase;->$VALUES:[Lcom/android/aapt/Resources$Value$ValueCase;

    invoke-virtual {v0}, [Lcom/android/aapt/Resources$Value$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/Resources$Value$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Value$ValueCase;->value:I

    return v0
.end method
