.class public final synthetic Lcom/github/javaparser/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ParseStart;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/github/javaparser/GeneratedJavaParser;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/github/javaparser/GeneratedJavaParser;->NameParseStart()Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    return-object p1
.end method
