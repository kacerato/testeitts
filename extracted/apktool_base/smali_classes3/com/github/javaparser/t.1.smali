.class public final synthetic Lcom/github/javaparser/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/JavaToken;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/t;->b:Lcom/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/t;->b:Lcom/github/javaparser/JavaToken;

    check-cast p1, Lcom/github/javaparser/JavaToken;

    invoke-static {v0, p1}, Lcom/github/javaparser/JavaToken;->c(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method
