.class public Ld6/e$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/e;->s1(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ld6/e;


# direct methods
.method public constructor <init>(Ld6/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$url"
        }
    .end annotation

    iput-object p1, p0, Ld6/e$c;->c:Ld6/e;

    iput-object p2, p0, Ld6/e$c;->b:Ljava/lang/String;

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

    iget-object v0, p0, Ld6/e$c;->b:Ljava/lang/String;

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v0, p1, v1}, LW5/a;->s1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;)V

    return-void
.end method
