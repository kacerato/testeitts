.class Lorg/openjdk/tools/javac/code/Types$12;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$12;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$12;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$12;->visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$12;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$12;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$12;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
