.class public Lw3/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/g$a;->a(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw3/g$a;


# direct methods
.method public constructor <init>(Lw3/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw3/g$a$a;->a:Lw3/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "destination"
        }
    .end annotation

    invoke-static {p1, p2}, Lw3/g;->a(Landroid/net/Uri;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
