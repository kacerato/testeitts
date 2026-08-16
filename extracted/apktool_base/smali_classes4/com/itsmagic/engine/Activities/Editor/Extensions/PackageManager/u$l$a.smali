.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG7/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG7/e$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->p(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;->n:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->p1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->p(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;->n:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->p1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V

    :goto_0
    return-void
.end method

.method public getState()LG7/e$d;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_0
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LG7/e$d;->PartiallySelected:LG7/e$d;

    return-object v0

    :cond_3
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0
.end method
