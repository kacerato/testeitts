.class public final enum Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum ASSIGN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum DEREF:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum FIRSTASGOP:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum POSTDEC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum POSTINC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum PREDEC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum PREINC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final enum UNKNOWN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

.field public static final numberOfAccessCodes:I


# instance fields
.field public final code:I

.field public final tag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NO_TAG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->UNKNOWN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    const-string v4, "DEREF"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3, v1}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->DEREF:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    const/4 v4, 0x2

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v6, "ASSIGN"

    invoke-direct {v3, v6, v4, v4, v5}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->ASSIGN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v4, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v6, "PREINC"

    const/4 v7, 0x3

    const/4 v8, 0x4

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v4, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->PREINC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v5, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v7, "PREDEC"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->PREDEC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    const/16 v7, 0x8

    sget-object v8, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v10, "POSTINC"

    const/4 v11, 0x5

    invoke-direct {v6, v10, v11, v7, v8}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v6, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->POSTINC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    const/16 v8, 0xa

    sget-object v10, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v11, "POSTDEC"

    invoke-direct {v7, v11, v9, v8, v10}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v7, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->POSTDEC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    new-instance v8, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    const/4 v9, 0x7

    const/16 v10, 0xc

    const-string v11, "FIRSTASGOP"

    invoke-direct {v8, v11, v9, v10, v1}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;-><init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v8, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->FIRSTASGOP:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->$VALUES:[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget v0, v8, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    add-int/lit8 v0, v0, 0x56

    sput v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->numberOfAccessCodes:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->tag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-void
.end method

.method public static from(Lorg/openjdk/tools/javac/tree/JCTree$Tag;I)I
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    const/16 p0, 0x60

    if-gt p0, p1, :cond_0

    const/16 v1, 0x83

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, p0

    mul-int/2addr p1, v0

    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->FIRSTASGOP:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_0
    const/16 p0, 0x100

    if-ne p1, p0, :cond_1

    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->FIRSTASGOP:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    add-int/lit8 p0, p0, 0x48

    return p0

    :cond_1
    const/16 p0, 0x10e

    if-gt p0, p1, :cond_2

    const/16 p0, 0x113

    if-gt p1, p0, :cond_2

    add-int/lit16 p1, p1, -0xe9

    mul-int/2addr p1, v0

    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->FIRSTASGOP:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->POSTDEC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0

    :cond_4
    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->POSTINC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0

    :cond_5
    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->PREDEC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0

    :cond_6
    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->PREINC:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0
.end method

.method public static getFromCode(I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;
    .locals 5

    invoke-static {}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->values()[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->UNKNOWN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->$VALUES:[Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    return-object v0
.end method
