.class public final synthetic Lcom/github/javaparser/utils/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/utils/SourceRoot;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/SourceRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/Q;->b:Lcom/github/javaparser/utils/SourceRoot;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/Q;->b:Lcom/github/javaparser/utils/SourceRoot;

    invoke-static {v0}, Lcom/github/javaparser/utils/SourceRoot;->k(Lcom/github/javaparser/utils/SourceRoot;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
