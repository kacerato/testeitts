.class public final synthetic Lcom/android/tools/r8/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/u$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/D8Command$Builder;

.field public final synthetic b:Lcom/android/tools/r8/origin/PathOrigin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/D8Command$Builder;Lcom/android/tools/r8/origin/PathOrigin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/A1;->a:Lcom/android/tools/r8/D8Command$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/A1;->b:Lcom/android/tools/r8/origin/PathOrigin;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/A1;->a:Lcom/android/tools/r8/D8Command$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/A1;->b:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/D8Command$Builder;->s(Lcom/android/tools/r8/D8Command$Builder;Lcom/android/tools/r8/origin/PathOrigin;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
