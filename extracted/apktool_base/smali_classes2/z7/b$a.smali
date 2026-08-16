.class public Lz7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/b;->q(Ljava/util/List;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Lz7/b;


# direct methods
.method public constructor <init>(Lz7/b;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries",
            "val$content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz7/b$a;->c:Lz7/b;

    iput-object p2, p0, Lz7/b$a;->a:Ljava/util/List;

    iput-object p3, p0, Lz7/b$a;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, Lz7/b$a;->c:Lz7/b;

    iget-object v0, p0, Lz7/b$a;->a:Ljava/util/List;

    iget-object v1, p0, Lz7/b$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Lz7/b;->q(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method
