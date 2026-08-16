.class public final synthetic Lcom/android/tools/r8/utils/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;


# instance fields
.field public final synthetic a:Ljava/util/zip/ZipFile;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/J;->a:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/J;->a:Ljava/util/zip/ZipFile;

    invoke-static {v0, p1}, Lcom/android/tools/r8/utils/t;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
