.class public Lw5/j$M;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j;->g(Landroid/app/Activity;Landroid/content/Context;Ljd/b;Ljava/lang/String;Lw5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lw5/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lw5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$folderPath",
            "val$callbacks"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M;->b:Landroid/content/Context;

    iput-object p2, p0, Lw5/j$M;->c:Ljava/lang/String;

    iput-object p3, p0, Lw5/j$M;->d:Lw5/b;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FOLDER:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$a;

    invoke-direct {p3, p0}, Lw5/j$M$a;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SCRIPT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$h;

    invoke-direct {p3, p0}, Lw5/j$M$h;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VERTEX:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$i;

    invoke-direct {p3, p0}, Lw5/j$M$i;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Lw5/j$M$j;

    invoke-direct {p2, p0}, Lw5/j$M$j;-><init>(Lw5/j$M;)V

    const-string p3, "Environment"

    invoke-direct {p1, p3, p2}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ANIMATION:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$k;

    invoke-direct {p3, p0}, Lw5/j$M$k;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MATERIAL:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$l;

    invoke-direct {p3, p0}, Lw5/j$M$l;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENDER_TEXTURE:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$m;

    invoke-direct {p3, p0}, Lw5/j$M$m;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CUBEMAP:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$n;

    invoke-direct {p3, p0}, Lw5/j$M$n;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->UI:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$o;

    invoke-direct {p3, p0}, Lw5/j$M$o;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$b;

    invoke-direct {p3, p0}, Lw5/j$M$b;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXT_FILES:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$c;

    invoke-direct {p3, p0}, Lw5/j$M$c;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLUGINS:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$d;

    invoke-direct {p3, p0}, Lw5/j$M$d;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXTURES:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$e;

    invoke-direct {p3, p0}, Lw5/j$M$e;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DATA:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$f;

    invoke-direct {p3, p0}, Lw5/j$M$f;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VIDEO:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lw5/j$M$g;

    invoke-direct {p3, p0}, Lw5/j$M$g;-><init>(Lw5/j$M;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
