.class public La7/a$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La7/a;


# direct methods
.method public constructor <init>(La7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La7/a$e;->b:La7/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, La7/a$e;->b:La7/a;

    invoke-static {p1}, La7/a;->t1(La7/a;)La7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La7/a$e;->b:La7/a;

    invoke-static {p1}, La7/a;->t1(La7/a;)La7/b;

    move-result-object p1

    iget-object p1, p1, La7/b;->c:Lh4/d;

    new-instance v0, La7/a$e$a;

    invoke-direct {v0, p0}, La7/a$e$a;-><init>(La7/a$e;)V

    invoke-interface {p1, v0}, Lh4/d;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
