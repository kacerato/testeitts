.class public Ld7/a$i$c;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$i;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ld7/a$i;


# direct methods
.method public constructor <init>(Ld7/a$i;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$worlds"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c;->d:Ld7/a$i;

    iput-object p2, p0, Ld7/a$i$c;->b:Landroid/app/Activity;

    iput-object p3, p0, Ld7/a$i$c;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance p2, Ld7/a$i$c$a;

    invoke-direct {p2, p0}, Ld7/a$i$c$a;-><init>(Ld7/a$i$c;)V

    const p3, 0x7f0701cd

    const-string v0, "Project"

    invoke-direct {p1, p3, v0, p2}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Ld7/a$i$c$b;

    invoke-direct {p2, p0}, Ld7/a$i$c$b;-><init>(Ld7/a$i$c;)V

    const p3, 0x7f070146

    const-string v0, "Settings"

    invoke-direct {p1, p3, v0, p2}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Ld7/a$i$c$c;

    invoke-direct {p2, p0}, Ld7/a$i$c$c;-><init>(Ld7/a$i$c;)V

    const p3, 0x7f0701ca

    const-string v0, "Editor"

    invoke-direct {p1, p3, v0, p2}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Ld7/a$i$c$d;

    invoke-direct {p2, p0}, Ld7/a$i$c$d;-><init>(Ld7/a$i$c;)V

    const p3, 0x7f07006a

    const-string v0, "Export"

    invoke-direct {p1, p3, v0, p2}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TOOLS:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ld7/a$i$c$e;

    invoke-direct {p3, p0}, Ld7/a$i$c$e;-><init>(Ld7/a$i$c;)V

    const v0, 0x7f070242

    invoke-direct {p1, v0, p2, p3}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Ld7/a$i$c$f;

    invoke-direct {p2, p0}, Ld7/a$i$c$f;-><init>(Ld7/a$i$c;)V

    const p3, 0x7f0701c9

    const-string v0, "Documentation"

    invoke-direct {p1, p3, v0, p2}, Ldd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
