.class public Lw6/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$f;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw6/b$f;


# direct methods
.method public constructor <init>(Lw6/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$f$a;->a:Lw6/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lw6/b$f$a;->a:Lw6/b$f;

    iget-object v0, v0, Lw6/b$f;->b:Lw6/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
