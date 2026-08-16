.class public final synthetic LK6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LK6/j;->b:I

    iput-object p2, p0, LK6/j;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LK6/j;->b:I

    iget-object v1, p0, LK6/j;->c:Ljava/util/List;

    check-cast p1, Lcom/github/javaparser/ast/body/Parameter;

    invoke-static {v0, v1, p1}, LK6/k;->b(ILjava/util/List;Lcom/github/javaparser/ast/body/Parameter;)V

    return-void
.end method
