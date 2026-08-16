.class public final synthetic Lj0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/f;->b:Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj0/f;->b:Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-static {v0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->s(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    return-object p1
.end method
