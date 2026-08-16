.class public Lp8/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp8/c;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lp8/c;


# direct methods
.method public constructor <init>(Lp8/c;[ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$r",
            "val$format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lp8/c$c;->c:Lp8/c;

    iput-object p2, p0, Lp8/c$c;->a:[Z

    iput-object p3, p0, Lp8/c$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lp8/c$c;->a:[Z

    iget-object v1, p0, Lp8/c$c;->c:Lp8/c;

    invoke-static {v1}, Lp8/c;->c(Lp8/c;)LJAVARuntime/FilesPanelFileMenu;

    move-result-object v1

    iget-object v2, p0, Lp8/c$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, LJAVARuntime/FilesPanelFileMenu;->filterFormat(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
