.class public final synthetic Lcom/github/javaparser/utils/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/utils/SourceZip;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/utils/SourceZip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/T;->b:Lcom/github/javaparser/utils/SourceZip;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/T;->b:Lcom/github/javaparser/utils/SourceZip;

    invoke-static {v0}, Lcom/github/javaparser/utils/SourceZip;->d(Lcom/github/javaparser/utils/SourceZip;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
