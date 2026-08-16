.class public Lu8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/a;->l(Lu8/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/d;

.field public final synthetic b:[I

.field public final synthetic c:Lu8/a;


# direct methods
.method public constructor <init>(Lu8/a;Lu8/d;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$serviceListener",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lu8/a$a;->c:Lu8/a;

    iput-object p2, p0, Lu8/a$a;->a:Lu8/d;

    iput-object p3, p0, Lu8/a$a;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lu8/a$a;->a:Lu8/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu8/d;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lu8/a$a;->a:Lu8/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu8/d;->onSuccess()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lu8/a$a;->a:Lu8/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu8/a$a;->b:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    invoke-interface {v0, v3, v3}, Lu8/d;->onProgressChange(II)V

    :cond_0
    return-void
.end method
