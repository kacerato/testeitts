.class public final Li1/I;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Li1/O;

.field public d:Z


# direct methods
.method public constructor <init>(Li1/K;Landroid/os/Handler;Li1/O;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Li1/I;->d:Z

    iput-object p2, p0, Li1/I;->b:Landroid/os/Handler;

    iput-object p3, p0, Li1/I;->c:Li1/O;

    return-void
.end method

.method public static synthetic a(Li1/I;)Li1/O;
    .locals 0

    iget-object p0, p0, Li1/I;->c:Li1/O;

    return-object p0
.end method

.method public static synthetic c(Li1/I;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "consent://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Li1/I;)Z
    .locals 0

    iget-boolean p0, p0, Li1/I;->d:Z

    return p0
.end method

.method public static synthetic e(Li1/I;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li1/I;->d:Z

    return p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Li1/I;->b:Landroid/os/Handler;

    new-instance v0, Li1/F;

    invoke-direct {v0, p0, p1}, Li1/F;-><init>(Li1/I;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
