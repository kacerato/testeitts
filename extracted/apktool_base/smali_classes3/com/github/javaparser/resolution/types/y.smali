.class public final synthetic Lcom/github/javaparser/resolution/types/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/y;->b:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/y;->b:Lcom/github/javaparser/resolution/types/ResolvedType;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedUnionType;->d(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1
.end method
