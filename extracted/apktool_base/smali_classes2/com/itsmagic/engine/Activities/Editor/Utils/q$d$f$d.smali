.class public Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfd/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;->a:I

    return-void
.end method


# virtual methods
.method public a(JJD)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "max",
            "p"
        }
    .end annotation

    double-to-int v5, p5

    iget p5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;->a:I

    if-eq v5, p5, :cond_1

    iput v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;->a:I

    sget-boolean p5, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->a:Z

    if-eqz p5, :cond_0

    sget-object p5, Lcom/itsmagic/engine/Activities/Editor/Utils/q;->b:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upload "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f$d;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;

    iget-object v0, p5, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$f;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$d$s;->c(JJI)V

    :cond_1
    return-void
.end method
