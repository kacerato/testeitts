.class public Lw6/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/a;->m(Lw6/a$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx6/c;

.field public final synthetic c:I

.field public final synthetic d:Lw6/a;


# direct methods
.method public constructor <init>(Lw6/a;Lx6/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$project",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, Lw6/a$a;->d:Lw6/a;

    iput-object p2, p0, Lw6/a$a;->b:Lx6/c;

    iput p3, p0, Lw6/a$a;->c:I

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

    iget-object p1, p0, Lw6/a$a;->d:Lw6/a;

    invoke-static {p1}, Lw6/a;->g(Lw6/a;)Lw6/a$b;

    move-result-object p1

    iget-object v0, p0, Lw6/a$a;->b:Lx6/c;

    iget v1, p0, Lw6/a$a;->c:I

    invoke-interface {p1, v0, v1}, Lw6/a$b;->a(Lx6/c;I)V

    return-void
.end method
