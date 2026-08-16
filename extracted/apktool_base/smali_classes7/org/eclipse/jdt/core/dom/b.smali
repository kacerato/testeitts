.class public final synthetic Lorg/eclipse/jdt/core/dom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/b;->a:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    return-void
.end method


# virtual methods
.method public final setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/b;->a:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    return-void
.end method
