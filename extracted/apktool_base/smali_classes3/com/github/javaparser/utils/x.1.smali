.class public final synthetic Lcom/github/javaparser/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/javaparser/utils/x;->b:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/utils/x;->b:Z

    check-cast p1, Lcom/github/javaparser/ast/Node;

    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, p1, p2}, Lcom/github/javaparser/utils/PositionUtils;->a(ZLcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)I

    move-result p1

    return p1
.end method
