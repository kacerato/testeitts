.class public Lu5/d$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d$a$a$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lu5/d$a$a$a;


# direct methods
.method public constructor <init>(Lu5/d$a$a$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$popup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$a$a$a$a;->c:Lu5/d$a$a$a;

    iput-object p2, p0, Lu5/d$a$a$a$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lu5/d$a$a$a$a;->c:Lu5/d$a$a$a;

    iget-object v1, v0, Lu5/d$a$a$a;->c:Lu5/d$a$a;

    iget-object v1, v1, Lu5/d$a$a;->a:Lu5/d$a;

    iget-object v1, v1, Lu5/d$a;->b:Lu5/d;

    iget-object v0, v0, Lu5/d$a$a$a;->b:Lw3/e$c;

    invoke-static {v1, v0}, Lu5/d;->D1(Lu5/d;Lw3/e$c;)Lw3/e$c;

    iget-object v0, p0, Lu5/d$a$a$a$a;->c:Lu5/d$a$a$a;

    iget-object v0, v0, Lu5/d$a$a$a;->c:Lu5/d$a$a;

    iget-object v0, v0, Lu5/d$a$a;->a:Lu5/d$a;

    iget-object v0, v0, Lu5/d$a;->b:Lu5/d;

    invoke-static {v0}, Lu5/d;->I1(Lu5/d;)V

    iget-object v0, p0, Lu5/d$a$a$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
