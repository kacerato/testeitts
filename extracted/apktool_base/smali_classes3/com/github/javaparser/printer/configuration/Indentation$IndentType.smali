.class public final enum Lcom/github/javaparser/printer/configuration/Indentation$IndentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/configuration/Indentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/printer/configuration/Indentation$IndentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

.field public static final enum SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

.field public static final enum TABS:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

.field public static final enum TABS_WITH_SPACE_ALIGN:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;


# instance fields
.field private car:Ljava/lang/Character;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SPACES"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;-><init>(Ljava/lang/String;ILjava/lang/Character;I)V

    sput-object v0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    new-instance v1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "TABS"

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;-><init>(Ljava/lang/String;ILjava/lang/Character;I)V

    sput-object v1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->TABS:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    new-instance v3, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    const-string v4, "TABS_WITH_SPACE_ALIGN"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6, v2, v5}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;-><init>(Ljava/lang/String;ILjava/lang/Character;I)V

    sput-object v3, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->TABS_WITH_SPACE_ALIGN:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    filled-new-array {v0, v1, v3}, [Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->$VALUES:[Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Character;I)V
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
            "c",
            "width"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->car:Ljava/lang/Character;

    iput p4, p0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->width:I

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;)Ljava/lang/Character;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->car:Ljava/lang/Character;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/printer/configuration/Indentation$IndentType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/printer/configuration/Indentation$IndentType;
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->$VALUES:[Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v0}, [Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    return-object v0
.end method


# virtual methods
.method public getCar()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->car:Ljava/lang/Character;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->width:I

    return v0
.end method
