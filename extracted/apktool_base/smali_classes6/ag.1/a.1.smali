.class public final enum Lag/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lag/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lag/a;

.field public static final enum COMBINING_SPACING_MARK:Lag/a;

.field public static final enum CONNECTOR_PUNCTUATION:Lag/a;

.field public static final enum CONTROL:Lag/a;

.field public static final enum CURRENCY_SYMBOL:Lag/a;

.field public static final Companion:Lag/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DASH_PUNCTUATION:Lag/a;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lag/a;

.field public static final enum ENCLOSING_MARK:Lag/a;

.field public static final enum END_PUNCTUATION:Lag/a;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lag/a;

.field public static final enum FORMAT:Lag/a;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lag/a;

.field public static final enum LETTER_NUMBER:Lag/a;

.field public static final enum LINE_SEPARATOR:Lag/a;

.field public static final enum LOWERCASE_LETTER:Lag/a;

.field public static final enum MATH_SYMBOL:Lag/a;

.field public static final enum MODIFIER_LETTER:Lag/a;

.field public static final enum MODIFIER_SYMBOL:Lag/a;

.field public static final enum NON_SPACING_MARK:Lag/a;

.field public static final enum OTHER_LETTER:Lag/a;

.field public static final enum OTHER_NUMBER:Lag/a;

.field public static final enum OTHER_PUNCTUATION:Lag/a;

.field public static final enum OTHER_SYMBOL:Lag/a;

.field public static final enum PARAGRAPH_SEPARATOR:Lag/a;

.field public static final enum PRIVATE_USE:Lag/a;

.field public static final enum SPACE_SEPARATOR:Lag/a;

.field public static final enum START_PUNCTUATION:Lag/a;

.field public static final enum SURROGATE:Lag/a;

.field public static final enum TITLECASE_LETTER:Lag/a;

.field public static final enum UNASSIGNED:Lag/a;

.field public static final enum UPPERCASE_LETTER:Lag/a;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lag/a;

    const/4 v1, 0x0

    const-string v2, "Cn"

    const-string v3, "UNASSIGNED"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->UNASSIGNED:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x1

    const-string v2, "Lu"

    const-string v3, "UPPERCASE_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->UPPERCASE_LETTER:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x2

    const-string v2, "Ll"

    const-string v3, "LOWERCASE_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->LOWERCASE_LETTER:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x3

    const-string v2, "Lt"

    const-string v3, "TITLECASE_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->TITLECASE_LETTER:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x4

    const-string v2, "Lm"

    const-string v3, "MODIFIER_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->MODIFIER_LETTER:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x5

    const-string v2, "Lo"

    const-string v3, "OTHER_LETTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->OTHER_LETTER:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x6

    const-string v2, "Mn"

    const-string v3, "NON_SPACING_MARK"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->NON_SPACING_MARK:Lag/a;

    new-instance v0, Lag/a;

    const/4 v1, 0x7

    const-string v2, "Me"

    const-string v3, "ENCLOSING_MARK"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->ENCLOSING_MARK:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x8

    const-string v2, "Mc"

    const-string v3, "COMBINING_SPACING_MARK"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->COMBINING_SPACING_MARK:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x9

    const-string v2, "Nd"

    const-string v3, "DECIMAL_DIGIT_NUMBER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->DECIMAL_DIGIT_NUMBER:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0xa

    const-string v2, "Nl"

    const-string v3, "LETTER_NUMBER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->LETTER_NUMBER:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0xb

    const-string v2, "No"

    const-string v3, "OTHER_NUMBER"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->OTHER_NUMBER:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0xc

    const-string v2, "Zs"

    const-string v3, "SPACE_SEPARATOR"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->SPACE_SEPARATOR:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0xd

    const-string v2, "Zl"

    const-string v3, "LINE_SEPARATOR"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->LINE_SEPARATOR:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0xe

    const-string v2, "Zp"

    const-string v3, "PARAGRAPH_SEPARATOR"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->PARAGRAPH_SEPARATOR:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0xf

    const-string v2, "Cc"

    const-string v3, "CONTROL"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->CONTROL:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x10

    const-string v2, "Cf"

    const-string v3, "FORMAT"

    invoke-direct {v0, v3, v1, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->FORMAT:Lag/a;

    new-instance v0, Lag/a;

    const-string v1, "Co"

    const-string v2, "PRIVATE_USE"

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v2, v3, v4, v1}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->PRIVATE_USE:Lag/a;

    new-instance v0, Lag/a;

    const-string v1, "Cs"

    const-string v2, "SURROGATE"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v4, v3, v1}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->SURROGATE:Lag/a;

    new-instance v0, Lag/a;

    const-string v1, "Pd"

    const-string v2, "DASH_PUNCTUATION"

    const/16 v4, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->DASH_PUNCTUATION:Lag/a;

    new-instance v0, Lag/a;

    const-string v1, "Ps"

    const-string v2, "START_PUNCTUATION"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v4, v3, v1}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->START_PUNCTUATION:Lag/a;

    new-instance v0, Lag/a;

    const-string v1, "Pe"

    const-string v2, "END_PUNCTUATION"

    const/16 v4, 0x16

    invoke-direct {v0, v2, v3, v4, v1}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->END_PUNCTUATION:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x17

    const-string v2, "Pc"

    const-string v3, "CONNECTOR_PUNCTUATION"

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->CONNECTOR_PUNCTUATION:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x18

    const-string v2, "Po"

    const-string v3, "OTHER_PUNCTUATION"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->OTHER_PUNCTUATION:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x19

    const-string v2, "Sm"

    const-string v3, "MATH_SYMBOL"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->MATH_SYMBOL:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x1a

    const-string v2, "Sc"

    const-string v3, "CURRENCY_SYMBOL"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->CURRENCY_SYMBOL:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x1b

    const-string v2, "Sk"

    const-string v3, "MODIFIER_SYMBOL"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->MODIFIER_SYMBOL:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x1c

    const-string v2, "So"

    const-string v3, "OTHER_SYMBOL"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->OTHER_SYMBOL:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x1d

    const-string v2, "Pi"

    const-string v3, "INITIAL_QUOTE_PUNCTUATION"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->INITIAL_QUOTE_PUNCTUATION:Lag/a;

    new-instance v0, Lag/a;

    const/16 v1, 0x1e

    const-string v2, "Pf"

    const-string v3, "FINAL_QUOTE_PUNCTUATION"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lag/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lag/a;->FINAL_QUOTE_PUNCTUATION:Lag/a;

    invoke-static {}, Lag/a;->a()[Lag/a;

    move-result-object v0

    sput-object v0, Lag/a;->$VALUES:[Lag/a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lag/a;->$ENTRIES:LCf/a;

    new-instance v0, Lag/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lag/a$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lag/a;->Companion:Lag/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lag/a;->value:I

    iput-object p4, p0, Lag/a;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lag/a;
    .locals 30

    sget-object v0, Lag/a;->UNASSIGNED:Lag/a;

    sget-object v1, Lag/a;->UPPERCASE_LETTER:Lag/a;

    sget-object v2, Lag/a;->LOWERCASE_LETTER:Lag/a;

    sget-object v3, Lag/a;->TITLECASE_LETTER:Lag/a;

    sget-object v4, Lag/a;->MODIFIER_LETTER:Lag/a;

    sget-object v5, Lag/a;->OTHER_LETTER:Lag/a;

    sget-object v6, Lag/a;->NON_SPACING_MARK:Lag/a;

    sget-object v7, Lag/a;->ENCLOSING_MARK:Lag/a;

    sget-object v8, Lag/a;->COMBINING_SPACING_MARK:Lag/a;

    sget-object v9, Lag/a;->DECIMAL_DIGIT_NUMBER:Lag/a;

    sget-object v10, Lag/a;->LETTER_NUMBER:Lag/a;

    sget-object v11, Lag/a;->OTHER_NUMBER:Lag/a;

    sget-object v12, Lag/a;->SPACE_SEPARATOR:Lag/a;

    sget-object v13, Lag/a;->LINE_SEPARATOR:Lag/a;

    sget-object v14, Lag/a;->PARAGRAPH_SEPARATOR:Lag/a;

    sget-object v15, Lag/a;->CONTROL:Lag/a;

    sget-object v16, Lag/a;->FORMAT:Lag/a;

    sget-object v17, Lag/a;->PRIVATE_USE:Lag/a;

    sget-object v18, Lag/a;->SURROGATE:Lag/a;

    sget-object v19, Lag/a;->DASH_PUNCTUATION:Lag/a;

    sget-object v20, Lag/a;->START_PUNCTUATION:Lag/a;

    sget-object v21, Lag/a;->END_PUNCTUATION:Lag/a;

    sget-object v22, Lag/a;->CONNECTOR_PUNCTUATION:Lag/a;

    sget-object v23, Lag/a;->OTHER_PUNCTUATION:Lag/a;

    sget-object v24, Lag/a;->MATH_SYMBOL:Lag/a;

    sget-object v25, Lag/a;->CURRENCY_SYMBOL:Lag/a;

    sget-object v26, Lag/a;->MODIFIER_SYMBOL:Lag/a;

    sget-object v27, Lag/a;->OTHER_SYMBOL:Lag/a;

    sget-object v28, Lag/a;->INITIAL_QUOTE_PUNCTUATION:Lag/a;

    sget-object v29, Lag/a;->FINAL_QUOTE_PUNCTUATION:Lag/a;

    filled-new-array/range {v0 .. v29}, [Lag/a;

    move-result-object v0

    return-object v0
.end method

.method public static d()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lag/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lag/a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lag/a;
    .locals 1

    const-class v0, Lag/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lag/a;

    return-object p0
.end method

.method public static values()[Lag/a;
    .locals 1

    sget-object v0, Lag/a;->$VALUES:[Lag/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lag/a;

    return-object v0
.end method


# virtual methods
.method public final b(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    iget v0, p0, Lag/a;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lag/a;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lag/a;->value:I

    return v0
.end method
