.class final enum Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModuleKeyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

.field public static final enum FIRST_ALL:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

.field public static final enum NOT_A_KEYWORD:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

.field public static final enum PROVIDES_WITH:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

.field public static final enum TO:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    const-string v1, "FIRST_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->FIRST_ALL:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    const-string v2, "TO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->TO:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    new-instance v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    const-string v3, "PROVIDES_WITH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->PROVIDES_WITH:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    new-instance v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    const-string v4, "NOT_A_KEYWORD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->NOT_A_KEYWORD:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    filled-new-array {v0, v1, v2, v3}, [Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$ModuleKeyword;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
