.class public final synthetic Lcom/github/javaparser/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/q;->b:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/q;->b:Ljava/util/Optional;

    check-cast p1, Lcom/github/javaparser/JavaToken;

    invoke-static {v0, p1}, Lcom/github/javaparser/JavaToken;->f(Ljava/util/Optional;Lcom/github/javaparser/JavaToken;)V

    return-void
.end method
