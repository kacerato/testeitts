.class public LX5/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT5/b$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LX5/b;->D1(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LX5/b;


# direct methods
.method public constructor <init>(LX5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LX5/b$j;->a:LX5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object p1, p0, LX5/b$j;->a:LX5/b;

    invoke-static {p1}, LX5/b;->w1(LX5/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LX5/b$j;->a:LX5/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_REPOSITORY_LOAD_FAILED:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, LX5/b;->y1(LX5/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LX5/b$j;->a:LX5/b;

    invoke-static {v0}, LX5/b;->w1(LX5/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LX5/b$j;->a:LX5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_NO_INTERNET_CONNECTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LX5/b;->y1(LX5/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LX5/b$j;->a:LX5/b;

    invoke-static {v0}, LX5/b;->w1(LX5/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LX5/b$j;->a:LX5/b;

    invoke-static {v0, p1}, LX5/b;->x1(LX5/b;Ljava/util/List;)V

    return-void
.end method
