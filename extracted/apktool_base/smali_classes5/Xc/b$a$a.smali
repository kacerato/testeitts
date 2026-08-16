.class public LXc/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXc/b$a;->a(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LXc/b$a;


# direct methods
.method public constructor <init>(LXc/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LXc/b$a$a;->a:LXc/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, LXc/b$a$a;->a:LXc/b$a;

    iget-object v0, v0, LXc/b$a;->b:Lz7/b;

    invoke-virtual {v0}, Lz7/b;->b()V

    return-void
.end method
