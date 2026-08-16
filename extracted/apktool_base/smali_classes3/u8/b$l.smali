.class public Lu8/b$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$l;->b:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lu8/b$l;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LW7/b;->g:Lu8/c;

    iget-object v0, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v1, -0x1

    iput v1, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iget-object v0, p0, Lu8/b$l;->b:Lu8/b;

    const-string v1, "Error uploading game files."

    invoke-static {v0, v1}, Lu8/b;->E(Lu8/b;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChange(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "max"
        }
    .end annotation

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lu8/b$l;->a:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lu8/b$l;->b:Lu8/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading asssets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " MB - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud build - "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LW7/b;->g:Lu8/c;

    iget-object v2, v2, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->localProjectName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lu8/b;->s(Lu8/b;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lu8/b$l;->a:I

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    sget-object v0, LW7/b;->g:Lu8/c;

    iget-object v0, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v1, 0x3

    iput v1, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iget-object v0, p0, Lu8/b$l;->b:Lu8/b;

    const-string v1, "Sent! we will notify you when the process is over."

    const-string v2, "you can check progress on app."

    invoke-static {v0, v1, v2}, Lu8/b;->s(Lu8/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LC4/b;->w1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lu8/b$l;->b:Lu8/b;

    invoke-static {v0}, Lu8/b;->y(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
