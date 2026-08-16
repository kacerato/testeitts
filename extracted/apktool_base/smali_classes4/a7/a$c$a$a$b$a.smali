.class public La7/a$c$a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a$c$a$a$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La7/a$c$a$a$b;


# direct methods
.method public constructor <init>(La7/a$c$a$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, La7/a$c$a$a$b$a;->a:La7/a$c$a$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogC"
        }
    .end annotation

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    iget-object p1, p0, La7/a$c$a$a$b$a;->a:La7/a$c$a$a$b;

    iget-object p1, p1, La7/a$c$a$a$b;->a:La7/a$c$a$a;

    iget-object p1, p1, La7/a$c$a$a;->c:La7/a$c$a;

    iget-object p1, p1, La7/a$c$a;->b:La7/b;

    iget-object v0, p1, La7/b;->d:La7/a$g;

    iget-object p1, p1, La7/b;->c:Lh4/d;

    invoke-interface {v0, p1}, La7/a$g;->a(Lh4/d;)V

    return-void
.end method

.method public b(LZ6/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    return-void
.end method
