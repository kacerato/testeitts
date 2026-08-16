.class Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintDirective"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    return-void
.end method

.method private printModuleList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->printNameableList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private printNameableList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/QualifiedNameable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/openjdk/tools/javac/processing/f;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/processing/f;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitExports(Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->visitExports(Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExports(Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "exports "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;->getPackage()Lorg/openjdk/javax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/PackageElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;->getTargetModules()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->printModuleList(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitOpens(Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->visitOpens(Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitOpens(Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "opens "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;->getPackage()Lorg/openjdk/javax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/PackageElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;->getTargetModules()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->printModuleList(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitProvides(Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->visitProvides(Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "provides "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;->getService()Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, " with "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;->getImplementations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->printNameableList(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitRequires(Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->visitRequires(Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitRequires(Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "requires "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "static "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;->isTransitive()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "transitive "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;->getDependency()Lorg/openjdk/javax/lang/model/element/ModuleElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitUses(Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->visitUses(Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    const-string v0, "uses "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;->getService()Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
