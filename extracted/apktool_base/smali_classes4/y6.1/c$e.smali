.class public Ly6/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/c;->v1(Ly6/c$l;LF6/d;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly6/c$l;

.field public final synthetic b:Ly6/c;


# direct methods
.method public constructor <init>(Ly6/c;Ly6/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly6/c$e;->b:Ly6/c;

    iput-object p2, p0, Ly6/c$e;->a:Ly6/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly6/c$l;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Ly6/c$e;->b:Ly6/c;

    invoke-static {v0, p1}, Ly6/c;->p1(Ly6/c;Ly6/c$l;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ly6/c$e;->b:Ly6/c;

    iget-object v1, p0, Ly6/c$e;->a:Ly6/c$l;

    invoke-static {v0, v1}, Ly6/c;->p1(Ly6/c;Ly6/c$l;)Landroid/view/View;

    return-void
.end method

.method public getState()Ly6/c$l;
    .locals 1

    iget-object v0, p0, Ly6/c$e;->a:Ly6/c$l;

    return-object v0
.end method
