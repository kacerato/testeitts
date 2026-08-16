.class public LY5/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK7/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LK7/b;

.field public final synthetic b:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;LK7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$searchView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/f$b;->b:LY5/f;

    iput-object p2, p0, LY5/f$b;->a:LK7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LY5/f$b;->a:LK7/b;

    invoke-virtual {p1}, LK7/b;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LY5/f$b;->b:LY5/f;

    invoke-static {v0}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LU5/a;->t(Ljava/lang/String;)V

    iget-object p1, p0, LY5/f$b;->b:LY5/f;

    invoke-static {p1}, LY5/f;->y1(LY5/f;)V

    return-void
.end method
