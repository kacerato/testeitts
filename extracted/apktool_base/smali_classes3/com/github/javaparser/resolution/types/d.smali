.class public final synthetic Lcom/github/javaparser/resolution/types/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/d;->b:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/d;->b:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->b(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result p1

    return p1
.end method
