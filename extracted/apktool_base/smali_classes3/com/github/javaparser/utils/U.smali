.class public final synthetic Lcom/github/javaparser/utils/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/utils/SourceZip$Callback;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/U;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final process(Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/U;->a:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/github/javaparser/utils/SourceZip;->e(Ljava/util/List;Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V

    return-void
.end method
