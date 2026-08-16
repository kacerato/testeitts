.class public final synthetic Lcom/github/javaparser/ast/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/C;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/C;->b:Ljava/lang/Class;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/Node;->i0(Ljava/lang/Class;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
