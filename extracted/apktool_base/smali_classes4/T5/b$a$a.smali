.class public LT5/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:LT5/b$a;


# direct methods
.method public constructor <init>(LT5/b$a;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalRemoteVersion",
            "val$versionFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT5/b$a$a;->c:LT5/b$a;

    iput-object p2, p0, LT5/b$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, LT5/b$a$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "downloadedBytes",
            "totalBytes"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object p1, p0, LT5/b$a$a;->a:Ljava/lang/String;

    iget-object v0, p0, LT5/b$a$a;->b:Ljava/io/File;

    invoke-static {p1, v0}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-static {p1}, LT5/b;->b(Z)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p1}, LT5/b;->b(Z)V

    return-void
.end method
