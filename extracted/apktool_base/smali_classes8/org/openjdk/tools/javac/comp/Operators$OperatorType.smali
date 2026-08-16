.class final enum Lorg/openjdk/tools/javac/comp/Operators$OperatorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Operators$OperatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum BOT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum BYTE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum CHAR:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum DOUBLE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum FLOAT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum INT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum LONG:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum OBJECT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum SHORT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

.field public static final enum STRING:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;


# instance fields
.field final asTypeFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/openjdk/tools/javac/code/Symtab;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v1, Lorg/openjdk/tools/javac/comp/J1;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/J1;-><init>()V

    const-string v2, "BYTE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BYTE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v2, Lorg/openjdk/tools/javac/comp/M1;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/comp/M1;-><init>()V

    const-string v3, "SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->SHORT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v3, Lorg/openjdk/tools/javac/comp/N1;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/comp/N1;-><init>()V

    const-string v4, "INT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->INT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v4, Lorg/openjdk/tools/javac/comp/O1;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/comp/O1;-><init>()V

    const-string v5, "LONG"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->LONG:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v4, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v5, Lorg/openjdk/tools/javac/comp/P1;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/comp/P1;-><init>()V

    const-string v6, "FLOAT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->FLOAT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v6, Lorg/openjdk/tools/javac/comp/Q1;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/comp/Q1;-><init>()V

    const-string v7, "DOUBLE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v5, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->DOUBLE:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v6, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v7, Lorg/openjdk/tools/javac/comp/R1;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/comp/R1;-><init>()V

    const-string v8, "CHAR"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v6, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->CHAR:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v7, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v8, Lorg/openjdk/tools/javac/comp/S1;

    invoke-direct {v8}, Lorg/openjdk/tools/javac/comp/S1;-><init>()V

    const-string v9, "BOOLEAN"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v7, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BOOLEAN:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v8, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v9, Lorg/openjdk/tools/javac/comp/T1;

    invoke-direct {v9}, Lorg/openjdk/tools/javac/comp/T1;-><init>()V

    const-string v10, "OBJECT"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v8, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->OBJECT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v9, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v10, Lorg/openjdk/tools/javac/comp/K1;

    invoke-direct {v10}, Lorg/openjdk/tools/javac/comp/K1;-><init>()V

    const-string v11, "STRING"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v9, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->STRING:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v10, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    new-instance v11, Lorg/openjdk/tools/javac/comp/L1;

    invoke-direct {v11}, Lorg/openjdk/tools/javac/comp/L1;-><init>()V

    const-string v12, "BOT"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;-><init>(Ljava/lang/String;ILjava/util/function/Function;)V

    sput-object v10, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->BOT:Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    filled-new-array/range {v0 .. v10}, [Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->$VALUES:[Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openjdk/tools/javac/code/Symtab;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->asTypeFunc:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$3(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$8(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$4(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$6(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$9(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$0(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$10(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$1(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$5(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$2(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$1(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$10(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    return-object p0
.end method

.method private static synthetic lambda$static$2(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$3(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$4(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$5(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$6(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$7(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p0
.end method

.method private static synthetic lambda$static$8(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    return-object p0
.end method

.method private static synthetic lambda$static$9(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    return-object p0
.end method

.method public static synthetic m(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->lambda$static$7(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Operators$OperatorType;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Operators$OperatorType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->$VALUES:[Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Operators$OperatorType;

    return-object v0
.end method


# virtual methods
.method public asType(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Operators$OperatorType;->asTypeFunc:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method
