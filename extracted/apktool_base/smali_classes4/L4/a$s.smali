.class public LL4/a$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL4/a;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL4/a;


# direct methods
.method public constructor <init>(LL4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL4/a$s;->a:LL4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, LL4/a$s;->a:LL4/a;

    invoke-static {p1}, LL4/a;->v1(LL4/a;)V

    return-void
.end method
