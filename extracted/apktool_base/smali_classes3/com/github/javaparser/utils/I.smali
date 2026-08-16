.class public final synthetic Lcom/github/javaparser/utils/I;
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

    iput-object p1, p0, Lcom/github/javaparser/utils/I;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/I;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/javaparser/utils/SourceRoot;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
