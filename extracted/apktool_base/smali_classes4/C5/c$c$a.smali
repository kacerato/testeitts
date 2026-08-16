.class public LC5/c$c$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/c$c;->onLongClick(Landroid/view/View;)Z
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

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:LC5/c$c;


# direct methods
.method public constructor <init>(LC5/c$c;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$activity",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a;->d:LC5/c$c;

    iput-object p2, p0, LC5/c$c$a;->b:Landroid/app/Activity;

    iput-object p3, p0, LC5/c$c$a;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance p2, LC5/c$c$a$a;

    invoke-direct {p2, p0}, LC5/c$c$a$a;-><init>(LC5/c$c$a;)V

    new-instance p3, LC5/c$c$a$b;

    invoke-direct {p3, p0}, LC5/c$c$a$b;-><init>(LC5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LC5/c$c$a$c;

    invoke-direct {p3, p0}, LC5/c$c$a$c;-><init>(LC5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MOVE:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LC5/c$c$a$d;

    invoke-direct {p3, p0}, LC5/c$c$a$d;-><init>(LC5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->APP_DOCUMENTATION:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, LC5/c$c$a$e;

    invoke-direct {p3, p0}, LC5/c$c$a$e;-><init>(LC5/c$c$a;)V

    invoke-direct {p1, p2, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
