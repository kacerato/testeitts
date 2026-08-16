.class public final synthetic Lcom/github/javaparser/ast/body/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Ljava/util/Optional;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/body/l;->b:Ljava/util/Optional;

    iput-object p2, p0, Lcom/github/javaparser/ast/body/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/body/l;->b:Ljava/util/Optional;

    iget-object v1, p0, Lcom/github/javaparser/ast/body/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->m0(Ljava/util/Optional;Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method
