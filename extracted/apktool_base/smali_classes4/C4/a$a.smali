.class public LC4/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC4/a;->l(LC4/a$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD4/b;

.field public final synthetic c:I

.field public final synthetic d:LC4/a;


# direct methods
.method public constructor <init>(LC4/a;LD4/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$build",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, LC4/a$a;->d:LC4/a;

    iput-object p2, p0, LC4/a$a;->b:LD4/b;

    iput p3, p0, LC4/a$a;->c:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LC4/a$a;->d:LC4/a;

    iget-object v1, p0, LC4/a$a;->b:LD4/b;

    iget v2, p0, LC4/a$a;->c:I

    invoke-static {v0, p1, v1, v2}, LC4/a;->g(LC4/a;Landroid/view/View;LD4/b;I)V

    return-void
.end method
