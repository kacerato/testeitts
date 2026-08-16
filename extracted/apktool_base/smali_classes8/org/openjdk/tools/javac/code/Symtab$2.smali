.class Lorg/openjdk/tools/javac/code/Symtab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lorg/openjdk/tools/javac/code/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Symtab;

.field final synthetic val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field final synthetic val$type:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol$Completer;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Symtab;->access$000(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v5, v1, Lorg/openjdk/tools/javac/util/Names;->valueOf:Lorg/openjdk/tools/javac/util/Name;

    new-instance v6, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v6, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide/16 v3, 0x9

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Symtab;->access$000(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->Value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Name;->append(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    new-instance v6, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v6, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide/16 v3, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :goto_0
    return-void
.end method

.method public isTerminal()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$2;->val$completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->isTerminal()Z

    move-result v0

    return v0
.end method
