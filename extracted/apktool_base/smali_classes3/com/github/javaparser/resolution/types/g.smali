.class public final synthetic Lcom/github/javaparser/resolution/types/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/g;->b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/g;->b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->m(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result p1

    return p1
.end method
