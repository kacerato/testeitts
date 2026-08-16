.class public final synthetic Lcom/android/tools/r8/utils/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/u$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/utils/i$a;

.field public final synthetic b:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i$a;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/C;->a:Lcom/android/tools/r8/utils/i$a;

    iput-object p2, p0, Lcom/android/tools/r8/utils/C;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/C;->a:Lcom/android/tools/r8/utils/i$a;

    iget-object v1, p0, Lcom/android/tools/r8/utils/C;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/origin/Origin;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
