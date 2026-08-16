.class public Lcom/github/javaparser/resolution/model/SymbolReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final correspondingDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "correspondingDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/model/SymbolReference;->correspondingDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    return-void
.end method

.method public static synthetic a()Lcom/github/javaparser/resolution/UnsolvedSymbolException;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->lambda$getCorrespondingDeclaration$0()Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    move-result-object v0

    return-object v0
.end method

.method public static adapt(Lcom/github/javaparser/resolution/model/SymbolReference;Ljava/lang/Class;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;",
            "O::",
            "Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;",
            ">(",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "TI;>;",
            "Ljava/lang/Class<",
            "TO;>;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/SymbolReference;->getDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    invoke-static {p0}, Lcom/github/javaparser/resolution/model/SymbolReference;->solved(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCorrespondingDeclaration$0()Lcom/github/javaparser/resolution/UnsolvedSymbolException;
    .locals 2

    new-instance v0, Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    const-string v1, "Corresponding declaration not available for unsolved symbol."

    invoke-direct {v0, v1}, Lcom/github/javaparser/resolution/UnsolvedSymbolException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static solved(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "symbolDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;",
            "S2:TS;>(TS2;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/model/SymbolReference;

    invoke-direct {v0, p0}, Lcom/github/javaparser/resolution/model/SymbolReference;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)V

    return-object v0
.end method

.method public static unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;",
            ">()",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/resolution/model/SymbolReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/javaparser/resolution/model/SymbolReference;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)V

    return-object v0
.end method

.method public static unsolved(Ljava/lang/Class;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;",
            "S2:TS;>(",
            "Ljava/lang/Class<",
            "TS2;>;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCorrespondingDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/SymbolReference;->getDeclaration()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Li0/a;

    invoke-direct {v1}, Li0/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    return-object v0
.end method

.method public getDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/model/SymbolReference;->correspondingDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public isSolved()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/SymbolReference;->getDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SymbolReference{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/model/SymbolReference;->correspondingDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
