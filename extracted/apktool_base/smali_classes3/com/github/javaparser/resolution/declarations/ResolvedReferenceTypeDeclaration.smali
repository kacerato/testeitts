.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;


# static fields
.field public static final JAVA_IO_SERIALIZABLE:Ljava/lang/String;

.field public static final JAVA_LANG_COMPARABLE:Ljava/lang/String;

.field public static final JAVA_LANG_ENUM:Ljava/lang/String;

.field public static final JAVA_LANG_OBJECT:Ljava/lang/String;

.field public static final JAVA_LANG_RECORD:Ljava/lang/String; = "java.lang.Record"

.field public static final breadthFirstFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final depthFirstFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->JAVA_LANG_ENUM:Ljava/lang/String;

    const-class v0, Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->JAVA_LANG_COMPARABLE:Ljava/lang/String;

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->JAVA_IO_SERIALIZABLE:Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->JAVA_LANG_OBJECT:Ljava/lang/String;

    new-instance v0, Lcom/github/javaparser/resolution/declarations/n;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/declarations/n;-><init>()V

    sput-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->depthFirstFunc:Ljava/util/function/Function;

    new-instance v0, Lcom/github/javaparser/resolution/declarations/o;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/declarations/o;-><init>()V

    sput-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->breadthFirstFunc:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$null$1(Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getDeclaredAnnotation$16(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$hasAnnotation$13(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$static$3(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getDeclaredFields$11(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$static$0(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$hasVisibleField$7(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getVisibleField$5(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$hasField$6(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllNonStaticFields$9(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getAllStaticFields$10(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->isStatic()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDeclaredAnnotation$16(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "annotation"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getDeclaredFields$11(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$getField$4(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVisibleField$5(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getVisibleFields$8(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;->accessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object p1

    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lcom/github/javaparser/ast/AccessSpecifier;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$hasAnnotation$12(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasAnnotation$13(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isClass()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasAnnotation$14(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return-object p0
.end method

.method private static synthetic lambda$hasAnnotation$15(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "qualifiedName",
            "rrtd"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasDirectlyAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isInheritedAnnotation(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$hasField$6(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasVisibleField$7(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$null$1(Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "queuedAncestors",
            "ancestors",
            "ancestor"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$null$2(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "queuedAncestor",
            "queuedAncestors",
            "ancestors",
            "rtd"
        }
    .end annotation

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getDirectAncestors()Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/github/javaparser/resolution/declarations/j;

    invoke-direct {p3, p1, p2}, Lcom/github/javaparser/resolution/declarations/j;-><init>(Ljava/util/Deque;Ljava/util/List;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rrtd"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isJavaLangObject()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAncestors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static synthetic lambda$static$3(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rrtd"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isJavaLangObject()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAncestors()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/github/javaparser/resolution/declarations/i;

    invoke-direct {v3, p0, v1, v0}, Lcom/github/javaparser/resolution/declarations/i;-><init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Deque;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic n(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$hasAnnotation$15(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getAllStaticFields$10(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getAllNonStaticFields$9(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getField$4(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$getVisibleFields$8(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$hasAnnotation$14(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$null$2(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Deque;Ljava/util/List;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-void
.end method

.method public static synthetic w(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->lambda$hasAnnotation$12(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public asReferenceType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 0

    return-object p0
.end method

.method public canBeAssignedTo(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isAssignableBy(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result p1

    return p1
.end method

.method public findTypeParameter(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->containerType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->containerType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->findTypeParameter(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getAllAncestors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->depthFirstFunc:Ljava/util/function/Function;

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllAncestors(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllAncestors(Ljava/util/function/Function;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traverser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public abstract getAllFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation
.end method

.method public getAllNonStaticFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/q;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/declarations/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllStaticFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/f;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/declarations/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAncestors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAncestors(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAncestors(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceptIncompleteList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstructors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public getDeclaredAnnotation(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getDeclaredAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/g;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaredAnnotations()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting declared annotation is not supproted on this type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/p;

    invoke-direct {v1, p0}, Lcom/github/javaparser/resolution/declarations/p;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public abstract getDeclaredMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public getField(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/k;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/k;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    return-object p1

    :cond_0
    new-instance v0, Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/UnsolvedSymbolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleField(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getVisibleFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/l;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getVisibleFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/m;

    invoke-direct {v1, p0}, Lcom/github/javaparser/resolution/declarations/m;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasDirectlyAnnotation(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isClass()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/resolution/declarations/r;

    invoke-direct {v2}, Lcom/github/javaparser/resolution/declarations/r;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/resolution/declarations/s;

    invoke-direct {v2}, Lcom/github/javaparser/resolution/declarations/s;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/resolution/declarations/t;

    invoke-direct {v2}, Lcom/github/javaparser/resolution/declarations/t;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/resolution/declarations/u;

    invoke-direct {v2, p1}, Lcom/github/javaparser/resolution/declarations/u;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract hasDirectlyAnnotation(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/e;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public hasVisibleField(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getVisibleFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/h;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public abstract isAssignableBy(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract isFunctionalInterface()Z
.end method

.method public isInheritedAnnotation(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getDeclaredAnnotation(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;->isInheritable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isJavaLangEnum()Z
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->JAVA_LANG_ENUM:Ljava/lang/String;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJavaLangObject()Z
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->JAVA_LANG_OBJECT:Ljava/lang/String;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJavaLangRecord()Z
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.lang.Record"

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
