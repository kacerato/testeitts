.class public LG4/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG4/g;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG4/g;


# direct methods
.method public constructor <init>(LG4/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG4/g$a;->a:LG4/g;

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

    iget-object v0, p0, LG4/g$a;->a:LG4/g;

    invoke-static {v0, p1}, LG4/g;->p1(LG4/g;I)V

    return-void
.end method
