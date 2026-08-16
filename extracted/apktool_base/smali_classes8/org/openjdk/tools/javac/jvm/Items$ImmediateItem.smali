.class Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;
.super Lorg/openjdk/tools/javac/jvm/Items$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImmediateItem"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Items;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {p2}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$Item;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    return-void
.end method

.method private isPosZero(D)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    cmpl-double p1, v2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPosZero(F)Z
    .locals 2

    .line 2
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    cmpl-float p1, v1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private ldc()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitLdc(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public coerce(I)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->coerce(I)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result p1

    if-nez p1, :cond_8

    return-object p0

    :cond_8
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p1
.end method

.method public load()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 5

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->isPosZero(D)Z

    move-result v0

    if-nez v0, :cond_1

    cmpl-double v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    double-to-int v1, v3

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->isPosZero(F)Z

    move-result v3

    if-nez v3, :cond_3

    float-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    cmpl-double v1, v3, v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto/16 :goto_3

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-gt v1, v0, :cond_6

    const/4 v1, 0x5

    if-gt v0, v1, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_3

    :cond_6
    const/16 v1, -0x80

    if-gt v1, v0, :cond_7

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_7

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop1(II)V

    goto :goto_3

    :cond_7
    const/16 v1, -0x8000

    if-gt v1, v0, :cond_8

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Items;->access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    aget-object v0, v0, v1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public mkCond()Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->this$0:Lorg/openjdk/tools/javac/jvm/Items;

    if-eqz v0, :cond_0

    const/16 v0, 0xa7

    goto :goto_0

    :cond_0
    const/16 v0, 0xa8

    :goto_0
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "immediate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
