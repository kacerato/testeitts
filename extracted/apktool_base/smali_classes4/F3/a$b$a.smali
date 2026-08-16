.class public LF3/a$b$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/a$b;->c(LF3/c;LF3/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LF3/b;

.field public final synthetic c:LF3/a$b;


# direct methods
.method public constructor <init>(LF3/a$b;LF3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, LF3/a$b$a;->c:LF3/a$b;

    iput-object p2, p0, LF3/a$b$a;->b:LF3/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ldd/b;

    new-instance v2, LF3/a$b$a$a;

    invoke-direct {v2, p0}, LF3/a$b$a$a;-><init>(LF3/a$b$a;)V

    const-string v3, "Open"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LF3/a$b$a;->b:LF3/b;

    iget-object v1, v1, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    if-eqz v1, :cond_0

    new-instance v1, Ldd/b;

    new-instance v2, LF3/a$b$a$b;

    invoke-direct {v2, p0}, LF3/a$b$a$b;-><init>(LF3/a$b$a;)V

    const-string v3, "Build"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ldd/b;

    new-instance v2, LF3/a$b$a$c;

    invoke-direct {v2, p0}, LF3/a$b$a$c;-><init>(LF3/a$b$a;)V

    const-string v3, "Cancel"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
