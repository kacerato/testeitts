.class public LO6/a$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->e2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO6/a$u;->a:LO6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget-object v0, p0, LO6/a$u;->a:LO6/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LO6/a;->W1(LO6/a;Landroid/view/View;Z)V

    return-void
.end method
