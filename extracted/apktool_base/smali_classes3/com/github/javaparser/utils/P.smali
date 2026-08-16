.class public final synthetic Lcom/github/javaparser/utils/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/DefaultPrettyPrinter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/DefaultPrettyPrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/P;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/P;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinter;

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
