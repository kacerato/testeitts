.class public Lu5/d$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG7/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d$t;-><init>(Lu5/d;Landroidx/documentfile/provider/DocumentFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/d;

.field public final synthetic b:Lu5/d$t;


# direct methods
.method public constructor <init>(Lu5/d$t;Lu5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$this$0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$t$a;->b:Lu5/d$t;

    iput-object p2, p0, Lu5/d$t$a;->a:Lu5/d;

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

    sget-object v0, Lu5/d$k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu5/d$t$a;->b:Lu5/d$t;

    iput-boolean v0, p1, Lu5/d$t;->n:Z

    invoke-virtual {p1, v0}, Lu5/d$t;->x(Z)Z

    iget-object p1, p0, Lu5/d$t$a;->b:Lu5/d$t;

    iget-object p1, p1, Lu5/d$t;->q:Lu5/d;

    invoke-static {p1}, Lu5/d;->p1(Lu5/d;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lu5/d$t$a;->b:Lu5/d$t;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lu5/d$t;->n:Z

    invoke-virtual {p1, v0}, Lu5/d$t;->x(Z)Z

    iget-object p1, p0, Lu5/d$t$a;->b:Lu5/d$t;

    iget-object p1, p1, Lu5/d$t;->q:Lu5/d;

    invoke-static {p1}, Lu5/d;->p1(Lu5/d;)V

    :goto_0
    return-void
.end method

.method public getState()LG7/e$d;
    .locals 1

    iget-object v0, p0, Lu5/d$t$a;->b:Lu5/d$t;

    iget-object v0, v0, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu5/d$t$a;->b:Lu5/d$t;

    iget-boolean v0, v0, Lu5/d$t;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_0
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0

    :cond_1
    iget-object v0, p0, Lu5/d$t$a;->b:Lu5/d$t;

    invoke-virtual {v0}, Lu5/d$t;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_2
    iget-object v0, p0, Lu5/d$t$a;->b:Lu5/d$t;

    invoke-virtual {v0}, Lu5/d$t;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LG7/e$d;->PartiallySelected:LG7/e$d;

    return-object v0

    :cond_3
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0
.end method
