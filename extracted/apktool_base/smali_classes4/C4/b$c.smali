.class public LC4/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC4/b;->u1(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:LC4/b;


# direct methods
.method public constructor <init>(LC4/b;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$forceRefresh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC4/b$c;->c:LC4/b;

    iput-object p2, p0, LC4/b$c;->a:Landroid/content/Context;

    iput-boolean p3, p0, LC4/b$c;->b:Z

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
            "result"
        }
    .end annotation

    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Led/f;->a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0x0005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ops!"

    const-string v0, "Invalid credentials"

    invoke-static {p1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Sorry"

    const-string v0, "Our server returned unknown error"

    invoke-static {p1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-static {p1}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "builds"

    invoke-static {p1, v0}, Lhd/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    iget-object v1, p0, LC4/b$c;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, LC4/b;->q1(LC4/b;Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iget-boolean v0, p0, LC4/b$c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v0}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v0

    invoke-virtual {v0}, LC4/a;->j()V

    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v0, p1}, LC4/b;->r1(LC4/b;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v0}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v0

    invoke-virtual {v0}, LC4/a;->getItemCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v0}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v0

    invoke-virtual {v0}, LC4/a;->j()V

    iget-object v0, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v0, p1}, LC4/b;->r1(LC4/b;Ljava/util/List;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD4/b;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v2}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v2

    invoke-virtual {v2}, LC4/a;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v2}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v2

    invoke-virtual {v2, v1}, LC4/a;->k(I)LD4/c;

    move-result-object v2

    instance-of v3, v2, LD4/b;

    if-eqz v3, :cond_3

    check-cast v2, LD4/b;

    iget-object v3, v2, LD4/b;->a:Ljava/lang/String;

    iget-object v4, v0, LD4/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, LD4/b;->g:Ljava/lang/String;

    iget-object v3, v0, LD4/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v2}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, LC4/a;->n(ILD4/c;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, LC4/b$c;->c:LC4/b;

    invoke-static {v1}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v1

    invoke-virtual {v1, v0}, LC4/a;->h(LD4/c;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method
