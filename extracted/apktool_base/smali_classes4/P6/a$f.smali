.class public LP6/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP6/b$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/a;->I1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP6/a;


# direct methods
.method public constructor <init>(LP6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP6/a$f;->a:LP6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LP6/a$f;->a:LP6/a;

    invoke-static {v0}, LP6/a;->w1(LP6/a;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LP6/a$f;->a:LP6/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LP6/a;->x1(LP6/a;Landroid/view/View;)V

    return-void
.end method
