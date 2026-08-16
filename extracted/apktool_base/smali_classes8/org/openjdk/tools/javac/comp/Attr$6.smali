.class Lorg/openjdk/tools/javac/comp/Attr$6;
.super Lorg/openjdk/tools/javac/code/Types$MapVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$MapVisitor<",
        "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$6;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;-><init>()V

    return-void
.end method

.method private makeNotionalInterface(Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;)Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_0
    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$6;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Types;->makeIntersectionType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    move-result-object p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams_field:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-object p1
.end method

.method private varargs reportIntersectionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$6;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "bad.intersection.target.for.functional.expr"

    invoke-virtual {v0, p3, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$6;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isIntersection()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$6;->visitIntersectionClassType(Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public visitIntersectionClassType(Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Type;
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$6;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$6;->makeNotionalInterface(Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;)Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;->getExplicitComponents()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr$6;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr$6;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    if-ne v5, v0, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x2000

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    :cond_2
    const-string v3, "not.an.intf.component"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr$6;->reportIntersectionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;->getExplicitComponents()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    :goto_1
    return-object v2
.end method
