.class public abstract enum Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum FLAG:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum IS_EMPTY:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum IS_NOT_EMPTY:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum IS_PRESENT:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$1;

    const-string v1, "IS_EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_EMPTY:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$2;

    const-string v3, "IS_NOT_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-instance v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$3;

    const-string v5, "IS_PRESENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-instance v5, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$4;

    const-string v7, "FLAG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->$VALUES:[Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->$VALUES:[Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-virtual {v0}, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-object v0
.end method


# virtual methods
.method public abstract evaluate(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "property"
        }
    .end annotation
.end method
