.class public Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassNameSimplifier"
.end annotation


# instance fields
.field nameClashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addUsage(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public simplify(Lorg/openjdk/tools/javac/code/Symbol;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "."

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method
