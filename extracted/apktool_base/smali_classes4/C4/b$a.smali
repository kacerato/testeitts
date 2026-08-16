.class public LC4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC4/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC4/b;


# direct methods
.method public constructor <init>(LC4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC4/b$a;->a:LC4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LC4/b$a;->a:LC4/b;

    invoke-static {v0}, LC4/b;->p1(LC4/b;)LC4/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LC4/a;->o(I)V

    return-void
.end method
