.class public LYc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv5/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LYc/c;->a(Ljava/lang/String;LYc/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LYc/g;


# direct methods
.method public constructor <init>(LYc/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$eventListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LYc/c$a;->a:LYc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "inProjectPath"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LYc/c$a;->a:LYc/g;

    new-instance v0, Ljd/b;

    invoke-direct {v0, p2}, Ljd/b;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LYc/g;->b(Ljd/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LYc/c$a;->a:LYc/g;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, LYc/g;->b(Ljd/b;)V

    :goto_0
    return-void
.end method
