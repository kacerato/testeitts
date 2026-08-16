.class public final synthetic Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/b;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj0/b;->b:Ljava/util/Set;

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->p(Ljava/util/Set;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-void
.end method
