.class public LN3/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN3/a;->v1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:LN3/a;


# direct methods
.method public constructor <init>(LN3/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN3/a$d;->b:LN3/a;

    iput-object p2, p0, LN3/a$d;->a:Ljava/util/List;

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

    iget-object p1, p0, LN3/a$d;->b:LN3/a;

    iget-object v0, p0, LN3/a$d;->a:Ljava/util/List;

    invoke-static {p1, v0}, LN3/a;->r1(LN3/a;Ljava/util/List;)V

    return-void
.end method
