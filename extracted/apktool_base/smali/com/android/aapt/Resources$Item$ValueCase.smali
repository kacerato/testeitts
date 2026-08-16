.class public final enum Lcom/android/aapt/Resources$Item$ValueCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$c;
.implements Lcom/google/protobuf/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/Resources$Item$ValueCase;",
        ">;",
        "Lcom/google/protobuf/D0$c;",
        "Lcom/google/protobuf/b$b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum FILE:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum ID:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum PRIM:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum RAW_STR:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum REF:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum STR:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum STYLED_STR:Lcom/android/aapt/Resources$Item$ValueCase;

.field public static final enum VALUE_NOT_SET:Lcom/android/aapt/Resources$Item$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 8

    sget-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->REF:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v1, Lcom/android/aapt/Resources$Item$ValueCase;->STR:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v2, Lcom/android/aapt/Resources$Item$ValueCase;->RAW_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v3, Lcom/android/aapt/Resources$Item$ValueCase;->STYLED_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v4, Lcom/android/aapt/Resources$Item$ValueCase;->FILE:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v5, Lcom/android/aapt/Resources$Item$ValueCase;->ID:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v6, Lcom/android/aapt/Resources$Item$ValueCase;->PRIM:Lcom/android/aapt/Resources$Item$ValueCase;

    sget-object v7, Lcom/android/aapt/Resources$Item$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Item$ValueCase;

    filled-new-array/range {v0 .. v7}, [Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "REF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->REF:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "STR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->STR:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "RAW_STR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->RAW_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "STYLED_STR"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->STYLED_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "FILE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->FILE:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "ID"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->ID:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "PRIM"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->PRIM:Lcom/android/aapt/Resources$Item$ValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Item$ValueCase;

    const-string v1, "VALUE_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/aapt/Resources$Item$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-static {}, Lcom/android/aapt/Resources$Item$ValueCase;->$values()[Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->$VALUES:[Lcom/android/aapt/Resources$Item$ValueCase;

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

    iput p3, p0, Lcom/android/aapt/Resources$Item$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->PRIM:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->ID:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->FILE:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->STYLED_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->RAW_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->STR:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->REF:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/aapt/Resources$Item$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/Resources$Item$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Item$ValueCase;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Item$ValueCase;->$VALUES:[Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v0}, [Lcom/android/aapt/Resources$Item$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/Resources$Item$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Item$ValueCase;->value:I

    return v0
.end method
