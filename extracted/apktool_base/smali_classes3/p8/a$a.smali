.class public Lp8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/a;->b(Ljava/io/File;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/io/File;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lp8/a;


# direct methods
.method public constructor <init>(Lp8/a;[Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$icon",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp8/a$a;->c:Lp8/a;

    iput-object p2, p0, Lp8/a$a;->a:[Ljava/io/File;

    iput-object p3, p0, Lp8/a$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lp8/a$a;->a:[Ljava/io/File;

    iget-object v1, p0, Lp8/a$a;->c:Lp8/a;

    invoke-static {v1}, Lp8/a;->d(Lp8/a;)LJAVARuntime/FilesPanelCustomIcon;

    move-result-object v1

    new-instance v2, LJAVARuntime/File;

    iget-object v3, p0, Lp8/a$a;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LJAVARuntime/File;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, LJAVARuntime/FilesPanelCustomIcon;->getIconForFile(LJAVARuntime/File;)LJAVARuntime/File;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
