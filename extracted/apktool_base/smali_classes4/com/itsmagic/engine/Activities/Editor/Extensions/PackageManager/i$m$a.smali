.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG7/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG7/e$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;->b:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->o(Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->n:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->p1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;->b:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->o(Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->n:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->p1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V

    :goto_0
    return-void
.end method

.method public getState()LG7/e$d;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_0
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LG7/e$d;->PartiallySelected:LG7/e$d;

    return-object v0

    :cond_3
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0
.end method
