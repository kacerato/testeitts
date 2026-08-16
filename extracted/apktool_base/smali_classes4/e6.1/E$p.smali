.class public Le6/E$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LSa/a;

.field public final synthetic b:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;LSa/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/E$p;->b:Le6/E;

    iput-object p2, p0, Le6/E$p;->a:LSa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v1, Le6/E$p$a;

    invoke-direct {v1, p0}, Le6/E$p$a;-><init>(Le6/E$p;)V

    invoke-static {p1, v0, v1}, LH3/g;->K1(Landroid/view/View;Lr4/a$e;LH3/e;)V

    return-void
.end method
