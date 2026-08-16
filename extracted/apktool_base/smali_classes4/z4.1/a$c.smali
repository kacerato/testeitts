.class public Lz4/a$c;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/a;->r(Landroid/view/View;LA4/b;LA4/c;)V
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
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LA4/b;

.field public final synthetic d:LA4/c;

.field public final synthetic e:Lz4/a;


# direct methods
.method public constructor <init>(Lz4/a;Landroid/view/View;LA4/b;LA4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$view",
            "val$pack",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, Lz4/a$c;->e:Lz4/a;

    iput-object p2, p0, Lz4/a$c;->b:Landroid/view/View;

    iput-object p3, p0, Lz4/a$c;->c:LA4/b;

    iput-object p4, p0, Lz4/a$c;->d:LA4/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESTORE:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lz4/a$c$a;

    invoke-direct {p3, p0}, Lz4/a$c$a;-><init>(Lz4/a$c;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROJECTS_MENU_EXPORT_BACKUP:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lz4/a$c$b;

    invoke-direct {p3, p0}, Lz4/a$c$b;-><init>(Lz4/a$c;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lz4/a$c$c;

    invoke-direct {p3, p0}, Lz4/a$c$c;-><init>(Lz4/a$c;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
