.class Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnenterScanner"
.end annotation


# instance fields
.field private final msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->remove(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->removeCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->clearLocalClassNameIndexes(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Symtab;->removeClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method
