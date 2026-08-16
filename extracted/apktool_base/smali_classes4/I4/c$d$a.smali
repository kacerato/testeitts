.class public LI4/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI4/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI4/c$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI4/c$d;


# direct methods
.method public constructor <init>(LI4/c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LI4/c$d$a;->a:LI4/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "phase",
            "product",
            "subPlan"
        }
    .end annotation

    iget-object p1, p0, LI4/c$d$a;->a:LI4/c$d;

    iget-object p1, p1, LI4/c$d;->a:LI4/c;

    invoke-static {p1}, LI4/c;->q1(LI4/c;)Le7/a;

    move-result-object p1

    new-instance v0, LI4/a;

    invoke-direct {v0}, LI4/a;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUB_MONTH:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LI4/a;->m(Ljava/lang/String;)LI4/a;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUB_MONTH_INFO_TEXT_CS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LI4/a;->j(Ljava/lang/String;)LI4/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->e()F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LI4/a;->l(Ljava/lang/String;)LI4/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, LI4/a;->n(Ljava/lang/String;)LI4/a;

    move-result-object p2

    invoke-virtual {p2}, LI4/a;->g()LI4/a;

    move-result-object p2

    new-instance v0, LI4/c$d$a$a;

    invoke-direct {v0, p0, p3, p4}, LI4/c$d$a$a;-><init>(LI4/c$d$a;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V

    invoke-virtual {p2, v0}, LI4/a;->i(Landroid/view/View$OnClickListener;)LI4/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Le7/a;->g(Ljava/lang/Object;)V

    return-void
.end method
