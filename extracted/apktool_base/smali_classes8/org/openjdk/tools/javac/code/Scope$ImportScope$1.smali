.class Lorg/openjdk/tools/javac/code/Scope$ImportScope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Scope$ScopeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Scope$ImportScope;->finalizeScope()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Scope$ImportScope;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ImportScope;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$ImportScope$1;->this$0:Lorg/openjdk/tools/javac/code/Scope$ImportScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public symbolAdded(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 0

    const-string p1, "The scope is sealed."

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    return-void
.end method

.method public symbolRemoved(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 0

    const-string p1, "The scope is sealed."

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    return-void
.end method
