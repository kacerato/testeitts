.class public Lorg/eclipse/jdt/core/jdom/DOMFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/jdom/IDOMFactory;


# instance fields
.field lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createClass()Lorg/eclipse/jdt/core/jdom/IDOMType;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "public class AClass {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;->createType(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMType;

    move-result-object v0

    return-object v0
.end method

.method public createCompilationUnit()Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createCompilationUnit()Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public createCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->createCompilationUnit([C[C)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public createCompilationUnit([CLjava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/SimpleDOMBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/jdom/AbstractDOMBuilder;->createCompilationUnit([C[C)Lorg/eclipse/jdt/core/jdom/IDOMCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public createField()Lorg/eclipse/jdt/core/jdom/IDOMField;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object aField;"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;->createField(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMField;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createField([C)Lorg/eclipse/jdt/core/jdom/IDOMField;

    move-result-object p1

    return-object p1
.end method

.method public createImport()Lorg/eclipse/jdt/core/jdom/IDOMImport;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createImport()Lorg/eclipse/jdt/core/jdom/IDOMImport;

    move-result-object v0

    return-object v0
.end method

.method public createImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMImport;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createImport([C)Lorg/eclipse/jdt/core/jdom/IDOMImport;

    move-result-object p1

    return-object p1
.end method

.method public createInitializer()Lorg/eclipse/jdt/core/jdom/IDOMInitializer;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "static {}"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;->createInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMInitializer;

    move-result-object v0

    return-object v0
.end method

.method public createInitializer(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMInitializer;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createInitializer([C)Lorg/eclipse/jdt/core/jdom/IDOMInitializer;

    move-result-object p1

    return-object p1
.end method

.method public createInterface()Lorg/eclipse/jdt/core/jdom/IDOMType;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "public interface AnInterface {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;->createType(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMType;

    move-result-object v0

    return-object v0
.end method

.method public createMethod()Lorg/eclipse/jdt/core/jdom/IDOMMethod;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "public void newMethod() {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;->createMethod(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    move-result-object v0

    return-object v0
.end method

.method public createMethod(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMMethod;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createMethod([C)Lorg/eclipse/jdt/core/jdom/IDOMMethod;

    move-result-object p1

    return-object p1
.end method

.method public createPackage()Lorg/eclipse/jdt/core/jdom/IDOMPackage;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createPackage()Lorg/eclipse/jdt/core/jdom/IDOMPackage;

    move-result-object v0

    return-object v0
.end method

.method public createPackage(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMPackage;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createPackage([C)Lorg/eclipse/jdt/core/jdom/IDOMPackage;

    move-result-object p1

    return-object p1
.end method

.method public createType()Lorg/eclipse/jdt/core/jdom/IDOMType;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "public class AClass {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/core/jdom/DOMFactory;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/jdom/DOMFactory;->createType(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMType;

    move-result-object v0

    return-object v0
.end method

.method public createType(Ljava/lang/String;)Lorg/eclipse/jdt/core/jdom/IDOMType;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/jdom/DOMBuilder;->createType([C)Lorg/eclipse/jdt/core/jdom/IDOMType;

    move-result-object p1

    return-object p1
.end method
