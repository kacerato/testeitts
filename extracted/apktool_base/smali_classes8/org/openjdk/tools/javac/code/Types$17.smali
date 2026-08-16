.class Lorg/openjdk/tools/javac/code/Types$17;
.super Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
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
        "Lorg/openjdk/tools/javac/code/Types$UnaryVisitor<",
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$17;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$17;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Ljava/lang/Void;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isIntersection()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$17;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    .line 4
    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$17;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 6
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$17;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 8
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_1
    return-object p1

    .line 9
    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;->getExplicitComponents()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method
