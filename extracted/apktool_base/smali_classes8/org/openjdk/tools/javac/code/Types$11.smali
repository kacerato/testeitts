.class Lorg/openjdk/tools/javac/code/Types$11;
.super Lorg/openjdk/tools/javac/code/Types$TypeMapping;
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
        "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$11;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$11;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$11;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$11;->this$0:Lorg/openjdk/tools/javac/code/Types;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
