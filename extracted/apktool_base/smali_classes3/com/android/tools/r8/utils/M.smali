.class public final synthetic Lcom/android/tools/r8/utils/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/u$a;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;

.field public final synthetic b:Ljava/nio/file/Path;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/nio/file/Path;Ljava/util/List;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/M;->a:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/utils/M;->b:Ljava/nio/file/Path;

    iput-object p3, p0, Lcom/android/tools/r8/utils/M;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/utils/M;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/utils/M;->a:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/utils/M;->b:Ljava/nio/file/Path;

    iget-object v2, p0, Lcom/android/tools/r8/utils/M;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/utils/M;->d:Ljava/util/function/Function;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/function/Predicate;Ljava/nio/file/Path;Ljava/util/List;Ljava/util/function/Function;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
