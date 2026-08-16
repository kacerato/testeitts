.class public LY5/b$e$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/b$e;->a(LH7/a;LH7/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

.field public final synthetic c:LY5/b$e;


# direct methods
.method public constructor <init>(LY5/b$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$pack"
        }
    .end annotation

    iput-object p1, p0, LY5/b$e$a;->c:LY5/b$e;

    iput-object p2, p0, LY5/b$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LY5/b$e$a;->c:LY5/b$e;

    iget-object v0, v0, LY5/b$e;->h:LY5/b;

    invoke-static {v0}, LY5/b;->p(LY5/b;)LY5/b$d;

    move-result-object v0

    iget-object v1, p0, LY5/b$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-interface {v0, v1, p1}, LY5/b$d;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V

    return-void
.end method
