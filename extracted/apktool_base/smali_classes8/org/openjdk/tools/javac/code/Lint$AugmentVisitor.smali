.class public Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Lint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AugmentVisitor"
.end annotation


# instance fields
.field private final context:Lorg/openjdk/tools/javac/util/Context;

.field private lint:Lorg/openjdk/tools/javac/code/Lint;

.field private parent:Lorg/openjdk/tools/javac/code/Lint;

.field private syms:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->context:Lorg/openjdk/tools/javac/util/Context;

    return-void
.end method

.method private initSyms()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    :cond_0
    return-void
.end method

.method private suppress(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->parent:Lorg/openjdk/tools/javac/code/Lint;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;-><init>(Lorg/openjdk/tools/javac/code/Lint;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Lint;->access$100(Lorg/openjdk/tools/javac/code/Lint;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Lint;->access$200(Lorg/openjdk/tools/javac/code/Lint;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public augment(Lorg/openjdk/tools/javac/code/Lint;Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->initSyms()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->parent:Lorg/openjdk/tools/javac/code/Lint;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    .line 4
    invoke-virtual {p2, p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    .line 5
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public augment(Lorg/openjdk/tools/javac/code/Lint;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Lint;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Lint;"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->initSyms()V

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->parent:Lorg/openjdk/tools/javac/code/Lint;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    .line 9
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 10
    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->lint:Lorg/openjdk/tools/javac/code/Lint;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
    .locals 3

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
    .locals 0

    return-void
.end method

.method public visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->suppressWarningsType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->suppress(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    :cond_0
    return-void
.end method

.method public visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
    .locals 0

    return-void
.end method

.method public visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
    .locals 0

    return-void
.end method
