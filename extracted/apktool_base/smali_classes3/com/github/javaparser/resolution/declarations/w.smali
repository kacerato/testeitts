.class public final synthetic Lcom/github/javaparser/resolution/declarations/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/declarations/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/w;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->e(Ljava/lang/String;)Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    move-result-object v0

    return-object v0
.end method
