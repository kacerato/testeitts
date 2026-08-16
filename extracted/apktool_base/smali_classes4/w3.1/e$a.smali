.class public Lw3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/e;->e(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "documentFile",
            "destination"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Lw3/e;->a(Landroid/net/Uri;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
