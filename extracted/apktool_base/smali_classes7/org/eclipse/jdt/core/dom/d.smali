.class public final synthetic Lorg/eclipse/jdt/core/dom/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/ASTConverter$ISetJavaDoc;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/core/dom/BodyDeclaration;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/core/dom/BodyDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/d;->a:Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    return-void
.end method


# virtual methods
.method public final setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/d;->a:Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    return-void
.end method
