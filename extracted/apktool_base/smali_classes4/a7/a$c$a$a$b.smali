.class public La7/a$c$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/a$c$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La7/a$c$a$a;


# direct methods
.method public constructor <init>(La7/a$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, La7/a$c$a$a$b;->a:La7/a$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, La7/a$c$a$a$b;->a:La7/a$c$a$a;

    iget-object p1, p1, La7/a$c$a$a;->b:Landroid/view/View;

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v1, La7/a$c$a$a$b$a;

    invoke-direct {v1, p0}, La7/a$c$a$a$b$a;-><init>(La7/a$c$a$a$b;)V

    const-string v2, "Revert"

    const-string v3, "Revert file to this commit?"

    invoke-static {p1, v0, v2, v3, v1}, LZ6/c;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    return-void
.end method
