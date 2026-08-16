.class public Ld7/a$i$c$e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$e;


# direct methods
.method public constructor <init>(Ld7/a$i$c$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$e$e;->a:Ld7/a$i$c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Ld7/a$i$c$e$e$a;

    invoke-direct {p1, p0}, Ld7/a$i$c$e$e$a;-><init>(Ld7/a$i$c$e$e;)V

    const-string v0, "Tolerance in mili seconds"

    const-string v1, "1600"

    invoke-static {v0, v1, p1}, LZ6/f;->x1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    return-void
.end method
