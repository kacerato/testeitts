.class public final synthetic Lcom/github/javaparser/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:[Ljava/util/function/Supplier;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/util/function/Supplier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/m;->b:[Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/github/javaparser/utils/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/utils/m;->b:[Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/github/javaparser/utils/m;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/javaparser/utils/Log;->b([Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
