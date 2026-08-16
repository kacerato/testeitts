.class public final enum Lcom/android/aapt/Resources$Primitive$OneofValueCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$c;
.implements Lcom/google/protobuf/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneofValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/Resources$Primitive$OneofValueCase;",
        ">;",
        "Lcom/google/protobuf/D0$c;",
        "Lcom/google/protobuf/b$b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum BOOLEAN_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum COLOR_ARGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum COLOR_ARGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum COLOR_RGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum COLOR_RGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum DIMENSION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum DIMENSION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EMPTY_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum FLOAT_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum FRACTION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum FRACTION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INT_DECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum INT_HEXADECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum NULL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

.field public static final enum ONEOFVALUE_NOT_SET:Lcom/android/aapt/Resources$Primitive$OneofValueCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 15

    sget-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->NULL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v1, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->EMPTY_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v2, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FLOAT_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v3, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v4, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v5, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_DECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v6, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_HEXADECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v7, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->BOOLEAN_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v8, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v10, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v11, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v12, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v13, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    sget-object v14, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->ONEOFVALUE_NOT_SET:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    filled-new-array/range {v0 .. v14}, [Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->NULL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "EMPTY_VALUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->EMPTY_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "FLOAT_VALUE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FLOAT_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "DIMENSION_VALUE"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v3, v4}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "FRACTION_VALUE"

    const/4 v3, 0x4

    const/16 v5, 0xe

    invoke-direct {v0, v1, v3, v5}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "INT_DECIMAL_VALUE"

    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_DECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "INT_HEXADECIMAL_VALUE"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_HEXADECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "BOOLEAN_VALUE"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v8, v7}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->BOOLEAN_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "COLOR_ARGB8_VALUE"

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v8}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "COLOR_RGB8_VALUE"

    const/16 v7, 0xa

    invoke-direct {v0, v1, v8, v7}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "COLOR_ARGB4_VALUE"

    const/16 v8, 0xb

    invoke-direct {v0, v1, v7, v8}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "COLOR_RGB4_VALUE"

    const/16 v7, 0xc

    invoke-direct {v0, v1, v8, v7}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "DIMENSION_VALUE_DEPRECATED"

    invoke-direct {v0, v1, v7, v3}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "FRACTION_VALUE_DEPRECATED"

    invoke-direct {v0, v1, v4, v6}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    new-instance v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    const-string v1, "ONEOFVALUE_NOT_SET"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->ONEOFVALUE_NOT_SET:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-static {}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->$values()[Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->$VALUES:[Lcom/android/aapt/Resources$Primitive$OneofValueCase;

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

    iput p3, p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->BOOLEAN_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_HEXADECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_DECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FLOAT_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->EMPTY_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->NULL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->ONEOFVALUE_NOT_SET:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static valueOf(I)Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->forNumber(I)Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->$VALUES:[Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v0}, [Lcom/android/aapt/Resources$Primitive$OneofValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->value:I

    return v0
.end method
