.class public final enum Lcom/github/javaparser/ast/AccessSpecifier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/AccessSpecifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/AccessSpecifier;

.field public static final enum NONE:Lcom/github/javaparser/ast/AccessSpecifier;

.field public static final enum PRIVATE:Lcom/github/javaparser/ast/AccessSpecifier;

.field public static final enum PROTECTED:Lcom/github/javaparser/ast/AccessSpecifier;

.field public static final enum PUBLIC:Lcom/github/javaparser/ast/AccessSpecifier;


# instance fields
.field private codeRepresenation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/github/javaparser/ast/AccessSpecifier;

    const/4 v1, 0x0

    const-string v2, "public"

    const-string v3, "PUBLIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PUBLIC:Lcom/github/javaparser/ast/AccessSpecifier;

    new-instance v1, Lcom/github/javaparser/ast/AccessSpecifier;

    const/4 v2, 0x1

    const-string v3, "private"

    const-string v4, "PRIVATE"

    invoke-direct {v1, v4, v2, v3}, Lcom/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lcom/github/javaparser/ast/AccessSpecifier;

    new-instance v2, Lcom/github/javaparser/ast/AccessSpecifier;

    const/4 v3, 0x2

    const-string v4, "protected"

    const-string v5, "PROTECTED"

    invoke-direct {v2, v5, v3, v4}, Lcom/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/github/javaparser/ast/AccessSpecifier;->PROTECTED:Lcom/github/javaparser/ast/AccessSpecifier;

    new-instance v3, Lcom/github/javaparser/ast/AccessSpecifier;

    const/4 v4, 0x3

    const-string v5, ""

    const-string v6, "NONE"

    invoke-direct {v3, v6, v4, v5}, Lcom/github/javaparser/ast/AccessSpecifier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/github/javaparser/ast/AccessSpecifier;->NONE:Lcom/github/javaparser/ast/AccessSpecifier;

    filled-new-array {v0, v1, v2, v3}, [Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->$VALUES:[Lcom/github/javaparser/ast/AccessSpecifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "codeRepresentation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/ast/AccessSpecifier;->codeRepresenation:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/AccessSpecifier;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/AccessSpecifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/AccessSpecifier;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/AccessSpecifier;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->$VALUES:[Lcom/github/javaparser/ast/AccessSpecifier;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/AccessSpecifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/AccessSpecifier;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/AccessSpecifier;->codeRepresenation:Ljava/lang/String;

    return-object v0
.end method
