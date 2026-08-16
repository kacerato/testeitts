.class public final synthetic Lcom/android/tools/r8/internal/Z31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/utils/v;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/DataResourceProvider$Visitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z31;->a:Lcom/android/tools/r8/DataResourceProvider$Visitor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z31;->a:Lcom/android/tools/r8/DataResourceProvider$Visitor;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/ZI;->a(Lcom/android/tools/r8/DataResourceProvider$Visitor;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-void
.end method
