.class public final synthetic Lcom/github/javaparser/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/n0;->b:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/n0;->b:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    check-cast p1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-static {v0, p1}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->a(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Z

    move-result p1

    return p1
.end method
