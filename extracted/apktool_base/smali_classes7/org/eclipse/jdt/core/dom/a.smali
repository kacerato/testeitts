.class public final synthetic Lorg/eclipse/jdt/core/dom/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/ASTConverter$IGetJavaDoc;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/a;->a:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    return-void
.end method


# virtual methods
.method public final getJavaDoc()Lorg/eclipse/jdt/core/dom/Javadoc;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/a;->a:Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    return-object v0
.end method
