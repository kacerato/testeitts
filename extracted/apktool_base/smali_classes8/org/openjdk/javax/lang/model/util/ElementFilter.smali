.class public Lorg/openjdk/javax/lang/model/util/ElementFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONSTRUCTOR_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_KINDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final METHOD_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODULE_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_KIND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_KINDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->CONSTRUCTOR_KIND:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->FIELD_KINDS:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->METHOD_KIND:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->PACKAGE_KIND:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->MODULE_KIND:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    sget-object v3, Lorg/openjdk/javax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->TYPE_KINDS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->CONSTRUCTOR_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static constructorsIn(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->CONSTRUCTOR_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static exportsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->EXPORTS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->FIELD_KINDS:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fieldsIn(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->FIELD_KINDS:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/Element;

    .line 3
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static listFilter(Ljava/lang/Iterable;Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;

    .line 7
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;->getKind()Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static methodsIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->METHOD_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static methodsIn(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->METHOD_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static modulesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->MODULE_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static modulesIn(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->MODULE_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static opensIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->OPENS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static packagesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/PackageElement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->PACKAGE_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/PackageElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static packagesIn(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/PackageElement;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->PACKAGE_KIND:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/PackageElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static providesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->PROVIDES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static requiresIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->REQUIRES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/ElementKind;",
            ">;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/Element;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static typesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->TYPE_KINDS:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static typesIn(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/javax/lang/model/util/ElementFilter;->TYPE_KINDS:Ljava/util/Set;

    const-class v1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->setFilter(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static usesIn(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->USES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-class v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;

    invoke-static {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->listFilter(Ljava/lang/Iterable;Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
