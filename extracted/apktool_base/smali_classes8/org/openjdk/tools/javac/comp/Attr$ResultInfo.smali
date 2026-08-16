.class Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfo"
.end annotation


# instance fields
.field final checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

.field final checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

.field final pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field final pt:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    sget-object v6, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NORMAL:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V
    .locals 7

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 6

    .line 3
    sget-object v5, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NORMAL:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    .line 6
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    .line 7
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    .line 8
    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    return-void
.end method


# virtual methods
.method public check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    .line 1
    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-object v6
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    .line 3
    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-object v6
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    .line 4
    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-object v6
.end method

.method public dup(Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    .line 5
    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-object v6
.end method

.method public dup(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    return-object v6
.end method

.method public needsArgumentAttr(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
