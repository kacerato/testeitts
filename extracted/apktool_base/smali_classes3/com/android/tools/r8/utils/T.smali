.class public final synthetic Lcom/android/tools/r8/utils/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/u$a;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;

.field public final synthetic b:Lcom/android/tools/r8/utils/u$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/utils/u$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/T;->a:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/utils/T;->b:Lcom/android/tools/r8/utils/u$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/T;->a:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/utils/T;->b:Lcom/android/tools/r8/utils/u$b;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/utils/u$b;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method
