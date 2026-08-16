.class public final synthetic Lcom/android/tools/r8/utils/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Ljava/util/zip/ZipEntry;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/W;->a:Ljava/util/zip/ZipEntry;

    iput-object p2, p0, Lcom/android/tools/r8/utils/W;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/utils/W;->a:Ljava/util/zip/ZipEntry;

    iget-object v1, p0, Lcom/android/tools/r8/utils/W;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
