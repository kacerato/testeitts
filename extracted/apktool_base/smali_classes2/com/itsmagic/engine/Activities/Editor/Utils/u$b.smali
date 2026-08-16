.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u;->f(Ld6/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld6/c;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ld6/c;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$downloadProgress",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld6/c;->q1(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    const-string v1, "Error: failed to connect to ethernet!"

    invoke-virtual {v0, v1}, Ld6/c;->q1(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->e()V

    return-void
.end method

.method public c(IJJLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 2
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

    const/4 v0, 0x2

    div-int/2addr p1, v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$d;->a:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p6, v1, p6

    const/4 v1, 0x1

    if-eq p6, v1, :cond_1

    if-eq p6, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    add-int/lit8 p1, p1, 0x32

    const-string p3, "Importing template"

    invoke-virtual {p2, p1, p3}, Ld6/c;->p1(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading template "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lb6/a;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Lb6/a;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Ld6/c;->p1(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateStep"
        }
    .end annotation

    const-string v0, "WelcomeProject"

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;->Import:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    const/4 v0, 0x0

    const-string v1, "Installing java"

    invoke-virtual {p1, v0, v1}, Ld6/c;->p1(ILjava/lang/String;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;)V

    invoke-static {p1}, Lid/a;->n(Lid/a$d;)V

    :cond_0
    return-void
.end method
