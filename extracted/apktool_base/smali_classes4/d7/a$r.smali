.class public Ld7/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;Landroid/app/Activity;)V
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

    iput-object p1, p0, Ld7/a$r;->b:Ld7/a;

    iput-object p2, p0, Ld7/a$r;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    const-string p1, "EDITOR_TOP_BAR_SAVE_PROJECT"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object p1, LW7/b;->h:Lb8/f;

    iget-object p2, p0, Ld7/a$r;->a:Landroid/app/Activity;

    new-instance p3, Ld7/a$r$a;

    invoke-direct {p3, p0}, Ld7/a$r$a;-><init>(Ld7/a$r;)V

    invoke-virtual {p1, p2, p3}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    return-void
.end method
