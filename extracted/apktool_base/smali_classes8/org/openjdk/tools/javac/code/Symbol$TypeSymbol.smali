.class public abstract Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TypeSymbol"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/openjdk/tools/javac/code/Symbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static formFlatName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x24

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Name;->append(CLorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Name;->append(CLorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitTypeSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;
    .locals 1

    const-string v0, "Only on ClassSymbol"

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosedElements()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v3, p0, :cond_1

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final precedes(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Types;->rank(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/code/Types;->rank(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Types;->rank(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/code/Types;->rank(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p2

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Name;->compareTo(Lorg/openjdk/tools/javac/util/Name;)I

    move-result p1

    if-gez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    return p1
.end method
