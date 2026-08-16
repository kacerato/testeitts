.class Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Check;->implicitEnumFinalFlag(Lorg/openjdk/tools/javac/tree/JCTree;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpecialTreeVisitor"
.end annotation


# instance fields
.field specialized:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;->specialized:Z

    return-void
.end method


# virtual methods
.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    instance-of v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;->specialized:Z

    :cond_0
    return-void
.end method
