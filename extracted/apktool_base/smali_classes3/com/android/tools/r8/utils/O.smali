.class public final synthetic Lcom/android/tools/r8/utils/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/u$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/U6;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/U6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/O;->a:Lcom/android/tools/r8/internal/U6;

    iput-object p2, p0, Lcom/android/tools/r8/utils/O;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/O;->a:Lcom/android/tools/r8/internal/U6;

    iget-object v1, p0, Lcom/android/tools/r8/utils/O;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/utils/u;->a(Lcom/android/tools/r8/internal/U6;Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
