.class abstract Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;
.super Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InvalidSymbolError"
.end annotation


# instance fields
.field sym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public access(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wrongSym="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
