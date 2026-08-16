.class public LB5/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/d;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB5/d;


# direct methods
.method public constructor <init>(LB5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB5/d$e;->a:LB5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LB5/d$e;->a:LB5/d;

    invoke-virtual {v0, p1}, LB5/d;->b(I)V

    return-void
.end method
