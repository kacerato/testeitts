.class Lorg/openjdk/tools/javac/code/Types$2;
.super Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$SimpleVisitor<",
        "Lorg/openjdk/tools/javac/code/Type;",
        "Lorg/openjdk/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$2;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 7

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 5
    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 6
    :try_start_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v0, p1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->adapt(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$AdaptFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 9
    :cond_2
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 10
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 11
    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Type$ClassType;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    iget-object v2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 14
    :cond_3
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->isRaw()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 19
    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move-object v1, p1

    .line 20
    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    new-instance v2, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    sget-object v5, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-direct {v2, v4, v5, v3, v6}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type$TypeVar;)V

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 22
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    .line 23
    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$2;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_7
    :goto_2
    return-object v0

    :catch_0
    return-object v1
.end method

.method public bridge synthetic visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$2;->visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$2;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
