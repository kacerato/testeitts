.class synthetic Lcom/github/javaparser/printer/SourcePrinter$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/SourcePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->values()[Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType:[I

    :try_start_0
    sget-object v1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType:[I

    sget-object v1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->TABS_WITH_SPACE_ALIGN:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType:[I

    sget-object v1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->TABS:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
