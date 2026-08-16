.class Lorg/openjdk/tools/javac/code/Types$10;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$10;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$10;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->isParameterized()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isUnbound()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 9
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$10;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$10;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$10;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
