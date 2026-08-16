.class public final synthetic Lcom/github/javaparser/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ParseResult;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ParseResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/j0;->b:Lcom/github/javaparser/ParseResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/j0;->b:Lcom/github/javaparser/ParseResult;

    check-cast p1, Lcom/github/javaparser/Problem;

    invoke-static {v0, p1}, Lcom/github/javaparser/ParserConfiguration$2;->a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V

    return-void
.end method
