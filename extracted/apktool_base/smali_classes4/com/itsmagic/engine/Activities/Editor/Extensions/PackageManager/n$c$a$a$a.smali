.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/p;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/p;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "steps",
            "count",
            "zipFile"
        }
    .end annotation

    int-to-float p3, p1

    int-to-float v0, p2

    div-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->a:I

    if-eq p3, v0, :cond_0

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->a:I

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;III)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/o;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/o;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
