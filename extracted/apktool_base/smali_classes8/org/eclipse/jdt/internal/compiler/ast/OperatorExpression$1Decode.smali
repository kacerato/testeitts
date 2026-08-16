.class Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->generateTableTestCase()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Decode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constant(I)Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p1

    :pswitch_1
    return-object v0

    :pswitch_2
    const-string p1, "\"hello-world\""

    return-object p1

    :pswitch_3
    const-string p1, "1"

    return-object p1

    :pswitch_4
    const-string p1, "100.0f"

    return-object p1

    :pswitch_5
    const-string p1, "300.0d"

    return-object p1

    :pswitch_6
    const-string p1, "7L"

    return-object p1

    :pswitch_7
    const-string p1, "true"

    return-object p1

    :pswitch_8
    const-string p1, "((short) 5)"

    return-object p1

    :pswitch_9
    const-string p1, "((byte) 3)"

    return-object p1

    :pswitch_a
    const-string p1, "\'A\'"

    return-object p1

    :pswitch_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final operator(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "????"

    return-object p1

    :pswitch_0
    const-string p1, ">>>"

    return-object p1

    :pswitch_1
    const-string p1, "=="

    return-object p1

    :pswitch_2
    const-string p1, ">>"

    return-object p1

    :pswitch_3
    const-string p1, "%"

    return-object p1

    :pswitch_4
    const-string p1, "*"

    return-object p1

    :pswitch_5
    const-string p1, "+"

    return-object p1

    :pswitch_6
    const-string p1, "-"

    return-object p1

    :pswitch_7
    const-string p1, "~"

    return-object p1

    :pswitch_8
    const-string p1, "!"

    return-object p1

    :pswitch_9
    const-string p1, "<<"

    return-object p1

    :pswitch_a
    const-string p1, "/"

    return-object p1

    :pswitch_b
    const-string p1, "^"

    return-object p1

    :pswitch_c
    const-string p1, ">="

    return-object p1

    :pswitch_d
    const-string p1, ">"

    return-object p1

    :pswitch_e
    const-string p1, "<="

    return-object p1

    :pswitch_f
    const-string p1, "<"

    return-object p1

    :pswitch_10
    const-string p1, "|"

    return-object p1

    :pswitch_11
    const-string p1, "&"

    return-object p1

    :pswitch_12
    const-string p1, "||"

    return-object p1

    :pswitch_13
    const-string p1, "&&"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method public final type(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "xxx"

    return-object p1

    :pswitch_1
    const-string p1, "null"

    return-object p1

    :pswitch_2
    const-string p1, "str"

    return-object p1

    :pswitch_3
    const-string p1, "i"

    return-object p1

    :pswitch_4
    const-string p1, "f"

    return-object p1

    :pswitch_5
    const-string p1, "d"

    return-object p1

    :pswitch_6
    const-string p1, "l"

    return-object p1

    :pswitch_7
    const-string p1, "z"

    return-object p1

    :pswitch_8
    const-string p1, "s"

    return-object p1

    :pswitch_9
    const-string p1, "b"

    return-object p1

    :pswitch_a
    const-string p1, "c"

    return-object p1

    :pswitch_b
    const-string p1, "obj"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
