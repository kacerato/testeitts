.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->g(LG4/e;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lw5/j$m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LG4/e;


# direct methods
.method public constructor <init>(LG4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$entriesClassPanel"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;->a:LG4/e;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;->a:LG4/e;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a(LG4/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public d(Lw5/j$m0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->c()[Lw5/j$m0;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lw5/j$m0;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;->d(Lw5/j$m0;)V

    return-void
.end method
