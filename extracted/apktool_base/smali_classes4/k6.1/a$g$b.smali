.class public Lk6/a$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/a$g;->f(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lk6/a$g;


# direct methods
.method public constructor <init>(Lk6/a$g;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$pack",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$g$b;->c:Lk6/a$g;

    iput-object p2, p0, Lk6/a$g$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    iput-object p3, p0, Lk6/a$g$b;->b:Lq7/a;

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

    const-string v1, "Ops:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    iget-object p1, p0, Lk6/a$g$b;->b:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, LV5/a;->p1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lk6/a$g$b;->b:Lq7/a;

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

    iget-object p1, p0, Lk6/a$g$b;->c:Lk6/a$g;

    iget-object v0, p0, Lk6/a$g$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-static {p1, v0}, Lk6/a$g;->c(Lk6/a$g;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    iget-object p1, p0, Lk6/a$g$b;->b:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    :cond_0
    return-void
.end method
