.class final enum Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VarArgsOrNot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

.field public static final enum NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

.field public static final enum YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .locals 2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    filled-new-array {v0, v1}, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    const-string v1, "NO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->$values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->$VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

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

.method public static fromVariable(Lorg/openjdk/source/tree/VariableTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    return-object p0
.end method

.method public static valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    :goto_0
    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->$VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    return-object v0
.end method


# virtual methods
.method public isYes()Z
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
