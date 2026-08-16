.class Lorg/openjdk/tools/javac/comp/ConstFold;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final constFoldKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/ConstFold;",
            ">;"
        }
    .end annotation
.end field

.field static final minusOne:Ljava/lang/Integer;

.field static final one:Ljava/lang/Integer;

.field static final zero:Ljava/lang/Integer;


# instance fields
.field private syms:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method static strictfp constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/ConstFold;->constFoldKey:Lorg/openjdk/tools/javac/util/Context$Key;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    return-void
.end method

.method private strictfp constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/comp/ConstFold;->constFoldKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-void
.end method

.method private static strictfp b2i(Z)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/openjdk/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method private static strictfp doubleValue(Ljava/lang/Object;)D
    .locals 2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static strictfp floatValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static strictfp instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ConstFold;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/ConstFold;->constFoldKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/ConstFold;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/ConstFold;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static strictfp intValue(Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static strictfp longValue(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public strictfp coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/comp/ConstFold$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public strictfp fold(ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold1(ILorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold2(ILorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public strictfp fold1(ILorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_a

    const/16 p2, 0x101

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, p2, :cond_8

    const/16 p2, 0x82

    if-eq p1, p2, :cond_7

    const/16 p2, 0x83

    if-eq p1, p2, :cond_6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v0

    :pswitch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-gtz p2, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-nez p2, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    neg-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_9
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    not-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    not-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    if-nez p2, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_a
    return-object p2

    :catch_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x99
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public strictfp fold2(ILorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1ff

    if-le p1, v1, :cond_1

    shr-int/lit8 v2, p1, 0x9

    :try_start_0
    invoke-virtual {p0, v2, p2, p3}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold2(ILorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    and-int/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold1(ILorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x100

    if-eq p1, v3, :cond_19

    const/16 p3, 0x102

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, p3, :cond_17

    const/16 p3, 0x103

    if-eq p1, p3, :cond_15

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    return-object v0

    :pswitch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v4

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    if-gt p2, p3, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    if-le p2, p3, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    if-lt p2, p3, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    if-ge p2, p3, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    if-eq p2, p3, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    if-ne p2, p3, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v3

    cmpg-double p2, p2, v3

    if-gez p2, :cond_8

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v3

    cmpl-double p2, p2, v3

    if-lez p2, :cond_9

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    cmpl-double p2, p2, v1

    if-nez p2, :cond_a

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 p2, 0x98

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_c

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_d

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-nez p2, :cond_e

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_e
    const/16 p2, 0x96

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-gez p1, :cond_10

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->minusOne:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_11

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->one:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object p2, Lorg/openjdk/tools/javac/comp/ConstFold;->zero:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    xor-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_c
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    goto :goto_1

    :cond_12
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    xor-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_d
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    or-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_e
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    goto :goto_2

    :cond_13
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :goto_2
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    or-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    and-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_10
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    goto :goto_3

    :cond_14
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :goto_3
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    and-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v1

    ushr-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_12
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    ushr-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_13
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v1

    shr-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_14
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    shr-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_15
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result v1

    shl-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_16
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    shl-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_17
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    rem-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_18
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    rem-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_19
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    rem-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1a
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    rem-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1b
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    div-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1c
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1d
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    div-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1e
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    div-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_1f
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    mul-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_20
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_21
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    mul-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_22
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    mul-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_23
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    sub-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_24
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_25
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_26
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_27
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->doubleValue(Ljava/lang/Object;)D

    move-result-wide v1

    add-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_28
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->floatValue(Ljava/lang/Object;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_29
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->longValue(Ljava/lang/Object;)J

    move-result-wide v1

    add-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :pswitch_2a
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_15
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    or-int/2addr p2, p3

    if-eqz p2, :cond_16

    move v3, v4

    :cond_16
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_17
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p2

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->intValue(Ljava/lang/Object;)I

    move-result p3

    and-int/2addr p2, p3

    if-eqz p2, :cond_18

    move v3, v4

    :cond_18
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->b2i(Z)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_19
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ConstFold;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->stringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->stringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x94
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x10e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
