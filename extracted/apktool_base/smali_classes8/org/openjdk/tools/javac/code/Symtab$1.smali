.class Lorg/openjdk/tools/javac/code/Symtab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Symtab;

.field final synthetic val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol$Completer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab$1;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symtab$1;->val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$1;->val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x201

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$1;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public isTerminal()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$1;->val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->isTerminal()Z

    move-result v0

    return v0
.end method
