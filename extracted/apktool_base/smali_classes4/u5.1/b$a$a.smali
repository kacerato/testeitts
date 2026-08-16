.class public Lu5/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqb/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/b$a;


# direct methods
.method public constructor <init>(Lu5/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu5/b$a$a;->a:Lu5/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lu5/b$a$a;->a:Lu5/b$a;

    iget-object v0, v0, Lu5/b$a;->b:Lu5/b;

    invoke-static {v0}, Lu5/b;->t1(Lu5/b;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lu5/b$a$a;->a:Lu5/b$a;

    iget-object v0, v0, Lu5/b$a;->b:Lu5/b;

    invoke-static {v0}, Lu5/b;->u1(Lu5/b;)V

    return-void
.end method
