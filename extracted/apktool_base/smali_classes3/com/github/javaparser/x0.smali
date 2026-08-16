.class public final synthetic Lcom/github/javaparser/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/Problem;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/Problem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/x0;->b:Lcom/github/javaparser/Problem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/x0;->b:Lcom/github/javaparser/Problem;

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-static {v0, p1}, Lcom/github/javaparser/Problem;->b(Lcom/github/javaparser/Problem;Lcom/github/javaparser/TokenRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
