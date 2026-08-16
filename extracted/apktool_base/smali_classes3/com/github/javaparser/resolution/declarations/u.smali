.class public final synthetic Lcom/github/javaparser/resolution/declarations/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/declarations/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/u;->b:Ljava/lang/String;

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->n(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result p1

    return p1
.end method
