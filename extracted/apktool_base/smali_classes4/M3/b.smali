.class public LM3/b;
.super LN3/a;
.source "SourceFile"


# instance fields
.field public final c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Landroid/widget/LinearLayout;

.field public e0:LF7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/l<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROJECT_SETTINGS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LN3/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LM3/b;->c0:Ljava/util/List;

    new-instance v1, LY3/d;

    invoke-direct {v1}, LY3/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LY3/c;

    invoke-direct {v1}, LY3/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LY3/f;

    invoke-direct {v1}, LY3/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LY3/g;

    invoke-direct {v1}, LY3/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LY3/e;

    invoke-direct {v1}, LY3/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, v0}, LN3/a;->u1(Ljava/util/List;)V

    return-void
.end method
