.class public Lorg/openjdk/tools/javac/code/SymbolMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECL_IN_PROGRESS:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation
.end field

.field private static final DECL_NOT_STARTED:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation
.end field

.field private clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation
.end field

.field private init_type_attributes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation
.end field

.field private final sym:Lorg/openjdk/tools/javac/code/Symbol;

.field private type_attributes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    sput-object v1, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_NOT_STARTED:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_IN_PROGRESS:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_NOT_STARTED:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method

.method private filterDeclSentinels(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_IN_PROGRESS:Lorg/openjdk/tools/javac/util/List;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_NOT_STARTED:Lorg/openjdk/tools/javac/util/List;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private isStarted()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    sget-object v1, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_NOT_STARTED:Lorg/openjdk/tools/javac/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public append(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/SymbolMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/SymbolMetadata;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->filterDeclSentinels(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-object p0
.end method

.method public appendClassInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/SymbolMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/SymbolMetadata;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-object p0
.end method

.method public appendInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/SymbolMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/SymbolMetadata;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-object p0
.end method

.method public appendUniqueTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/SymbolMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/SymbolMetadata;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public getClassInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public getDeclarationAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->filterDeclSentinels(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public getTypeAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->pendingCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTypesEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pendingCompletion()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    sget-object v1, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_IN_PROGRESS:Lorg/openjdk/tools/javac/util/List;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepend(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/SymbolMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/SymbolMetadata;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->filterDeclSentinels(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-object p0
.end method

.method public reset()Lorg/openjdk/tools/javac/code/SymbolMetadata;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->DECL_IN_PROGRESS:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public setAttributes(Lorg/openjdk/tools/javac/code/SymbolMetadata;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->getDeclarationAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->setDeclarationAttributes(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/SymbolMetadata;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->getTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/TargetType;->isLocal()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->setTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->getTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->setTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->getInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->setInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->getClassInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->setClassInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_4
    return-void
.end method

.method public setClassInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->clinit_type_attributes:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public setDeclarationAttributes(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->pendingCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->attributes:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public setInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->init_type_attributes:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public setTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/SymbolMetadata;->type_attributes:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
