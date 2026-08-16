.class public final enum Lcom/github/javaparser/ast/Modifier$Keyword;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/Modifier$Keyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum DEFAULT:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum TRANSIENT:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum TRANSITIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

.field public static final enum VOLATILE:Lcom/github/javaparser/ast/Modifier$Keyword;


# instance fields
.field private final codeRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v1, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v2, 0x1

    const-string v3, "public"

    const-string v4, "PUBLIC"

    invoke-direct {v1, v4, v2, v3}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v2, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v3, 0x2

    const-string v4, "protected"

    const-string v5, "PROTECTED"

    invoke-direct {v2, v5, v3, v4}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v3, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v4, 0x3

    const-string v5, "private"

    const-string v6, "PRIVATE"

    invoke-direct {v3, v6, v4, v5}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v4, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v5, 0x4

    const-string v6, "abstract"

    const-string v7, "ABSTRACT"

    invoke-direct {v4, v7, v5, v6}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v5, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v6, 0x5

    const-string v7, "static"

    const-string v8, "STATIC"

    invoke-direct {v5, v8, v6, v7}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/github/javaparser/ast/Modifier$Keyword;->STATIC:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v6, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v7, 0x6

    const-string v8, "final"

    const-string v9, "FINAL"

    invoke-direct {v6, v9, v7, v8}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v7, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/4 v8, 0x7

    const-string v9, "transient"

    const-string v10, "TRANSIENT"

    invoke-direct {v7, v10, v8, v9}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v8, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v9, 0x8

    const-string v10, "volatile"

    const-string v11, "VOLATILE"

    invoke-direct {v8, v11, v9, v10}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v9, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v10, 0x9

    const-string v11, "synchronized"

    const-string v12, "SYNCHRONIZED"

    invoke-direct {v9, v12, v10, v11}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v10, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v11, 0xa

    const-string v12, "native"

    const-string v13, "NATIVE"

    invoke-direct {v10, v13, v11, v12}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v11, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v12, 0xb

    const-string v13, "strictfp"

    const-string v14, "STRICTFP"

    invoke-direct {v11, v14, v12, v13}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/github/javaparser/ast/Modifier$Keyword;->STRICTFP:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v12, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v13, 0xc

    const-string v14, "transitive"

    const-string v15, "TRANSITIVE"

    invoke-direct {v12, v15, v13, v14}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v13, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v14, 0xd

    const-string v15, "sealed"

    move-object/from16 v16, v12

    const-string v12, "SEALED"

    invoke-direct {v13, v12, v14, v15}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/github/javaparser/ast/Modifier$Keyword;->SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    new-instance v14, Lcom/github/javaparser/ast/Modifier$Keyword;

    const/16 v12, 0xe

    const-string v15, "non-sealed"

    move-object/from16 v17, v13

    const-string v13, "NON_SEALED"

    invoke-direct {v14, v13, v12, v15}, Lcom/github/javaparser/ast/Modifier$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/github/javaparser/ast/Modifier$Keyword;->NON_SEALED:Lcom/github/javaparser/ast/Modifier$Keyword;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->$VALUES:[Lcom/github/javaparser/ast/Modifier$Keyword;

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

    iput-object p3, p0, Lcom/github/javaparser/ast/Modifier$Keyword;->codeRepresentation:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/Modifier$Keyword;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Modifier$Keyword;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/Modifier$Keyword;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->$VALUES:[Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/Modifier$Keyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/Modifier$Keyword;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/Modifier$Keyword;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method
