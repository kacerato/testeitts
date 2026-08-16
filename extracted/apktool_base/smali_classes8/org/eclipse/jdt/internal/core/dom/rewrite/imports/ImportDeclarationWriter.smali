.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final insertSpaceBeforeSemicolon:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;->insertSpaceBeforeSemicolon:Z

    return-void
.end method


# virtual methods
.method public writeImportDeclaration(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "import "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->isStatic:Z

    if-eqz v1, :cond_0

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;->insertSpaceBeforeSemicolon:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
