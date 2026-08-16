.class public final enum Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum COLUMN_ALIGN_FIRST_METHOD_CHAIN:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum COLUMN_ALIGN_PARAMETERS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum INDENTATION:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum INDENT_PRINT_ARRAYS_OF_ANNOTATIONS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum ORDER_IMPORTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum SORT_IMPORTS_STRATEGY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field public static final enum SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;


# instance fields
.field defaultValue:Ljava/lang/Object;

.field type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v1, "ORDER_IMPORTS"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->ORDER_IMPORTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const/4 v2, 0x1

    const-class v4, Lcom/github/javaparser/printer/configuration/ImportOrderingStrategy;

    const-string v5, "SORT_IMPORTS_STRATEGY"

    invoke-direct {v1, v5, v2, v4}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SORT_IMPORTS_STRATEGY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v4, "PRINT_COMMENTS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v4, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v5, "PRINT_JAVADOC"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v5, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v6, "SPACE_AROUND_OPERATORS"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v6, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v8, "COLUMN_ALIGN_PARAMETERS"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_PARAMETERS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v8, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v10, "COLUMN_ALIGN_FIRST_METHOD_CHAIN"

    const/4 v11, 0x6

    invoke-direct {v8, v10, v11, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_FIRST_METHOD_CHAIN:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v10, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v11, "INDENT_CASE_IN_SWITCH"

    const/4 v12, 0x7

    invoke-direct {v10, v11, v12, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v11, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY"

    const/16 v13, 0x8

    const-class v14, Ljava/lang/Integer;

    invoke-direct {v11, v12, v13, v14, v9}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)V

    sput-object v11, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v9, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    sget-object v12, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v12}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "END_OF_LINE_CHARACTER"

    const/16 v14, 0x9

    const-class v15, Ljava/lang/String;

    invoke-direct {v9, v13, v14, v15, v12}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v12, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v13, Lcom/github/javaparser/printer/configuration/Indentation;

    sget-object v14, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-direct {v13, v14, v7}, Lcom/github/javaparser/printer/configuration/Indentation;-><init>(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;I)V

    const-string v7, "INDENTATION"

    const/16 v14, 0xa

    const-class v15, Lcom/github/javaparser/printer/configuration/Indentation;

    invoke-direct {v12, v7, v14, v15, v13}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)V

    sput-object v12, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENTATION:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    new-instance v13, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    const-string v7, "INDENT_PRINT_ARRAYS_OF_ANNOTATIONS"

    const/16 v14, 0xb

    invoke-direct {v13, v7, v14, v3}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_PRINT_ARRAYS_OF_ANNOTATIONS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v7, v10

    move-object v8, v11

    move-object v10, v12

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->$VALUES:[Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "clazz",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->$VALUES:[Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {v0}, [Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    return-object v0
.end method
