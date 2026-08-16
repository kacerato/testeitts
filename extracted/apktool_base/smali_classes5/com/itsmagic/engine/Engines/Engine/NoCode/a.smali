.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->v(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "title",
            "value",
            "data",
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {v0}, Lga/a;->c(Lga/H;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lga/H;->LIST:Lga/H;

    if-ne v0, v1, :cond_2

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->l(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-static {v0}, Lga/d;->n(Lga/H;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2, v0, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$l;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p4}, Lga/m;->d0(Ljava/lang/Object;)Lga/G;

    move-result-object p4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$o;

    invoke-direct {v0, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    const-class p3, Lga/G;

    invoke-static {p1, p3, p4, v0, p2}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p4}, Lga/m;->Y(Ljava/lang/Object;)LJAVARuntime/InputDialog$Type;

    move-result-object p4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$n;

    invoke-direct {v0, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    const-class p3, LJAVARuntime/InputDialog$Type;

    invoke-static {p1, p3, p4, v0, p2}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p4}, Lga/m;->k0(Ljava/lang/Object;)Lcc/e;

    move-result-object p4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$m;

    invoke-direct {v0, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    const-class p3, Lcc/e;

    invoke-static {p1, p3, p4, v0, p2}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    invoke-static {p4}, Lga/m;->N(Ljava/lang/Object;)Lec/a;

    move-result-object p4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$k;

    invoke-direct {v0, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    const-class p3, Lec/a;

    invoke-static {p1, p3, p4, v0, p2}, LF5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;LC5/b$a;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->k(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    const-string p4, ".imvs"

    const-string v0, ".sound"

    const-string v1, ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"

    filled-new-array {v1, p4, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Ljava/lang/String;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_8
    const-string p4, ".world"

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Ljava/lang/String;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    const-string p4, ".go"

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Ljava/lang/String;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Ljava/lang/String;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    const-string p4, ".mat"

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Ljava/lang/String;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->n(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_12
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_13
    sget-object p4, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->m(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;LC5/b$a;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    invoke-static {p1, p2, p3, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    sget-object p4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-static {p1, p2, p3, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->m(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;LC5/b$a;)LC5/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-eqz v2, :cond_1

    iget-boolean v0, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-static {v0}, Lga/a;->c(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->b(Ljava/util/List;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method public static d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$r;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$e;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "type",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;

    invoke-direct {v1, p1, p3, p2, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-direct {v0, v1, p0}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$d;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static i(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Ljava/lang/String;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener",
            "formats"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->InputFile:LC5/b$a;

    invoke-direct {v0, v1, p0, p1, p4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-direct {v0, v1, p0}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "context",
            "listener"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$f;

    invoke-direct {v0, p2, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-static {p0, p1, p3, v0}, LN9/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;LN9/a$b;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "context",
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->e()V

    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    const v1, 0x7f0500b2

    iput v1, p0, LC5/a;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LC5/a;->b:Ljava/lang/String;

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iget-object p0, p0, LC5/a;->o:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$j;

    invoke-direct {v2, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    const-string v3, "size"

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->h()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    move-result-object v1

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->listItems:Ljava/util/List;

    invoke-interface {v2, p0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v5, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->g()Lga/H;

    move-result-object v1

    iput-object v1, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    iget-object v1, v0, LC5/b;->Q:LC5/a;

    iget-object v3, v1, LC5/a;->o:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->b(Ljava/util/List;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static m(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;LC5/b$a;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener",
            "type"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$p;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    invoke-direct {v0, v1, p0, p4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$s;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$c;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "vector",
            "component",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;-><init>(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x2

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const-string v2, "X"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p0, v3

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Y"

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    aput-object p1, p0, v2

    return-object v0
.end method

.method public static r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "vector",
            "component",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$h;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$h;-><init>(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static s(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x3

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-string v2, "X"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p0, v3

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Y"

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p0, v3

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Z"

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x2

    invoke-static {v1, p1, v2, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->r(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    aput-object p1, p0, v2

    return-object v0
.end method

.method public static t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "vector",
            "component",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$i;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$i;-><init>(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    sget-object p1, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, p0, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method public static u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "value",
            "data",
            "listener"
        }
    .end annotation

    new-instance v0, LC5/b;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x4

    new-array v2, v2, [LC5/b;

    invoke-direct {v0, p0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const-string v2, "X"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p0, v3

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Y"

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p0, v3

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    const-string v1, "Z"

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object v1

    aput-object v1, p0, v3

    iget-object p0, v0, LC5/b;->p:[LC5/b;

    const-string v1, "W"

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->vector4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/4 v2, 0x3

    invoke-static {v1, p1, v2, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->t(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;

    move-result-object p1

    aput-object p1, p0, v2

    return-object v0
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;->a()V

    :cond_1
    return-void
.end method
