.class public final synthetic Lcom/github/javaparser/ast/type/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/type/h;->b:Lcom/github/javaparser/resolution/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/h;->b:Lcom/github/javaparser/resolution/Context;

    check-cast p1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/type/UnionType;->j0(Lcom/github/javaparser/resolution/Context;Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
