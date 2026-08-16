.class public final synthetic Lcom/github/javaparser/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/c0;->b:Lcom/github/javaparser/ParserConfiguration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/c0;->b:Lcom/github/javaparser/ParserConfiguration;

    invoke-static {v0}, Lcom/github/javaparser/ParserConfiguration;->b(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;

    move-result-object v0

    return-object v0
.end method
