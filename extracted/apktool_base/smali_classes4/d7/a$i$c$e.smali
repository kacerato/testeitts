.class public Ld7/a$i$c$e;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c;
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
.field public final synthetic b:Ld7/a$i$c;


# direct methods
.method public constructor <init>(Ld7/a$i$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$e;->b:Ld7/a$i$c;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ldd/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TERMINAL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld7/a$i$c$e$f;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$f;-><init>(Ld7/a$i$c$e;)V

    const v2, 0x7f070235

    invoke-direct {p1, v2, v0, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$e$g;

    invoke-direct {v0, p0}, Ld7/a$i$c$e$g;-><init>(Ld7/a$i$c$e;)V

    const v1, 0x7f0701f3

    const-string v2, "Unused Files"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->enableProfilingToolsV2:Z

    const v0, 0x7f0701e4

    if-eqz p1, :cond_0

    new-instance p1, Ldd/b;

    invoke-direct {p1}, Ldd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$h;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$h;-><init>(Ld7/a$i$c$e;)V

    const v2, 0x7f070140

    const-string v3, "FPS Meter"

    invoke-direct {p1, v2, v3, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$i;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$i;-><init>(Ld7/a$i$c$e;)V

    const v2, 0x7f0701c9

    const-string v3, "Resource statistic"

    invoke-direct {p1, v2, v3, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CPU_PANEL_MENU:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ld7/a$i$c$e$j;

    invoke-direct {v2, p0}, Ld7/a$i$c$e$j;-><init>(Ld7/a$i$c$e;)V

    invoke-direct {p1, v0, v1, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    invoke-direct {p1}, Ldd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROFILER:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ld7/a$i$c$e$k;

    invoke-direct {v2, p0}, Ld7/a$i$c$e$k;-><init>(Ld7/a$i$c$e;)V

    invoke-direct {p1, v0, v1, v2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$l;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$l;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "Memory profiler"

    invoke-direct {p1, v0, v2, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$m;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$m;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "Native memory profiler"

    invoke-direct {p1, v0, v2, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$n;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$n;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "Runnable profiler"

    invoke-direct {p1, v0, v2, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$a;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$a;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "Component profiler"

    invoke-direct {p1, v0, v2, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    invoke-direct {p1}, Ldd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$b;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$b;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "LP profiler"

    invoke-direct {p1, v0, v2, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ldd/b;

    new-instance v1, Ld7/a$i$c$e$c;

    invoke-direct {v1, p0}, Ld7/a$i$c$e$c;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "UI Framerate profiler"

    invoke-direct {p1, v0, v2, v1}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$e$d;

    invoke-direct {v0, p0}, Ld7/a$i$c$e$d;-><init>(Ld7/a$i$c$e;)V

    const v1, 0x7f070165

    const-string v2, "Enable ANR Watch dog"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$e$e;

    invoke-direct {v0, p0}, Ld7/a$i$c$e$e;-><init>(Ld7/a$i$c$e;)V

    const-string v2, "Enable UI ANR Watch dog"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
