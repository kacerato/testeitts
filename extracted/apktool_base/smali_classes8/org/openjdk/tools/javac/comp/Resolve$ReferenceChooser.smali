.class abstract Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ReferenceChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract boundResult(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;
.end method

.method public result(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1300(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;->unboundResult(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;->boundResult(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract unboundResult(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;
.end method
