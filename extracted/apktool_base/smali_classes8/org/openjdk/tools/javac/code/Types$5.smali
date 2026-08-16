.class Lorg/openjdk/tools/javac/code/Types$5;
.super Lorg/openjdk/tools/javac/code/Types$SameTypeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$5;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SameTypeVisitor;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    return-void
.end method


# virtual methods
.method public containsTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$5;->this$0:Lorg/openjdk/tools/javac/code/Types;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Z)Z

    move-result p1

    return p1
.end method

.method public sameTypeVars(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :cond_0
    check-cast p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$5;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$5;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
