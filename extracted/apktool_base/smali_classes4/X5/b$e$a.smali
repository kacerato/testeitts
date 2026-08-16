.class public LX5/b$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LX5/b$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a;

.field public final synthetic b:LX5/b$e;


# direct methods
.method public constructor <init>(LX5/b$e;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LX5/b$e$a;->b:LX5/b$e;

    iput-object p2, p0, LX5/b$e$a;->a:Lq7/a;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_PREFIX:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object p1, p0, LX5/b$e$a;->a:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    return-void
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ERROR_NO_INTERNET_CONNECTION:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object v0, p0, LX5/b$e$a;->a:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method

.method public c(IJJLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond",
            "updateStep"
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateStep"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Import:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LX5/b$e$a;->a:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    :cond_0
    return-void
.end method
