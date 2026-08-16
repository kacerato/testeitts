.class public final synthetic Lcom/github/javaparser/resolution/types/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/h;->b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/h;->b:Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->f(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
