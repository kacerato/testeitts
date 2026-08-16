.class public Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;
.super Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.source "SourceFile"


# static fields
.field private static final EIGHT:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final FIVE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final FOUR:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final MINUS_FOUR:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final MINUS_ONE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final MINUS_THREE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final MINUS_TWO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final MIN_VALUE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final NINE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final ONE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final SEVEN:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final SIX:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final TEN:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final THREE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final TWO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

.field private static final ZERO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MIN_VALUE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_FOUR:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_THREE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_TWO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_ONE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->ZERO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->ONE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->TWO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->THREE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->FOUR:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->FIVE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->SIX:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->SEVEN:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->EIGHT:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->NINE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->TEN:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    return-void
.end method

.method public static fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;-><init>(I)V

    return-object v0

    :pswitch_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->TEN:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->NINE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->EIGHT:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->SEVEN:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->SIX:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->FIVE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->FOUR:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->THREE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->TWO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->ONE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->ZERO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_ONE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_TWO:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_THREE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MINUS_FOUR:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->MIN_VALUE:Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x4
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


# virtual methods
.method public byteValue()B
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public charValue()C
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    int-to-char v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(int)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeID()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
