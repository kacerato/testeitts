.class public final enum Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/stmt/SwitchEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

.field public static final enum BLOCK:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

.field public static final enum EXPRESSION:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

.field public static final enum STATEMENT_GROUP:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

.field public static final enum THROWS_STATEMENT:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    const-string v1, "STATEMENT_GROUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->STATEMENT_GROUP:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    new-instance v1, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    const-string v2, "EXPRESSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->EXPRESSION:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    new-instance v2, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    const-string v3, "BLOCK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->BLOCK:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    new-instance v3, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    const-string v4, "THROWS_STATEMENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->THROWS_STATEMENT:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->$VALUES:[Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->$VALUES:[Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    return-object v0
.end method
