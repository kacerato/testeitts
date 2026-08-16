.class public Ld6/b$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b$g;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld6/b$g;


# direct methods
.method public constructor <init>(Ld6/b$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$g$a;->a:Ld6/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Ld6/b$g$a;->a:Ld6/b$g;

    iget-object v0, v0, Ld6/b$g;->b:Ld6/b;

    invoke-static {v0, p1}, Ld6/b;->p1(Ld6/b;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
