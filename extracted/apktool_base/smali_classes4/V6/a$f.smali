.class public LV6/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV6/a;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:LV6/a;


# direct methods
.method public constructor <init>(LV6/a;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LV6/a$f;->b:LV6/a;

    iput-object p2, p0, LV6/a$f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, LV6/a$f;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LV6/a$f;->b:LV6/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()LV6/a;
    .locals 1

    iget-object v0, p0, LV6/a$f;->b:LV6/a;

    return-object v0
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newStage"
        }
    .end annotation

    iget-object v0, p0, LV6/a$f;->b:LV6/a;

    invoke-virtual {v0, p1}, LV6/a;->x1(I)V

    return-void
.end method
