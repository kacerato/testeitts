.class abstract Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InheritDocVisitor"
.end annotation


# static fields
.field public static final CONTINUE:Ljava/lang/Object;

.field public static final STOP_BRANCH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->STOP_BRANCH:Ljava/lang/Object;

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor$2;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private visitInheritDocInterfaces(Ljava/util/ArrayList;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-object p1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->visitInheritDocInterfaces(Ljava/util/ArrayList;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    return-object p2

    :cond_2
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->STOP_BRANCH:Ljava/lang/Object;

    if-eq v3, v4, :cond_5

    sget-object v4, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v3

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public visitInheritDoc(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->visitInheritDocInterfaces(Ljava/util/ArrayList;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->STOP_BRANCH:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    if-ne v2, v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->visitInheritDocInterfaces(Ljava/util/ArrayList;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    return-object v1
.end method
