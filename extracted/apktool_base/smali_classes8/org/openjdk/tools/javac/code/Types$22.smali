.class Lorg/openjdk/tools/javac/code/Types$22;
.super Lorg/openjdk/tools/javac/code/Types$MapVisitor;
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
        "Lorg/openjdk/tools/javac/code/Types$MapVisitor<",
        "Lorg/openjdk/tools/javac/util/List<",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$22;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$22;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ForAll;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ForAll;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0
.end method

.method public bridge synthetic visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$22;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, p2, p1}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$22;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$22;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a method type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
