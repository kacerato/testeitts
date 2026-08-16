.class public Lu5/b$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG7/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b$p;-><init>(Lu5/b;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/b;

.field public final synthetic b:Lu5/b$p;


# direct methods
.method public constructor <init>(Lu5/b$p;Lu5/b;)V
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

    iput-object p1, p0, Lu5/b$p$a;->b:Lu5/b$p;

    iput-object p2, p0, Lu5/b$p$a;->a:Lu5/b;

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

    sget-object v0, Lu5/b$g;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lu5/b$p$a;->b:Lu5/b$p;

    iput-boolean v0, p1, Lu5/b$p;->n:Z

    invoke-virtual {p1, v0}, Lu5/b$p;->x(Z)Z

    iget-object p1, p0, Lu5/b$p$a;->b:Lu5/b$p;

    iget-object p1, p1, Lu5/b$p;->q:Lu5/b;

    invoke-static {p1}, Lu5/b;->p1(Lu5/b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lu5/b$p$a;->b:Lu5/b$p;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lu5/b$p;->n:Z

    invoke-virtual {p1, v0}, Lu5/b$p;->x(Z)Z

    iget-object p1, p0, Lu5/b$p$a;->b:Lu5/b$p;

    iget-object p1, p1, Lu5/b$p;->q:Lu5/b;

    invoke-static {p1}, Lu5/b;->p1(Lu5/b;)V

    :goto_0
    return-void
.end method

.method public getState()LG7/e$d;
    .locals 1

    iget-object v0, p0, Lu5/b$p$a;->b:Lu5/b$p;

    iget-object v0, v0, Lu5/b$p;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu5/b$p$a;->b:Lu5/b$p;

    iget-boolean v0, v0, Lu5/b$p;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_0
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0

    :cond_1
    iget-object v0, p0, Lu5/b$p$a;->b:Lu5/b$p;

    invoke-virtual {v0}, Lu5/b$p;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LG7/e$d;->FullSelected:LG7/e$d;

    return-object v0

    :cond_2
    iget-object v0, p0, Lu5/b$p$a;->b:Lu5/b$p;

    invoke-virtual {v0}, Lu5/b$p;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LG7/e$d;->PartiallySelected:LG7/e$d;

    return-object v0

    :cond_3
    sget-object v0, LG7/e$d;->Unselected:LG7/e$d;

    return-object v0
.end method
