.class public LT5/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/b;->X(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;LT5/b$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT5/b$l;


# direct methods
.method public constructor <init>(LT5/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LT5/b$d;->a:LT5/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, LT5/b$d;->a:LT5/b$l;

    invoke-interface {v0, p1}, LT5/b$l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LT5/b$d;->a:LT5/b$l;

    invoke-interface {v0}, LT5/b$l;->b()V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadOut"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->e()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->m()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, LT5/b$d;->a:LT5/b$l;

    invoke-static {p1, v0}, LT5/b;->i(Ljava/io/File;LT5/b$l;)V

    return-void

    :cond_0
    new-instance v0, LT5/b$d$a;

    invoke-direct {v0, p0}, LT5/b$d$a;-><init>(LT5/b$d;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$o;)V

    return-void
.end method
