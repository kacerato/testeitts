.class public final synthetic Lcom/android/tools/r8/utils/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/w;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/utils/u$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/u$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/N;->a:Lcom/android/tools/r8/utils/u$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/N;->a:Lcom/android/tools/r8/utils/u$a;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/utils/u;->a(Lcom/android/tools/r8/utils/u$a;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
