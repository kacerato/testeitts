.class public LI4/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Core/Components/GIAP/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI4/c;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI4/c;


# direct methods
.method public constructor <init>(LI4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI4/c$d;->a:LI4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LI4/c$d;->a:LI4/c;

    new-instance v1, LI4/c$d$a;

    invoke-direct {v1, p0}, LI4/c$d$a;-><init>(LI4/c$d;)V

    const-string v2, "P1M"

    invoke-static {v0, v2, v1}, LI4/c;->r1(LI4/c;Ljava/lang/String;LI4/c$e;)V

    iget-object v0, p0, LI4/c$d;->a:LI4/c;

    new-instance v1, LI4/c$d$b;

    invoke-direct {v1, p0}, LI4/c$d$b;-><init>(LI4/c$d;)V

    const-string v2, "P1Y"

    invoke-static {v0, v2, v1}, LI4/c;->r1(LI4/c;Ljava/lang/String;LI4/c$e;)V

    return-void
.end method
