.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$url"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$c;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$c;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$c;->b:Ljava/lang/String;

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {v0, p1, v1}, LW5/a;->s1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;)V

    return-void
.end method
