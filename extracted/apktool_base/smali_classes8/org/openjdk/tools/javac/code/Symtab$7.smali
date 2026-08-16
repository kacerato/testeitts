.class Lorg/openjdk/tools/javac/code/Symtab$7;
.super Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Symtab;->addRootPackageFor(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab$7;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab$7;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Symtab;->access$100(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "compiler.misc.unnamed.package"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
