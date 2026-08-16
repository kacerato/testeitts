.class public Lcom/github/javaparser/utils/ParserCollectionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/utils/CollectionStrategy;


# instance fields
.field private final parserConfiguration:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/javaparser/utils/ParserCollectionStrategy;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parserConfiguration"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    return-void
.end method

.method public static synthetic h(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/ParserCollectionStrategy;->lambda$collect$0(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$collect$0(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public collect(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/ProjectRoot;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/utils/ProjectRoot;

    iget-object v1, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/utils/ProjectRoot;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    :try_start_0
    new-instance v1, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;

    invoke-direct {v1, p0, v0}, Lcom/github/javaparser/utils/ParserCollectionStrategy$1;-><init>(Lcom/github/javaparser/utils/ParserCollectionStrategy;Lcom/github/javaparser/utils/ProjectRoot;)V

    invoke-static {p1, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/github/javaparser/utils/q;

    invoke-direct {v2, p1}, Lcom/github/javaparser/utils/q;-><init>(Ljava/nio/file/Path;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/util/function/Supplier;

    const/4 v3, 0x0

    aput-object v2, p1, v3

    const-string v2, "Unable to walk %s"

    invoke-static {v1, v2, p1}, Lcom/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/util/function/Supplier;)V

    :goto_0
    return-object v0
.end method

.method public getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/ParserCollectionStrategy;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    return-object v0
.end method
