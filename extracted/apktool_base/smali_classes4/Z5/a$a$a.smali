.class public LZ5/a$a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/a$a;->d(LZ5/d;LZ5/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

.field public final synthetic c:LZ5/a$a;


# direct methods
.method public constructor <init>(LZ5/a$a;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
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

    iput-object p1, p0, LZ5/a$a$a;->c:LZ5/a$a;

    iput-object p2, p0, LZ5/a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

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

    iget-object v0, p0, LZ5/a$a$a;->c:LZ5/a$a;

    iget-object v0, v0, LZ5/a$a;->b:LZ5/a$b;

    iget-object v1, p0, LZ5/a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-interface {v0, v1, p1}, LZ5/a$b;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V

    return-void
.end method
