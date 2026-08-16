.class public final synthetic Lcom/github/javaparser/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/j;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/j;->b:Ljava/io/IOException;

    invoke-static {v0}, Lcom/github/javaparser/utils/CollectionStrategy;->f(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
