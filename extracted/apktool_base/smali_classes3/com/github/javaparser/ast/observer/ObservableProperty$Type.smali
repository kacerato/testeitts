.class final enum Lcom/github/javaparser/ast/observer/ObservableProperty$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/observer/ObservableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/observer/ObservableProperty$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum MULTIPLE_ATTRIBUTE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum MULTIPLE_REFERENCE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum SINGLE_ATTRIBUTE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

.field public static final enum SINGLE_REFERENCE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;


# instance fields
.field private multiple:Z

.field private node:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v1, "SINGLE_ATTRIBUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->SINGLE_ATTRIBUTE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    new-instance v1, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v3, "SINGLE_REFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->SINGLE_REFERENCE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    new-instance v3, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v5, "MULTIPLE_ATTRIBUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v2}, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->MULTIPLE_ATTRIBUTE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    new-instance v2, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    const-string v5, "MULTIPLE_REFERENCE"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v4, v4}, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;-><init>(Ljava/lang/String;IZZ)V

    sput-object v2, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->MULTIPLE_REFERENCE:Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    filled-new-array {v0, v1, v3, v2}, [Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->$VALUES:[Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
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
            "multiple",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->multiple:Z

    iput-boolean p4, p0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->node:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/ast/observer/ObservableProperty$Type;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->node:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/github/javaparser/ast/observer/ObservableProperty$Type;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->multiple:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/observer/ObservableProperty$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/observer/ObservableProperty$Type;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->$VALUES:[Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/observer/ObservableProperty$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/observer/ObservableProperty$Type;

    return-object v0
.end method
