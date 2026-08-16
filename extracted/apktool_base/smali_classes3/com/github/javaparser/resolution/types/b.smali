.class public final synthetic Lcom/github/javaparser/resolution/types/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

.field public final synthetic c:Lcom/github/javaparser/resolution/types/ResolvedType;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/b;->b:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    iput-object p2, p0, Lcom/github/javaparser/resolution/types/b;->c:Lcom/github/javaparser/resolution/types/ResolvedType;

    iput-object p3, p0, Lcom/github/javaparser/resolution/types/b;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/b;->b:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/b;->c:Lcom/github/javaparser/resolution/types/ResolvedType;

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/b;->d:Ljava/util/Map;

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->c(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
