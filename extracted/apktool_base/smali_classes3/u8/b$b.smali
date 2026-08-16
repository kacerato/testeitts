.class public Lu8/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$b;->a:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lu8/b$b;->a:Lu8/b;

    const-string v1, "8/14 Error"

    invoke-static {v0, v1}, Lu8/b;->E(Lu8/b;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "max"
        }
    .end annotation

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lu8/b$b;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->g(Lu8/b;)V

    return-void
.end method
