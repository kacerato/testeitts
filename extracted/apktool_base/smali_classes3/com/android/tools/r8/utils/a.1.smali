.class public final Lcom/android/tools/r8/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/DataResourceProvider$Visitor;


# instance fields
.field public final synthetic a:Ljava/util/TreeSet;

.field public final synthetic b:Ljava/util/TreeSet;


# direct methods
.method public constructor <init>(Ljava/util/TreeSet;Ljava/util/TreeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/a;->a:Ljava/util/TreeSet;

    iput-object p2, p0, Lcom/android/tools/r8/utils/a;->b:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lcom/android/tools/r8/DataDirectoryResource;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/utils/a;->a:Ljava/util/TreeSet;

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/tools/r8/DataDirectoryResource;->fromName(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataDirectoryResource;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final visit(Lcom/android/tools/r8/DataEntryResource;)V
    .locals 2

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/DataEntryResource;->fromBytes([BLjava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DataEntryResource;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/utils/a;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
