.class public Lu5/d$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d$a$a;->onSuccess(Ljava/util/List;Lw3/e$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lw3/e$c;

.field public final synthetic c:Lu5/d$a$a;


# direct methods
.method public constructor <init>(Lu5/d$a$a;Ljava/util/List;Lw3/e$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$files",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$a$a$a;->c:Lu5/d$a$a;

    iput-object p2, p0, Lu5/d$a$a$a;->a:Ljava/util/List;

    iput-object p3, p0, Lu5/d$a$a$a;->b:Lw3/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popup"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$a$a$a;->c:Lu5/d$a$a;

    iget-object v0, v0, Lu5/d$a$a;->a:Lu5/d$a;

    iget-object v0, v0, Lu5/d$a;->b:Lu5/d;

    iget-object v1, p0, Lu5/d$a$a$a;->a:Ljava/util/List;

    new-instance v2, Lu5/d$a$a$a$a;

    invoke-direct {v2, p0, p1}, Lu5/d$a$a$a$a;-><init>(Lu5/d$a$a$a;Lq7/a;)V

    invoke-static {v0, v1, v2}, Lu5/d;->J1(Lu5/d;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
