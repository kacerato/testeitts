.class public final synthetic Lcom/android/tools/r8/internal/jG0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/u$a;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jG0;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jG0;->a:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/H2;->a(Ljava/util/function/Consumer;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
