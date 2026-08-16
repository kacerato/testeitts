.class Lorg/openjdk/tools/javac/jvm/ClassReader$24;
.super Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;->initAttributeReaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public accepts(Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeReader;->accepts(Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->allowModules:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public read(Lorg/openjdk/tools/javac/code/Symbol;I)V
    .locals 13

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, v0, :cond_d

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, v0, :cond_d

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readModuleName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v0, :cond_c

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readModuleFlags(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->version:Lorg/openjdk/tools/javac/util/Name;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v5, v4, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v6

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readModuleName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readRequiresFlags(I)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    new-instance v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-direct {v6, v4, v5}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v7, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v5}, Lorg/openjdk/tools/javac/jvm/ClassFile;->internalize(Lorg/openjdk/tools/javac/util/Name;)[B

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readExportsFlags(I)Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    iget-object v9, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v10, v9, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v11

    invoke-virtual {v9, v11}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readModuleName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    :goto_3
    new-instance v7, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-direct {v7, v5, v4, v6}, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)V

    invoke-virtual {v0, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    if-eqz v1, :cond_5

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    sget-object v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->OPEN:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object p2, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "module.non.zero.opens"

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_5
    :goto_4
    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_8

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v7, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->currentModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/jvm/ClassReader;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v5}, Lorg/openjdk/tools/javac/jvm/ClassFile;->internalize(Lorg/openjdk/tools/javac/util/Name;)[B

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([B)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readOpensFlags(I)Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v4

    goto :goto_7

    :cond_6
    new-instance v8, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v8}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move v9, v2

    :goto_6
    if-ge v9, v7, :cond_7

    iget-object v10, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-object v11, v10, Lorg/openjdk/tools/javac/jvm/ClassReader;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v12

    invoke-virtual {v10, v12}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readModuleName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    :goto_7
    new-instance v8, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    invoke-direct {v8, v5, v7, v6}, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)V

    invoke-virtual {v0, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result p2

    move v0, v2

    :goto_8
    if-ge v0, p2, :cond_9

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;

    invoke-direct {v3, v1}, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;-><init>(Lorg/openjdk/tools/javac/util/Name;)V

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->access$102(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result p2

    move v0, v2

    :goto_9
    if-ge v0, p2, :cond_b

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move v5, v2

    :goto_a
    if-ge v5, v3, :cond_a

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v6, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$24;->this$0:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->access$202(Lorg/openjdk/tools/javac/jvm/ClassReader;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    goto :goto_b

    :cond_c
    const-string p1, "module.name.mismatch"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/jvm/ClassReader;->badClassFile(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    move-result-object p1

    throw p1

    :cond_d
    :goto_b
    return-void
.end method
