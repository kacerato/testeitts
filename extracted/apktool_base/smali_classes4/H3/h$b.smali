.class public LH3/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/h;->I1(Landroid/view/View;Lr4/a$e;LH3/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH3/h;

.field public final synthetic c:Lq7/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lr4/a$e;


# direct methods
.method public constructor <init>(LH3/h;Lq7/a;Landroid/view/View;Lr4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$panel",
            "val$loading",
            "val$anchor",
            "val$anchorSide"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH3/h$b;->b:LH3/h;

    iput-object p2, p0, LH3/h$b;->c:Lq7/a;

    iput-object p3, p0, LH3/h$b;->d:Landroid/view/View;

    iput-object p4, p0, LH3/h$b;->e:Lr4/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LH3/h$b;->b:LH3/h;

    invoke-virtual {v0}, LH3/h;->E1()V

    new-instance v0, LH3/h$b$a;

    invoke-direct {v0, p0}, LH3/h$b$a;-><init>(LH3/h$b;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
