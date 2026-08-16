.class public LE5/c$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/c;->b(LC5/b;Landroid/view/View;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:I

.field public final synthetic d:LE5/c;


# direct methods
.method public constructor <init>(LE5/c;LC5/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$positionInAdapter"
        }
    .end annotation

    iput-object p1, p0, LE5/c$a;->d:LE5/c;

    iput-object p2, p0, LE5/c$a;->b:LC5/b;

    iput p3, p0, LE5/c$a;->c:I

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
            "v"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LE5/c$a;->b:LC5/b;

    iget-object v0, p1, LC5/b;->f:LD5/i;

    iget-object p1, p1, LC5/b;->j:Ljava/lang/Object;

    iget v1, p0, LE5/c$a;->c:I

    invoke-interface {v0, p1, v1}, LD5/i;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
